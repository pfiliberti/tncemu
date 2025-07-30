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

#define __TNC_INCLUDED__

#endif
