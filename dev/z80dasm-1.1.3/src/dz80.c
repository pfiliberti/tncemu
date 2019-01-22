/* 
dz80_2 is registered Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2007 <Jan Panteltje>
email: panteltje@yahoo.com

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

/* Modified by Tomaz Solc <tomaz.solc@tablix.org>, June 2007 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#include "dz80.h"
#include "symtab.h"
#include "blocks.h"
#include "config.h"
#include "utils.h"

#define FP fprintf

#define T_SIZE	6

/* Might be self-modifying code. */
int f_smc = 0;

/* 8080 incompatible code */
int f_z80 = 0;

FILE *f1=NULL, *f2=NULL, *f3=NULL, *fx=NULL;

/* program counter */
unsigned int pc=0;
int pass=0;

/* buffer holding binary data from the file to be decoded */
int t[T_SIZE];

/* bytes remaining in the current block */
int shiftin_cnt;

/* current block */
struct block *shiftin_blk;

void shiftin()
{
	int n;

	for(n=0; n<(T_SIZE-1); n++) {
		t[n]=t[n+1];
	}

	if(shiftin_cnt>0) {
		t[T_SIZE-1]=getc(f1);
		if(t[T_SIZE-1]==EOF) {
			msg(0, "Error: Unexpected end of file. "
						"File changed while reading.");
			t[T_SIZE-1]=-1;
		}

		shiftin_cnt--;
	} else {	
		t[T_SIZE-1]=-1;
	}
}

/* Returns:
 * 	-1	Not enough data available
 * 	0	Constant
 * 	1	Symbol 		*/
int ckrange(int skip, char *str) 
{
	int val, off;
	struct symbol *symb;

	if(t[skip+0]==-1 || t[skip+1]==-1) {
		/* not enough data in file */
		return -1;
	}
	val=t[skip+0]+256*t[skip+1];

	if(pass==1 || pass==2 || (!a_labels)) {
		/* on first two passes don't bother printing labels (or if
		 * labels are disabled) */
		sprintf(str,"0%04xh",val);
		return 0;
	}

	/* not in area covered by file being disassembled */

	/* NOTE: such symbols should already be 
	 * removed by symbol_remove_nonlabels() */
/*
	if((val<start) || (val>end)) {
		sprintf(str,"0%04xh",val);
		return 0;
	}
*/
	symb=symbol_find(val);
	if(symb!=NULL) {
		/* exact match */
		sprintf(str,"%s", symb->name);
		return 1;
	}

	symb=symbol_find_range(val);
	if(symb!=NULL) {
		f_smc=1;
		off=val-symb->val;
		sprintf(str,"%s+%d", symb->name, off);
		return 1;
	}

	/* no label found */
	sprintf(str, "0%04xh", val);

	return 0;
}

/* Returns:
 * 	-1	Not enough data available
 * 	0	Constant
 * 	1	Symbol 		*/
int ckrange_rel(int skip, int pc, char *str) 
{
	int val;
	struct symbol *symb=NULL;

	if(t[skip]==-1) return -1;

	if(a_labels) {
		if(t[skip]<128) {
			val=pc+2+t[skip];
		} else {
			val=pc+2+t[skip]-256;
		}

		symb=symbol_find(val & 0xffff);
	}

	if(a_labels && symb!=NULL) {
		/* print a label */
		sprintf(str, "%s", symb->name);
		return 1;
	} else {
		if(a_zilog) {
			/* old Zilog za.com */
			if(t[1]<128) {
				sprintf(str,"%d",t[1]+2);
			} else { 
				sprintf(str,"%d",t[1]+2-256);
			}
		} else {
			/* zasm by Günter Woigk and
			 * z80asm */
			if(t[1]<128) {
				sprintf(str,"$%+d",t[1]+2);
			} else {
				sprintf(str,"$%+d",t[1]+2-256);
			}
		}
		return 0;
	}
}

