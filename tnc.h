/* tnc.h
 * Header for tnc emulator.
 *
 * This program is free, do whatever you want with it.
 */

#ifndef __TNC_INCLUDED__

#define VERSION_INFO "1.0"

/* Additional Z80_STATE status flag to request emulation termination. */
                                
#define FLAG_STOP_EMULATION     (1 << 31)
//#define DEBUG 1

extern unsigned char *Rom;

/*extern unsigned char	Rom[1 << 15]; */
extern unsigned char	Ram[1 << 15];

extern void     SystemCall (Z80_STATE *state);
extern int IO_in (int);
extern void IO_out (int, int );
extern unsigned int Memory_Read_Byte(unsigned int);
extern unsigned int Memory_Read_Word(unsigned int);
extern void Memory_Write_Byte(unsigned int, unsigned int);
extern void Memory_Write_Word(unsigned int, unsigned int);

#define __TNC_INCLUDED__

#endif
