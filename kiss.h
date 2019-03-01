/******************************************************************************/
/* Kiss Protocol Function Header                                              */
/******************************************************************************/
#ifndef __TNC_INCLUDED__
#include <stdint.h>
#include <stdlib.h>

/* Kiss Protocol Definitions */
#define KISS_FEND  0xC0
#define KISS_TFEND 0xDC
#define KISS_FESC  0xDB
#define KISS_TFESC 0xDD

void kiss_unpack(unsigned char *kiss_block, unsigned char *ax25_block, int *size);
void kiss_pack(unsigned char *kiss_block, unsigned char *ax25_block, int *size);

/* Kiss protocol has the ability to set certain ax25 parms by changing the 1st
   byte sent from 0 = data to one of the following 

   Command        Function         Comments  
   0           Data frame       The  rest  of the frame is data to
                                be sent on the HDLC channel.   

   1           TXDELAY          The next  byte  is  the  transmitter
                                keyup  delay  in  10 ms units.  
                		The default start-up value is 50
                                (i.e., 500 ms). 

   2           P                The next byte  is  the  persistence
                                parameter,  p, scaled to the range 
                                0 - 255 with the following
                                formula:

                                         P = p * 256 - 1 

                                The  default  value  is  P  =  63  
                                (i.e.,  p  =  0.25).  
 
   3           SlotTime         The next byte is the slot interval 
                                in 10 ms units.
                                The default is 10 (i.e., 100ms). 

   4           TXtail           The next byte is the time to hold 
                                up the TX after the FCS has been 
                                sent, in 10 ms units.  This command
                                is obsolete, and is included  here 
                                only for  compatibility  with  some
                                existing  implementations.  
 
   5          FullDuplex        The next byte is 0 for half duplex,
                                nonzero  for full  duplex.  
                                The  default  is  0  
                                (i.e.,  half  duplex).  

   6          SetHardware       Specific for each TNC.  In the 
                                TNC-1, this command  sets  the 
                                modem speed.  Other implementations
                                may use this function  for   other
                                hardware-specific   functions.  
    
   FF         Return            Exit KISS and return control to a 
                                higher-level program. This is useful
                                only when KISS is  incorporated  
                                into  the TNC along with other 
                                applications.  
*/


#define __TNC_INCLUDED__

#endif
