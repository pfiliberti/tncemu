/******************************************************************************/
/* Kiss Protocol Functions                                                    */
/******************************************************************************/
#include "kiss.h"

/******************************************************************************/
/* KISS Pack encapsulates ax25_block with kiss protocol                     */
/******************************************************************************/
void kiss_pack(unsigned char *kiss_block, unsigned char *ax25_block, int *size)
{
    size_t  new_size = 0, i;

    kiss_block[new_size++] = KISS_FEND; // FEND

    for (i=0; i<*size; i++)
    {
        if (ax25_block[i] == KISS_FEND) // FEND
        {
            kiss_block[new_size++] = KISS_FESC; // FESC
            kiss_block[new_size++] = KISS_TFEND; // TFEND
        }
        else if (ax25_block[i] == KISS_FESC) // FESC
        {
            kiss_block[new_size++] = KISS_FESC; // FESC
            kiss_block[new_size++] = KISS_TFESC; // TFESC
        }
        else
        {
            kiss_block[new_size++] = ax25_block[i];
        }
    }

    kiss_block[new_size++] = KISS_FEND; // FEND
    *size = new_size;
}

/******************************************************************************/
/* KISS Unpack removes kiss protocol and leaves buffer with just ax25 data    */
/******************************************************************************/
void kiss_unpack(unsigned char *kiss_block, unsigned char *ax25_block, int *size)
{
    size_t  new_size = 0, i;
    uint8_t fesc = 0;

    for (i=1; i< *size; i++)
    {
        if (kiss_block[i] == KISS_FESC) // FESC
        {
            fesc = 1;
            continue;
        }
        if (fesc)
        {
            if (kiss_block[i] == KISS_TFEND) // TFEND
            {
                ax25_block[new_size++] = KISS_FEND; // FEND
            }
            else if (kiss_block[i] == KISS_TFESC) // TFESC
            {
                ax25_block[new_size++] = KISS_FESC; // FESC    
            }

             fesc = 0;
             continue;
        }

        ax25_block[new_size++] = kiss_block[i];
    }

    *size = new_size;
}
