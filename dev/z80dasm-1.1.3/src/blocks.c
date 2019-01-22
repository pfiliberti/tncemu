/* Copyright (C) 2007-2012 Tomaz Solc                                      */

/* This program is free software; you can redistribute it and/or modify    */
/* it under the terms of the GNU General Public License as published by    */
/* the Free Software Foundation; either version 2 of the License, or       */
/* (at your option) any later version.                                     */

/* This program is distributed in the hope that it will be useful,         */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of          */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           */
/* GNU General Public License for more details.                            */

/* You should have received a copy of the GNU General Public License       */
/* along with this program; if not, write to the Free Software             */
/* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include "blocks.h"
#include "symtab.h"
#include "dz80.h"
#include "utils.h"

struct block *blocks=NULL;

/* This function is used to create a default block that covers the entire 
 * input file */
int block_init(int start, int end)
{
	struct block *dest;

	dest=calloc(1, sizeof(*dest));
	if(dest==NULL) return -1;

	dest->start=start;
	dest->end=end;

	dest->type=code;

	dest->prev=NULL;
	dest->next=NULL;

	dest->name=strdup("DEFAULT");

	blocks=dest;

	return 0;
}

struct block *block_find(int addr)
{
	struct block *cur;

	cur=blocks;
	while(cur!=NULL) {
		if(cur->start<=addr && cur->end>addr) {
			return cur;
		}
		cur=cur->next;
	}
	return NULL;
}

struct block *block_dup(struct block *src)
{
	struct block *dest;

	dest=malloc(sizeof(*dest));
	if(dest==NULL) return NULL;

	memcpy(dest, src, sizeof(*dest));

	dest->name=strdup(src->name);

	return(dest);
}

/* TODO: Add support for general case of overlapping blocks. Some examples:
 *
 * before: <---- 1 ----><---- 2 -----> 
 * after:  <-- 1 --><-- 3 --><-- 2 -->
 *
 * before: <--- 1 ---><--- 2 ---><--- 3 --->
 * after:  <-- 1 --><----- 4 -----><-- 3 -->
 */
static struct block *block_new_insert(char *name, int start, int end)
{
	struct block *parent, *parent2, *dest;

	parent=block_find(start);

	if(parent==NULL) {
		msg(0, "Error: Block defined outside of address space "
					"covered by binary data.\n");
		return NULL;
	}

	if(block_find(end-1) != parent) {
		msg(0, "Error: New block overlaps with two or more blocks.\n");
		msg(0, "       This case isn't supported.\n");
		return NULL;
	}

	/* Edge cases */

	if(start == parent->start && end == parent->end) {
		msg(0, "Warning: Block '%s' overlaps completely with '%s'.\n",
						name, parent->name);

		free(parent->name);
		parent->name=strdup(name);
		return(parent);
	}

	dest=calloc(1, sizeof(*dest));
	if(dest==NULL) return NULL;

	dest->name=strdup(name);
	dest->start=start;
	dest->end=end;

	if(start == parent->start) {
		/* new block at the beginning of the old block */

		/* before: <--------- parent -------> */
		/* after:  <-- dest --><-- parent --> */

		parent->start=dest->end;

		dest->prev=parent->prev;
		dest->next=parent;

		if(parent->prev!=NULL) {
			parent->prev->next=dest;
		} else {
			blocks=dest;	
		}

		parent->prev=dest;

	} else if(end == parent->end) {
		/* new block at the end of the old block */

		/* before: <--------- parent -------> */
		/* after:  <-- parent --><-- dest --> */

		parent->end=dest->start;

		dest->prev=parent;
		dest->next=parent->next;

		if(parent->next!=NULL) {
			parent->next->prev=dest;
		}

		parent->next=dest;
	} else {
		/* new block in the middle of the old block */

		parent2=block_dup(parent);

		/* before: <--------- parent ----------------------> */
		/* after:  <-- parent --><-- dest --><-- parent2 --> */

		parent->end=dest->start;
		parent2->start=dest->end;

		parent->next=dest;

		dest->prev=parent;
		dest->next=parent2;

		parent2->prev=dest;
	}

	return(dest);
}

struct block *block_new(char *name, int start, int end, enum blocktype type)
{
	struct block *dest;
	struct symbol *symb;
	char tmp[MAX_LINE_LEN];

	msg(2, "Debug: defining new block '%s' (start 0x%04x end 0x%04x)\n", 
							name, start, end);

