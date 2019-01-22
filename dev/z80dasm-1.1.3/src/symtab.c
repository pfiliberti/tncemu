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

#include "symtab.h"
#include "dz80.h"

struct symbol *symbols=NULL;

/* TODO: This symbol table implementation in slow. */

void symbol_remove(struct symbol *symb)
{
	struct reference *ref,*refn;

	msg(2, "Debug: removing symbol '%s' with value 0x%04x\n", 
						symb->name, symb->val);

	ref=symb->ref;
	while(ref!=NULL) {
		refn=ref->next;
		free(ref);
		ref=refn;
	}

	free(symb->name);

	if(symb->prev!=NULL) {
		symb->prev->next=symb->next;
	} else {
		symbols=symb->next;
	}

	if(symb->next!=NULL) {
		symb->next->prev=symb->prev;
	}

	free(symb);
}

struct symbol *symbol_find(int val)
{
	struct symbol *cur;

	cur=symbols;
	while(cur!=NULL) {
		if(cur->val == val) {
			return cur;
		}
		cur=cur->next;
	}

	return NULL;
}

struct symbol *symbol_find_next(int val, struct symbol *cur)
{
	if(cur==NULL) {
		cur=symbols;
	} else {
		cur=cur->next;
	}

	while(cur!=NULL) {
		if(cur->val == val) {
			return cur;
		}
		cur=cur->next;
	}

	return NULL;
}

int symbol_compare(struct symbol *a, struct symbol *b)
{
	if(a->val > b->val) {
		return 1;
	} else if(a->val < b->val) {
		return -1;
	}

	if(a->weight > b->weight) {
		return 1;
	} else if(a->weight < b->weight) {
		return -1;
	}

	return 0;
}

/* Helper function for symbol_new(). It finds a place where the new 
 * symbol will be inserted into the linked list */
void symbol_find_place(struct symbol *new, 
				struct symbol **prev, struct symbol **next)
{
	struct symbol *cur;

	*prev=NULL;
	cur=symbols;
	while(cur!=NULL) {
		*next=cur;
		if(symbol_compare(cur, new) > 0) {
			return;
		}
		*prev=cur;
		cur=cur->next;
	}

	*next=NULL;
	return;
}

struct symbol *symbol_find_inrange(int val, int range)
{
	struct symbol *cur;

	cur=symbols;
	while(cur!=NULL) {
		if(val<=cur->val && (val+range)>cur->val) {
			return cur;			
		}
		cur=cur->next;
	}

	return NULL;
}

struct symbol *symbol_find_range(int val)
{
	struct symbol *cur;

	cur=symbols;
	while(cur!=NULL) {
		if(cur->val<=val && (cur->val+cur->range)>val) {
			return cur;			
		}
		cur=cur->next;
	}

	return NULL;
}

struct symbol *symbol_new(char *name, int val, int weight, int included)
{
	struct symbol *prev, *next;
	struct symbol *dest;

	msg(2, "Debug: defining new symbol '%s' with value 0x%04x\n", 
							name, val);

	dest=symbol_find(val);
	if(dest!=NULL) {
		if(!strcmp(name, dest->name)) return NULL;
		/*
		msg(0, "Warning: two symbols with same value defined "
			"('%s' and '%s')\n", name, dest->name);
	 	*/
	}

	dest=calloc(1, sizeof(*dest));
	if(dest==NULL) return NULL;

	dest->name=strdup(name);
	dest->val=val;
	dest->weight=weight;

	dest->automatic=0;
	dest->range=1;
	dest->included=included;
	dest->label=0;

	symbol_find_place(dest, &prev, &next);

	dest->prev=prev;
	dest->next=next;

	if(next!=NULL) {
		next->prev=dest;
	}
	if(prev!=NULL) {
		prev->next=dest;
	} else {
		symbols=dest;
	}

	dest->ref=NULL;

	return dest;
}

struct symbol *symbol_newref(int val, int addr, enum referencetype type)
{
	struct symbol *dest;
	struct reference *r;

	/* strlen("sub_0000h")+1 = 10 */
	char name[10];

	dest=symbol_find(val);

	if(dest==NULL) {
		if(type==cldest) {
			sprintf(name, "sub_%04xh", val);
		} else {
			sprintf(name, "l%04xh", val);
		}

		dest=symbol_new(name, val, 50, 0);

		dest->automatic=1;
	}

	r=calloc(1, sizeof(*r));

	r->addr=addr;
	r->type=type;

	r->next=dest->ref;
	dest->ref=r;

	return dest;
}

int symbol_setlabel(int val, int range)
{
	struct symbol *dest;

	dest=symbol_find(val);
	if(dest==NULL) return 1;

	dest->range=range;
	dest->label=1;

	return 0;
}

void symbol_remove_nonlabels()
{
	struct symbol *symb,*symbn;

	symb=symbols;
	while(symb!=NULL) {
		symbn=symb->next;

		if((!symb->label) && symb->automatic) {
			symbol_remove(symb);
		}

		symb=symbn;
	}
}

int symbol_export_nonlabels(FILE *f)
{
	struct symbol *cur;

	cur=symbols;
	while(cur!=NULL) {
		if((!cur->label) && cur->ref != NULL) {
			fprintf(f, "%s:\tequ 0x%04x\n", cur->name, cur->val);
		}
		cur=cur->next;
	}

	return 0;
}

int symbol_export(FILE *f)
{
	struct symbol *cur;
	struct reference *r;

	fprintf(f, "; Symbol file\n\n");

	symbol_export_includes(f);

	fprintf(f, "\n");

	cur=symbols;
	while(cur!=NULL) {
		if(cur->included) {
			cur=cur->next;
			continue;
		}

		if(cur->comment!=NULL) {
			fprintf(f, "%s", cur->comment);
		}

		fprintf(f, "%s:\tequ 0x%04x\n", cur->name, cur->val);
		fprintf(f, "; Used at following locations:\n");

		r=cur->ref;
		while(r!=NULL) {
			fprintf(f, "; 0x%04x\t", r->addr);
			switch(r->type) {
				case undef:
					fprintf(f, "(unknown)");	
					break;
				case jpdest:	
					fprintf(f, "(jp destination)");
					break;
				case jrdest:	
					fprintf(f, "(jr destination)");
					break;
				case djdest:	
					fprintf(f, "(djnz destination)");
					break;
				case cldest: 
					fprintf(f, "(call destination)");
					break;
				case vrbyte: 
					fprintf(f, "(byte load pointer)");
					break; 
				case vrword: 
					fprintf(f, "(word load pointer)");
					break;
				case cstadd: 
					fprintf(f, "(immediate value)");
					break;
				case cstdfw: 
					fprintf(f, "(defw directive)");
					break;
			}
			fprintf(f, "\n");
			r=r->next;
		}
		fprintf(f, "\n");

		cur=cur->next;
	}

	return 1;
}
