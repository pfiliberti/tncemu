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

#include "symtab.h"
#include "dz80.h"
#include "utils.h"

char *include[MAX_INCLUDE_TOP];
int includenum=0;

void symbol_export_includes(FILE *f)
{
	int n;

	for(n=0;n<includenum;n++) {
		fprintf(f, "include \"%s\"\n", include[n]);
	}
}

void symbol_free_includes()
{
	int n;

	for(n=0;n<includenum;n++) {
		free(include[n]);
	}

	includenum=0;
}

int symbol_load_file(char *filename, int level)
{
	FILE *f;
	char line[MAX_LINE_LEN];

	int r,val;
	int lineno;
	char *name;

	if(level==1) {
		if(includenum>=MAX_INCLUDE_TOP) {
			msg(0, "Error: Too many include directives\n");
			return -1;
		}

		include[includenum]=strdup(filename);
		includenum++;
	} else if(level>MAX_INCLUDE_LEVEL) {
		msg(0, "Error: Too many nested include directives\n");
		return -1;
	}

	f=fopen(filename, "r");
	if(f==NULL) {
		msg(0, "Error: Cannot open '%s': %s\n", 
						filename, strerror(errno));
		return -1;
	}

	lineno=1;
	while(fgets(line, MAX_LINE_LEN, f)!=NULL) {
		r=symbol_load_line(line, &name, &val, level);
		if(r<0) {
			msg(0, "       at line %d of '%s'\n", lineno, filename);
			fclose(f);
			return -1;
		}

		if(r==1) {
			symbol_new(name, val, 50, level!=0);
			free(name);
		}

		lineno++;	
	}

	fclose(f);
	return 0;
}

int symbol_include_d(char *param, int level)
{
	char *filename;
	int error;

	error=0;

	if(strlen(param)<3) {
		error=1;
	}

	if(param[0]!='"' || param[strlen(param)-1]!='"') {
		error=1;
	}

	if(error) {
		msg(0, "Error: File name expected after 'include' "
			"directive\n");
		return -1;
	}

	param[strlen(param)-1]=0;
	filename=&param[1];

	return(symbol_load_file(filename,level+1));
}

/* Returns: Negative number means syntax error, 0 ignored line, 1 found a 
 * symbol definition */
int symbol_load_line(char *line, char **name, int *val, int level)
{
	int r;

	char *linec;

	char *named;
	int vald;
	
	/* Following syntax is supported:
	 * 	symbol_name: equ symbol_value
	 * 	include "filename" */

	#define MAX_TOKENS	3
	char *tokens[MAX_TOKENS];
	int num_tokens;

	/* First, remove any comments on the line. Everything past a ';' is
	 * ignored */

	if(line[0]==';') {
		return 0;
	} else {
		linec=strtok(line, ";");
	}

	if(linec==NULL) return 0;		/* empty line */

	num_tokens=split_line(line, tokens, MAX_TOKENS, " \t\r\n");

	if(num_tokens==0) return 0;		/* empty line */

	if(num_tokens==-1) {
		/* too many tokens */
		msg(0, "Error: Syntax error\n");
		return -1;
	}

	if(!strcmp(tokens[0], "include")) {
		if(num_tokens<2) {
			msg(0, "Error: File name expected after 'include' "
				"directive\n");
			return -1;
		}
		return symbol_include_d(tokens[1], level);
	}

	/* Not a directive... */

	named=tokens[0];

	if(named[strlen(named)-1]!=':') {
		/* ...and not a label? */
		msg(0, "Error: ':' expected after symbol name '%s'\n", named);
		return -1;
	}

	named[strlen(named)-1]=0;

	if(num_tokens<3) {
		msg(0, "Error: 'equ symbol_value' expected after label name "
							"'%s'\n", named);
		return -1;
	}

	if(strcmp(tokens[1], "equ")) {
		msg(0, "Error: 'equ' expected after label name '%s'\n", named);
		return -1;
	}

	r=sscanf(tokens[2], "%i", &vald);
	if(r!=1) {
		msg(0, "Error: Invalid symbol value '%s'\n", tokens[2]);
		return -1;
	} 

	*name=strdup(named);
	*val=vald;

	return 1;
}
