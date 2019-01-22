/* sio.h
 * Header for u21 tnc emulator SIO Data Emulator.
 *
 * This program is free, do whatever you want with it.
 */

#ifndef __U21SIO_INCLUDED__

typedef struct {
                unsigned char registers[8];
                unsigned char cmd_ptr;
                unsigned char state;
             } IC_SIO;

void SIO_Reset( IC_SIO * );
void SIO_Cmd_Write (IC_SIO *, unsigned char);
int SIO_Cmd_Read (IC_SIO  * );

#define __U21SIO_INCLUDED__

#endif
