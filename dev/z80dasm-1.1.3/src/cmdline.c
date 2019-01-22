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
#include <stdarg.h>
#include <unistd.h>
#include <getopt.h>

#include "config.h"

int a_address = 0;
int a_labels = 0;
int a_source = 0;
int a_org = 0x0100;
int a_zilog = 0;

int a_verbosity = 0;

char *a_output = NULL;
char *a_input = NULL;

char *a_symoutput = NULL;
char *a_syminput = NULL;

char *a_blockfile = NULL;

int msg(int level, const char *format, ...)
{
	va_list ap;
	int r=0;

	va_start(ap, format);
	if(a_verbosity>=level) {
		r=vfprintf(stderr, format, ap);
	}
	va_end(ap);

	return r;
}

void version()
{
	printf("%s, Z80 assembly language generating disassembler %s\n", 
							PACKAGE, VERSION);
	printf("Copyright (C) 1994-2007 Jan Panteltje <panteltje@yahoo.com>\n");
	printf("Copyright (C) 2007-2012 Tomaz Solc <tomaz.solc@tablix.org>\n\n");
	printf("This is free software. You may redistribute copies of it under the terms of\n");
	printf("the GNU General Public License <http://www.gnu.org/licenses/gpl.html>.\n");
	printf("There is NO WARRANTY, to the extent permitted by law.\n");
	exit(0);
}

void syntax() 
{
	printf("%s, Z80 assembly language generating disassembler %s\n", 
							PACKAGE, VERSION);
	printf("Usage: [options] file\n\n");

	printf("  -a  --address         Print the memory address of each assembly line in a\n");
	printf("                        comment\n");
	printf("  -l  --labels          Create labels for jump instructions\n");
	printf("  -g  --origin=ORG      Specify the starting address of the code (default 100h)\n");
	printf("  -t  --source          Print the corresponding binary data in hex and ASCII\n");
	printf("                        for each assembly line in a comment.\n");

	printf("  -s  --sym-output=FILE Write symbol information into FILE\n");
	printf("  -S  --sym-input=FILE  Read symbol information from FILE\n");
	printf("  -b  --block-def=FILE  Read information about code and data blocks from FILE\n");
	printf("  -o  --output=FILE     Print output to FILE instead of standard output\n");
	printf("  -h  --help            Display this help text and exit\n");
	printf("  -v 			Increase verbosity\n");
	printf("  -V  --version         Display version information and exit\n");
	printf("  -z  --zilog           Use original Zilog syntax for relative jumps\n");
	printf("\nBug reports to <%s>\n", PACKAGE_BUGREPORT);
	exit(0);
}

int str2int(char *s, int *n)
{
	int r;

	r=sscanf(s, "%i", n);
	if(r==1) return 0;

	return -1;
}

void cmdline(int argc, char **argv)
{
	const struct option longopts[] = {
		{ "address", no_argument, NULL, 'a' },
		{ "labels", no_argument, NULL, 'l' },
		{ "origin", required_argument, NULL, 'g'},
		{ "reduced", no_argument, NULL, 'r' },
		{ "source", no_argument, NULL, 't' },
		{ "sym-output", required_argument, NULL, 's' },
		{ "sym-input", required_argument, NULL, 'S' },
		{ "block-def", required_argument, NULL, 'b' },
		{ "output", required_argument, NULL, 'o' },
		{ "help", no_argument, NULL, 'h' },
		{ "version", no_argument, NULL, 'v' },
		{ "zilog", no_argument, NULL, 'z' },
		{ NULL, 0, NULL, 0 }
	};
	const char opts[] = "alg:rtS:s:o:hVvzb:";
	int c,r;

	while((c=getopt_long(argc, argv, opts, longopts, NULL))!=-1) {
		switch(c) {
			case 'a': a_address=1;
				  break;
			case 'l': a_labels=1;
			 	  break;
			case 'g': r=str2int(optarg, &a_org);
			          if(r) {
				  	fprintf(stderr, "Error: %s not an "
								"integer\n", 
								optarg);
					exit(1);
				  }
				  break;
			case 't': a_source=1;
				  break;
			case 's': a_symoutput=optarg;
				  break;
			case 'S': a_syminput=optarg;
				  break;
			case 'b': a_blockfile=optarg;
				  break;
			case 'z': a_zilog=1;
				  break;
			case 'o': a_output=optarg;
				  break;
			case 'V': version();
				  break;
			case 'v': a_verbosity++;
				  break;
			case 'h': syntax();
				  break;
			default:  break;
		}
	}

	if(optind<argc-1) {
		fprintf(stderr, "Warning: Only one input file supported\n");
	}

	if(optind<argc) {
		a_input=argv[optind];
	}
}