/* Returns number of bytes used */
int diz80()
{
char stri[80];
char stro[80];
int a,r,i;
char bstr[MAX_LINE_LEN];
char rstr[MAX_LINE_LEN];

/* indent all instructions*/
FP(fx,"\t");

if(t[0] == 0xcb) {
	a=t[1];
	if(a==-1) {
		FP(fx,"defb 0%02xh", t[0]);
		return(1);
	}
	if(a < 8)				FP(fx,"rlc ");
	else if((a >= 0x08) && (a < 0x10))	FP(fx,"rrc ");
	else if((a >= 0x10) && (a < 0x18))	FP(fx,"rl ");
	else if((a >= 0x18) && (a < 0x20))	FP(fx,"rr ");
	else if((a >= 0x20) && (a < 0x28))	FP(fx,"sla ");
	else if((a >= 0x28) && (a < 0x30))	FP(fx,"sra ");
	/* undocumented instruction SLI (shift left with 1 insertion) */
	else if((a >= 0x30) && (a < 0x38))	FP(fx,"sli ");
	else if((a >= 0x38) && (a < 0x40))	FP(fx,"srl ");
	else if((a >= 0x40) && (a < 0x80))	FP(fx,"bit %d,",(a-0x40)/8);
	else if((a >= 0x80) && (a < 0xc0))	FP(fx,"res %d,",(a-0x80)/8);
	else if(a >= 0xc0)			FP(fx,"set %d,",(a-0xc0)/8);
	FP(fx,"%s",rarg[a%8]);
	f_z80=1;
	return(2);
} else if(t[0] == 0xed) {
	a=t[1];
	if(a==-1) {
		FP(fx,"defb 0%02xh", t[0]);
		return(1);
	}
/*
if((a>=0x40)&&(a<0x50)&&(ed40[a-0x40][0]!='0'))FP(fx,"%s",ed40[a-0x40]);
else if((a>=0x50)&&(a<0x60)&&(ed50[a-0x50][0]!='0'))FP(fx,"%s",ed50[a-0x50]);
else if((a>=0x60)&&(a<0x70)&&(ed60[a-0x60][0]!='0'))FP(fx,"%s",ed60[a-0x60]);
else if((a>=0x70)&&(a<0x80)&&(ed70[a-0x70][0]!='0'))FP(fx,"%s",ed70[a-0x70]);
else if((a>=0xa0)&&(a<0xb0)&&(eda0[a-0xa0][0]!='0'))FP(fx,"%s",eda0[a-0xa0]);
else if((a>=0xb0)&&(a<0xc0)&&(edb0[a-0xb0][0]!='0'))FP(fx,"%s",edb0[a-0xb0]);
*/
	if((a>=0x40)&&(a<0x50)&&(ed40[a-0x40][0]!='0')) i=0;
	else if((a>=0x50)&&(a<0x60)&&(ed50[a-0x50][0]!='0')) i=1;
	else if((a>=0x60)&&(a<0x70)&&(ed60[a-0x60][0]!='0')) i=2;
	else if((a>=0x70)&&(a<0x80)&&(ed70[a-0x70][0]!='0')) i=3;
	else if((a>=0xa0)&&(a<0xb0)&&(eda0[a-0xa0][0]!='0')) i=4;
	else if((a>=0xb0)&&(a<0xc0)&&(edb0[a-0xb0][0]!='0')) i=5;
	else {
		FP(fx,"defb 0edh");
		FP(fx,";next byte illegal after ed");
		return(1);
	}
	r=ckrange(2,bstr);
	if(r==-1) {
		FP(fx,"defb");
		for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
		return(i);
	}
	f_z80=1;
	switch(i) {
		case 0: FP(fx,"%s",ed40[a-0x40]);
			break;
		case 1: FP(fx,"%s",ed50[a-0x50]);
			break;
		case 2: FP(fx,"%s",ed60[a-0x60]);
			break;
		case 3: FP(fx,"%s",ed70[a-0x70]);
			break;
		case 4: FP(fx,"%s",eda0[a-0xa0]);
			break;
		case 5: FP(fx,"%s",edb0[a-0xb0]);
			break;
	}

/*if arg not in prog range it is a constant*/
	if(a == 0x43)
		{
		FP(fx,"%s),bc",bstr);
		return(4);
		}
	else if(a == 0x53)
		{
		FP(fx,"%s),de",bstr);
		return(4);
		}
	else if(a == 0x73)
		{
		FP(fx,"%s),sp",bstr);
		return(4);
		}
	else if((a == 0x4b) || (a == 0x5b) || (a == 0x7b))
		{
		FP(fx,"%s)",bstr);
		return(4);
		}
	return(2);
} else if((t[0] == 0xdd) || (t[0] == 0xfd)) {
	if(t[0]==0xfd) {
		strcpy(stri,"iy");
	} else {
		strcpy(stri,"ix");
	}
	if(t[1]==-1) {
		FP(fx,"defb 0%02xh", t[0]);
		return(1);
	}
	r=ckrange(2,bstr);
	f_z80=1;
	switch(t[1])
		{
		case 0x09:
			FP(fx,"add %s,bc",stri);
			return(2);
			break;
		case 0x19:
			FP(fx,"add %s,de",stri);
			return(2);
			break;
		case 0x21:
			if(r==-1) {
				FP(fx,"defb");
				for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
				return(i);
			}
			FP(fx,"ld %s,%s",stri,bstr);
			return(4);
			break;
		case 0x22:
			if(r==-1) {
				FP(fx,"defb");
				for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
				return(i);
			}
			FP(fx,"ld (%s),%s",bstr,stri);
			return(4);
			break;
		case 0x23:
			FP(fx,"inc %s",stri);
			return(2);
			break;
		case 0x29:
			FP(fx,"add %s,%s",stri,stri);
			return(2);
			break;
		case 0x2a:
			if(r==-1) {
				FP(fx,"defb");
				for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
				return(i);
			}
			FP(fx,"ld %s,(%s)",stri,bstr);
			return(4);
			break;
		case 0x2b:
			FP(fx,"dec %s",stri);
			return(2);
			break;
		case 0x39:
			FP(fx,"add %s,sp",stri);
			return(2);
			break;
		case 0xe1:
			FP(fx,"pop %s",stri);
			return(2);
			break;
		case 0xe3:
			FP(fx,"ex (sp),%s",stri);
			return(2);
			break;
		case 0xe5:
			FP(fx,"push %s",stri);
			return(2);
			break;
		case 0xe9:
			FP(fx,"jp (%s)",stri);
			return(2);
			break;
		case 0xf9:
			FP(fx,"ld sp,%s",stri);
			return(2);
			break;
		} /* end switch */
	/* now it must be an instruction of type (ix+dd) or (iy+dd) */

	if((t[2]==-1)||(t[3]==-1)) {
		FP(fx,"defb");
		for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
		return(i);
	}

	if(t[2] < 128) {
		sprintf(stro,"(%s+0%02xh)",stri,t[2]);
		/* stro is: (ix+dd) or (iy+dd) */
	} else {
		sprintf(stro,"(%s-0%02xh)",stri,256 - t[2]); 
	}

	if(t[1]==0xcb)
		{
		switch(t[3])
			{
			case 0x06:
				FP(fx,"rlc ");
				break;
			case 0x0e:
				FP(fx,"rrc ");
				break;
			case 0x16:
				FP(fx,"rl ");
				break;
			case 0x1e:
				FP(fx,"rr ");
				break;
			case 0x26:
				FP(fx,"sla ");
				break;
			case 0x2e:
				FP(fx,"sra ");
				break;
			case 0x3e:
				FP(fx,"srl ");
				break;
			case 0x46:
				FP(fx,"bit 0,");
				break;
			case 0x4e:
				FP(fx,"bit 1,");
				break;
			case 0x56:
				FP(fx,"bit 2,");
				break;
			case 0x5e:
				FP(fx,"bit 3,");
				break;
			case 0x66:
				FP(fx,"bit 4,");
				break;
			case 0x6e:
				FP(fx,"bit 5,");
				break;
			case 0x76:
				FP(fx,"bit 6,");
				break;
			case 0x7e:
				FP(fx,"bit 7,");
				break;
			case 0x86:
				FP(fx,"res 0,");
				break;
			case 0x8e:
				FP(fx,"res 1,");
				break;
			case 0x96:
				FP(fx,"res 2,");
				break;
			case 0x9e:
				FP(fx,"res 3,");
				break;
			case 0xa6:
				FP(fx,"res 4,");
				break;
			case 0xae:
				FP(fx,"res 5,");
				break;
			case 0xb6:
				FP(fx,"res 6,");
				break;
			case 0xbe:
				FP(fx,"res 7,");
				break;
			case 0xc6:
				FP(fx,"set 0,");
				break;
			case 0xce:
				FP(fx,"set 1,");
				break;
			case 0xd6:
				FP(fx,"set 2,");
				break;
			case 0xde:
				FP(fx,"set 3,");
				break;
			case 0xe6:
				FP(fx,"set 4,");
				break;
			case 0xee:
				FP(fx,"set 5,");
				break;
			case 0xf6:
				FP(fx,"set 6,");
				break;
			case 0xfe:
				FP(fx,"set 7,");
				break;
			default:
		FP(fx,"defb 0%02xh,0%02xh,0%02xh,0%02xh\t;illegal sequence"\
			,t[0],t[1],t[2],t[3]);
				return(4);
			}/*end switch t[3]*/
		FP(fx,"%s",stro);
		return(4);
		}/*end dd cb or fd cb*/
	else switch(t[1])
		{
		case 0x34:
			FP(fx,"inc %s",stro);
			break;
		case 0x35:
			FP(fx,"dec %s",stro);
			break;
		case 0x36:
			FP(fx,"ld %s,0%02xh",stro,t[3]);
			return(4);
			break;
		case 0x46:
			FP(fx,"ld b,%s",stro);
			break;
		case 0x4e:
			FP(fx,"ld c,%s",stro);
			break;
		case 0x56:
			FP(fx,"ld d,%s",stro);
			break;
		case 0x5e:
			FP(fx,"ld e,%s",stro);
			break;
		case 0x66:
			FP(fx,"ld h,%s",stro);
			break;
		case 0x6e:
			FP(fx,"ld l,%s",stro);
			break;
		case 0x70:
			FP(fx,"ld %s,b",stro);
			break;
		case 0x71:
			FP(fx,"ld %s,c",stro);
			break;
		case 0x72:
			FP(fx,"ld %s,d",stro);
			break;
		case 0x73:
			FP(fx,"ld %s,e",stro);
			break;
		case 0x74:
			FP(fx,"ld %s,h",stro);
			break;
		case 0x75:
			FP(fx,"ld %s,l",stro);
			break;
		case 0x77:
			FP(fx,"ld %s,a",stro);
			break;
		case 0x7e:
			FP(fx,"ld a,%s",stro);
			break;
		case 0x86:
			FP(fx,"add a,%s",stro);
			break;
		case 0x8e:
			FP(fx,"adc a,%s",stro);
			break;
		case 0x96:
			FP(fx,"sub %s",stro);
			break;
		case 0x9e:
			FP(fx,"sbc a,%s",stro);
			break;
		case 0xa6:
			FP(fx,"and %s",stro);
			break;
		case 0xae:
			FP(fx,"xor %s",stro);
			break;
		case 0xb6:
			FP(fx,"or %s",stro);
			break;
		case 0xbe:
			FP(fx,"cp %s",stro);
			break;
		default:
			FP(fx,"defb 0%02xh,0%02xh,0%02xh\t;illegal sequence"\
			,t[0],t[1],t[2]);
			return(3);
		}/*end switch t[1]*/
	return(3);
	}/*end 0xdd and 0xfd group*/
r=ckrange(1,bstr);
switch(comtab[t[0]].type)
	{
	case 0:
		FP(fx,"%s",comtab[t[0]].com1);
		FP(fx,"\t");
		break;
	case 1:
		if(t[1]==-1) {
			FP(fx,"defb 0%02xh", t[0]);
			return(1);
		}
		FP(fx,"%s",comtab[t[0]].com1);
		FP(fx,"0%02xh",t[1]);
		break;
	case 2:
		if(r==-1) {
			FP(fx,"defb");
			for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
			return(i);
		}
		FP(fx,"%s",comtab[t[0]].com1);
		FP(fx,"%s",bstr);
		break;
	case 3:
		if(t[1]==-1) {
			FP(fx,"defb 0%02xh", t[0]);
			return(1);
		}
		FP(fx,"%s",comtab[t[0]].com1);
		if(comtab[t[0]].bytes == 2) {
			/*jr and djnz instr. are 2 bytes type 3*/

			/* don't need to check return value because we checked
			 * t[1] above */
			ckrange_rel(1,pc,rstr);
			FP(fx,"%s",rstr);
			
		} else {
			FP(fx,"0%02xh",t[1]);/*not jr*/
		}
		break;
	case 11:
		if(t[1]==-1) {
			FP(fx,"defb 0%02xh", t[0]);
			return(1);
		}
		FP(fx,"%s",comtab[t[0]].com1);
		FP(fx,"0%02xh%s",t[1],comtab[t[0]].com2);
		break;
	case 12:
		if(r==-1) {
			FP(fx,"defb");
			for(i=0;t[i]!=-1;i++) FP(fx,"%c0%02xh", i?',':' ', t[i]);
			return(i);
		}
		FP(fx,"%s",comtab[t[0]].com1);
		FP(fx,"%s%s",bstr,comtab[t[0]].com2);
		break;
	}
a=comtab[t[0]].bytes;
if(comtab[t[0]].proc==1) {
	f_z80=1;
}
return(a);
}

