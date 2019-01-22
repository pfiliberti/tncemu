#include <stdio.h>

#define MAX_LINE_LEN	1024

struct comm{
	char *com1;
	char *com2;
	int bytes;
	int type;
	int proc;
};

extern int a_address;
extern int a_labels;
extern int a_source;
extern int a_org;
extern int a_zilog;

extern char *a_input;
extern char *a_output;

extern char *a_symoutput;
extern char *a_syminput;

extern char *a_blockfile;

int tosymtab(int *ia, unsigned int prc);

void cmdline(int argc, char **argv);
int msg(int level, const char *format, ...);

/* from dz80dat.c */
extern const char *rarg[];
extern const struct comm comtab[];
extern const char *ed40[];
extern const char *ed50[];
extern const char *ed60[];
extern const char *ed70[];
extern const char *eda0[];
extern const char *edb0[];
