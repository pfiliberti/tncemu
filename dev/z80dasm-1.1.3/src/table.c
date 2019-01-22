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
#include <stdlib.h>
#include <string.h>

#include "dz80.h"
#include "symtab.h"

/*calculate destination addresses and store in hash table*/
int tosymtab(int *ia, unsigned int prc)
{
unsigned int argval;

enum referencetype argtyp;

/* FIXME: This duplicates decoding code in dz80.c. */

argtyp=0;
if((ia[0]==0x32) || (ia[0]==0x3a))
	/* ld (nn),a */
	/* ld a,(nn) */
	{
	argtyp=vrbyte;
	argval=ia[1]+256*ia[2];
	}
else if((ia[0]==0x22) || (ia[0]==0x2a))
	/* ld (nn),hl */
	/* ld hl,(nn) */
	{
	argtyp=vrword;
	argval=ia[1]+256*ia[2];
	}
else if(ia[0]==0xed)
	{
	if((ia[1]==0x43)||(ia[1]==0x4b)||(ia[1]==0x53)||(ia[1]==0x5b)\
	||(ia[1]==0x73)||(ia[1]==0x7b))
	/* ld (nn),bc */
	/* ld bc,(nn) */
	/* ld (nn),de */
	/* ld de,(nn) */
	/* ld (nn),sp */
	/* ld sp,(nn) */
		{
		argtyp=vrword;
		argval=ia[2]+256*ia[3];
		}
	}
else if((ia[0]==0xdd)||(ia[0]==0xfd))
	{
	if((ia[1]==0x22)||(ia[1]==0x2a))
		/* ld (nn),ix */
		/* ld ix,(nn) */
		/* ld (nn),iy */
		/* ld iy,(nn) */
		{
		argtyp=vrword;
		argval=ia[2]+256*ia[3];
		}
	if(ia[1]==0x21)
		/* ld ix,nn */
		/* ld iy,nn */
		{
		argtyp=cstadd;
		argval=ia[2]+256*ia[3];
		}
	}
else if((ia[0]==0xda)||(ia[0]==0xfa)||(ia[0]==0xd2)||(ia[0]==0xc3)\
||(ia[0]==0xc2)||(ia[0]==0xf2)||(ia[0]==0xea)||(ia[0]==0xe2)||(ia[0]==0xca))
	{
	/* jp */
	argtyp=jpdest;
	argval=ia[1]+256*ia[2];
	}

else if((ia[0]==0x38)||(ia[0]==0x18)||(ia[0]==0x30)||(ia[0]==0x20)||(ia[0]==0x28))
	{
	/* jr */
	argtyp=jrdest;
	argval=prc+ia[1]+2;
	if(ia[1]>=128)argval-=256;/*signbit*/
	}
else if((ia[0]==0xdc)||(ia[0]==0xfc)||(ia[0]==0xd4)||(ia[0]==0xcd)||(ia[0]==0xc4)\
||(ia[0]==0xf4)||(ia[0]==0xf4)||(ia[0]==0xec)||(ia[0]==0xe4)||(ia[0]==0xcc))
	/* call */
	{
	argtyp=cldest;
	argval=ia[1]+256*ia[2];
	}
else if((ia[0]==0x31)||(ia[0]==0x01)||(ia[0]==0x11)||(ia[0]==0x21))
	{
	/* ld rr,nn */
	argtyp=cstadd;
	argval=ia[1]+256*ia[2];
	}
else if(ia[0]==0x10)
	/* djnz */
	{
	argtyp=djdest;
	argval=prc+ia[1]+2;
	if(ia[1]>=128)argval-=256;
	}

if(argtyp==undef) {
	return 1;
} else {
	symbol_newref(argval & 0xffff,prc,argtyp);
}

return(1);/*ok*/
}