int diz80_bytedata()
{
	FP(fx, "\tdefb 0%02xh", t[0]);
	return 1;
}

int diz80_worddata()
{
	if(t[1]==-1) {
		return diz80_bytedata();
	}

	FP(fx, "\tdefw 0%04xh", t[0]+256*t[1]);
	return 2;
}

int diz80_pointers()
{
	char bstr[MAX_LINE_LEN];

	if(t[1]==-1) {
		return diz80_bytedata();
	}

	ckrange(0, bstr);
	FP(fx, "\tdefw %s", bstr);

	if(pass == 1 && a_labels) {
		symbol_newref(t[0]+256*t[1], pc, cstdfw);
	}

	return 2;
}

int diz80_code()
{
	int r;

	r=diz80();

	if(pass == 1 && a_labels && r>0) {
		tosymtab(t,pc);
	}

	return r;
}

int disassemble()
{
	if(t[0]==-1) {
		/*end of file*/
		return(0);
	}

	switch(shiftin_blk->type) {
		case code:	return diz80_code();
		case bytedata:	return diz80_bytedata();
		case worddata:	return diz80_worddata();
		case pointers:	return diz80_pointers();
	}

	/* should never be reached!
	 * (but for some reason gcc wants a return here) */

	return 0;
}

void blk_reset()
{
	shiftin_blk=blocks;
	shiftin_cnt=shiftin_blk->end - shiftin_blk->start;

	fseek(f1, 0, SEEK_SET);
}

