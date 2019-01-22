#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/stat.h>

/* This function splits string "line" into separate tokens, delimited by
 * characters in string "delimiters" (see strtok). Maximum "maxlen" tokens 
 * are written into array. If there are more that "maxlen" tokens on the line,
 * this function returns -1. Otherwise it returns the number of tokens. */

int split_line(char *line, char **array, int maxlen, char *delimiters)
{
	char *tok;
	int numtok;

	numtok=0;

	if(line==NULL) {
		/* empty line */
		return 0;
	}

	while(1) {
		if(numtok==0) {
			tok=strtok(line, delimiters);
		} else {
			tok=strtok(NULL, delimiters);
		}

		if(tok==NULL) {
			return numtok;
		}

		if(numtok>=maxlen) return -1;
	
		array[numtok]=tok;
		numtok++;
	}
}

/* Returns file size in bytes */
size_t file_len(char *path)
{
	struct stat st;

	stat(path, &st);

	return(st.st_size);
}
