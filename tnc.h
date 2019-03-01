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

/* Array to store vars that we have discovered in emulation ram that 
   pertain to certain kiss paramters. Index of array is a follows:
   0 = TXDELAY
   1 = Persistence
   2 = SLOTTIME
   3 = TXTAIL
*/
#define NUM_KISS_PARMS 4
unsigned char ax25_parms[NUM_KISS_PARMS] = {0,0,0,0};
unsigned int ax25_parm_location[NUM_KISS_PARMS] = {0x3FDA, 0x4033, 0x4035, 0x3FD7};

#define __TNC_INCLUDED__

#endif
