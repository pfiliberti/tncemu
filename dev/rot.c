#include <stdio.h>
unsigned char data [] = { 0x2a, 0x96, 0x4d, 0xf9, 0xb0, 0x28 , 0xe8, 
                          0xdf, 0xb3, 0x07, 0xcc, 0xbd, 0x80, 0x20 };

/*unsigned char data [] = { 0x62, 0x06, 0xec, 0xa8, 0x28, 0x7d, 0xea, 0x89,
                          0x3a, 0x56, 0x0e,  0x9d, 0x80, 0x20 };*/

main()
{

unsigned char w,carry;
int x = 0;
int y=13;
int z;

   while (y) {
    w = data[x];
    printf("w=%x ",w);
    
    if(y & 1)
    {
      for (z = 0; z< y; z++)
      {
        carry=0;
        if(w & 0x80) carry = 1;
        w = w << 1;
        w = w | carry;
      }
    }
    else
    {
      for (z = 0; z< y; z++)
      {
        carry=0;
        if(w & 1) carry = 0x80;
        w = w >> 1;
        w = w | carry;
      }
    }
    printf("shf_w=%x ",w);

    w = w ^ y;
    printf ("%x=%c\n",w,w);
    x++;
    y--;
  };


}
