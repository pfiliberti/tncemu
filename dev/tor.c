#include <stdio.h>
unsigned char data [] = "All Yur Base^";


main()
{

unsigned char w,carry_in,carry_out;
int x = 0;
int y=13;
int z;

  carry_in=0;

  do {
    w = data[x];
    if (w == '^') w=0;

    printf("w=%x ",w);

    w = w ^ y;
    if( (y & 1) == 0)
    {
      for (z = 0; z< y; z++)
      {
        carry_in=0;
        if(w & 0x80) carry_in = 1;
        w = w << 1;
        w = w | carry_in;
      }
    }
    else
    {
      for (z = 0; z< y; z++)
      {
        carry_in=0;
        if(w & 1) carry_in = 0x80;
        w = w >> 1;
        w = w | carry_in;
      }
    }
    printf("shf_w=%x\n",w);

    x++;
    y--;
  } while(y);


}