int blk_iterate()
{
	msg(2, "Disassembled block %s (0x%04x - 0x%04x)\n", shiftin_blk->name,
				shiftin_blk->start, shiftin_blk->end);

	shiftin_blk=shiftin_blk->next;
	if(shiftin_blk==NULL) return 0;

	shiftin_cnt=shiftin_blk->end - shiftin_blk->start;

	if(shiftin_blk->start != pc) {
		msg(2, "Debug: shiftin_blk->start == 0x%04x\n", 
							shiftin_blk->start);
		msg(2, "Debug: pc                 == 0x%04x\n", pc);
	}

	return 1;
}

int main(int argc, char *argv[])
{
	FILE *pass1, *pass2;

	struct symbol *symb;
	int r,i,pci,sf;

	unsigned int start,end;

	fx = stdout;/*select terminal*/

	cmdline(argc, argv);

	if(a_input) {
		f1=fopen(a_input, "rb");
		if(f1==NULL) {
			msg(0, "Error: Cannot open %s: %s\n", 
						a_input, strerror(errno));
			exit(1);
		}
	} else {
		msg(0, "Error: No input file specified\n");
		exit(1);
	}

	if(a_syminput) {
		r=symbol_load_file(a_syminput, 0);
		if(r) {
			exit(1);
		}
	}

	if(a_symoutput) {
		f2=fopen(a_symoutput, "w");
		if(f2==NULL) {
			msg(0, "Error: Cannot create %s: %s\n",
						a_symoutput, strerror(errno));
			exit(1);
		}
	}

	if(a_output==NULL) {
		f3=stdout;
	} else {
		f3=fopen(a_output, "w");
		if(f3==NULL) {
			msg(0, "Error: Cannot create %s: %s\n",
						a_output, strerror(errno));
			exit(1);
		}
	}

	start=a_org;

	end=a_org+file_len(a_input);

	if(end==start) {
		msg(0, "Error: Empty input file\n");
		exit(1);
	}

	if(end>0x10000) {
		msg(0, "Error: Binary data outside 16-bit address space\n");
		exit(1);
	}

	msg(1, "Disassembling binary data at 0x%04x - 0x%04x\n", start, end);

	block_init(start, end);

	if(a_blockfile) {
		r=block_load_file(a_blockfile);
		if(r) {
			exit(1);
		}
	}

	/* Temporary files to redirect pass1 and pass2 output.
	 *
	 * This is just a dirty hack to remove a lot of console output on
	 * first two passes by diz80() */
	pass1=tmpfile();
	if(pass1==NULL) {
		msg(0, "Error: Cannot create temporary file: %s\n",
						strerror(errno));
		exit(1);
	}
	pass2=tmpfile();
	if(pass2==NULL) {
		msg(0, "Error: Cannot create temporary file: %s\n",
						strerror(errno));
		exit(1);
	}

	/**************************pass 1*******************************/
	/*In pass 1 addresses are calculated, arguments are stored in table*/
	msg(1, "Starting pass 1\n");

	pass=1;
	fx=pass1;

	pc=start;
	blk_reset();
	do {
		for(i=0;i<T_SIZE;i++) shiftin();

		while(1) {
			pci=disassemble();
			if(pci==0) break;

			FP(fx,"\t\t;%04x",pc);
			FP(fx,"\n");

			for(i=0;i<pci;i++) shiftin();
			pc+=pci;
		}
	} while(blk_iterate());

	/******************************pass 2******************************/
	/*
	In pass 2 a check is made if all arguments stored in the table 
	that are within code area range correspond to instruction addresses.
	If they do not correspond, they must be changed to the instruction 
	address

	just before that + offset (could be self modifiing code)
	*/
	msg(1, "Starting pass 2\n");

	pass=2;
	fx=pass2;

	pc=start;
	blk_reset();
	do {
		for(i=0;i<T_SIZE;i++) shiftin();

		while(1) {
			pci=disassemble();
			if(pci==0) break;

			if(a_labels) {
				symbol_setlabel(pc,pci);
			}
			FP(fx,"\n");

			for(i=0;i<pci;i++) shiftin();
			pc+=pci;
		}
	} while(blk_iterate());

	/* remove symbols from the symbol table that: 
	 * 	1) were added automatically
	 * 	2) are not labels */
	if(a_labels) {
		symbol_remove_nonlabels();
	}

	if(f2) {
		msg(2, "Writing symbol file\n");
		symbol_export(f2);
		fclose(f2);
	}
	/***************************pass 3*********************************/
	/*
	In pass 3 the instruction length is again calculated, the instruction
	start addresses are calculated, these are looked up in the table to see if
	they correspond to any argument, if they correspond a label is printed
	before the instruction, made of lxxx where xxx is the hex address of the
	instruction.
	*/
	msg(1, "Starting pass 3\n");
	msg(2, "Writing assembly file\n");

	pass=3;
	fx=f3;

	pc=start;
	blk_reset();

	FP(fx,"; %s\n", PACKAGE_STRING);
	FP(fx,"; command line:");
	for(i=0;i<argc;i++) FP(fx," %s", argv[i]);
	FP(fx,"\n");
	FP(fx,"\n\torg\t0%04xh\n",pc);

	/* Print required definitions for symbols that are not labels into the 
	 * assembly file so that it assembles even when symbol file is not
	 * included */
	symbol_export_nonlabels(fx);

	FP(fx,"\n");

	/* Ugly but simplest way do get rid of double label prints at
	 * block boundaries */
	sf=1;

	do {
		for(i=0;i<T_SIZE;i++) shiftin();

		while(1) {
			/* print a label, if one exists at this address */
			if(a_labels && sf) {
				symb=NULL;
				while(1) {
					symb=symbol_find_next(pc, symb);
					if(symb==NULL) break;

					if(symb->comment!=NULL) {
						FP(fx, "%s", symb->comment);
					}
					FP(fx,"%s:\n",symb->name);
				}
			}
			sf=1;
	
			/* print assembly instruction */
			pci=disassemble();
			if(pci==0) break;
	
			/* current address */
			if(a_address||a_source) {
				FP(fx,"\t\t;%04x",pc);
			}

			if(a_source) {
				/* binary in hex... */
				FP(fx,"\t");
				for(i=0;i<pci;i++) {
					FP(fx,"%02x ",t[i]);
				}
				/* ...and ASCII */
				FP(fx,"\t");
				for(i=0;i<pci;i++) {
					if((t[i] >= 32) && (t[i] < 128)) {
						FP(fx,"%c ",t[i]);
					} else {
						FP(fx,". ");
					}
				}
			}/*end if a_source*/
			FP(fx,"\n");

			for(i=0;i<pci;i++) shiftin();
			pc+=pci;
		}
		sf=0;
	} while(blk_iterate());

	fclose(f1);

	if(a_zilog) {
		FP(fx,"\n\tend\n");
	}

	if(f_z80) {
		msg(0, "Warning: Code might not be 8080 compatible!\n");
	}
	if(f_smc) {
		msg(0, "Warning: Self modifying code detected!\n");
	}
	if(a_output) {
		fclose(f3);
	}
	exit(0);
}/*end main*/