	dest=block_new_insert(name, start, end);
	if(dest==NULL) return NULL;

	snprintf(tmp, MAX_LINE_LEN, "%s_start", name);
	symb=symbol_new(tmp, start, 100, 0);

	snprintf(tmp, MAX_LINE_LEN, "\n; BLOCK '%s' (start 0x%04x "
					"end 0x%04x)\n", name, start, end);

	symb->comment=strdup(tmp);

	snprintf(tmp, MAX_LINE_LEN, "%s_end", name);
	symbol_new(tmp, end, 0, 0);

	dest->type=type;

	return dest;
}

int block_load_file(char *filename)
{
	FILE *f;
	char line[MAX_LINE_LEN];

	int r;
	int start,end;
	enum blocktype type;
	int lineno;
	char *name;

	struct block *blk;

	f=fopen(filename, "r");
	if(f==NULL) {
		msg(0, "Error: Cannot open '%s': %s\n", 
						filename, strerror(errno));
		return -1;
	}

	lineno=1;
	while(fgets(line, MAX_LINE_LEN, f)!=NULL) {
		r=block_load_line(line, &name, &start, &end, &type);
		if(r<0) {
			msg(0, "       at line %d of '%s'\n", lineno, filename);
			fclose(f);
			return -1;
		}

		if(r==1) {
			blk=block_new(name, start, end, type);
			if(blk==NULL) {
				msg(0, "       at line %d of '%s'\n", lineno, 
								filename);
				fclose(f);
				return -1;
			}
			free(name);
		}

		lineno++;	
	}

	fclose(f);
	return 0;
}

/* TODO: Use split_line() from utils.c */
int block_load_line(char *line, char **name, 
				int *start, int *end, enum blocktype *type)
{
	int r;

	char *linec,*tok;

	char *named;
	int startd,endd,typed;

	/* First, remove any comments on the line. Everything past a ';' is
	 * ignored */

	if(line[0]==';') {
		return 0;
	} else {
		linec=strtok(line, ";");
	}

	if(linec==NULL) return 0;		/* empty line */

	/* Skip leading white space */

	tok=strtok(linec, " \t\r\n");

	if(tok==NULL) return 0;			/* empty line */

	if(tok[strlen(tok)-1]!=':') {
		msg(0, "Error: ':' expected after block name '%s'\n", tok);
		/* not a label */
		return -1;
	}

	tok[strlen(tok)-1]=0;
	named=tok;

	tok=strtok(NULL, " \t\r\n");
	
	if(tok==NULL || strcasecmp(tok, "start")) {
		msg(0, "Error: 'start' expected\n");
		return -1;
	}

	tok=strtok(NULL, " \t\r\n");

	if(tok==NULL) {
		msg(0, "Error: Start address expected\n");
		return -1;
	}

	r=sscanf(tok, "%i", &startd);
	if(r!=1) {
		msg(0, "Error: Invalid start address '%s'\n", tok);
		return -1;
	} 

	tok=strtok(NULL, " \t\r\n");
	
	if(tok==NULL || strcasecmp(tok, "end")) {
		msg(0, "Error: 'end' expected\n");
		return -1;
	}

	tok=strtok(NULL, " \t\r\n");

	if(tok==NULL) {
		msg(0, "Error: End address expected\n");
		return -1;
	}

	r=sscanf(tok, "%i", &endd);
	if(r!=1 || endd <= startd) {
		msg(0, "Error: Invalid end address '%s'\n", tok);
		return -1;
	} 

	tok=strtok(NULL, " \t\r\n");
	
	if(tok==NULL || strcasecmp(tok, "type")) {
		msg(0, "Error: 'type' expected\n");
		return -1;
	}

	tok=strtok(NULL, " \t\r\n");

	if(tok==NULL) {
		msg(0, "Error: Block type expected\n");
		return -1;
	}

	if(!strcmp(tok, "code")) {
		typed=code;	
	} else if(!strcmp(tok, "bytedata")) {
		typed=bytedata;
	} else if(!strcmp(tok, "worddata")) {
		typed=worddata;
	} else if(!strcmp(tok, "pointers")) {
		typed=pointers;
	} else {
		msg(0, "Error: Invalid block type '%s'\n", tok);
		return -1;
	}

	*name=strdup(named);
	*start=startd;
	*end=endd;
	*type=typed;

	return 1;
}
