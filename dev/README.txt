These are some dev tools we used. Mainly a dissasembler for the z80
so we could take a look at the code in the eprom of the tnc to see
what exactly it was doing. In this way we could determine what i/o
it was configuring and how it was configured by looking at the
instructions that wrote to the i/o. 

We also discovered in the code was some strange encoding of some of
the text that was used. Not sure why this was done maybe to thwart
anyone changing it. The code rot.c and tor.c were written to mimic
and test what was being done with bit shifting etc to accomplish
this. In the emulator we write nop instructions where these functions
are so that we can insert any plain text we want into the eprom
image. For example when someone logs off the bbs we can say "see ya!"

