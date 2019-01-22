/* crc.h
 * Header for u21 tnc emulator crc routines
 *
 * This program is free, do whatever you want with it.
 */

#ifndef __U21CRC_INCLUDED__

unsigned short int compute_crc(unsigned char *, int);
unsigned short int pppfcs(unsigned short, unsigned char *, int);
unsigned short int compute_crc(unsigned char *, int);
int ok_crc(unsigned char *, int);

#define __U21CRC_INCLUDED__

#endif
