CC = gcc
CFLAGS = -Wall -O3 -fomit-frame-pointer -mtune=native
ROMIMAGE = hk21rom.bin

ifeq ($(MACHTYPE),pi)
DEFINES = -DSPEED_PI
endif

all: rom ram tnc

crc: crc

tables.h: ./z80emu/maketables.c
	$(CC) $(CFLAGS) $< -o ./z80emu/maketables
	./z80emu/maketables > ./z80emu/$@

z80emu.o: ./z80emu/z80emu.c ./z80emu/z80emu.h ./z80emu/instructions.h \
	./z80emu/macros.h ./z80emu/tables.h
	$(CC) $(CFLAGS) -c $< -o ./z80emu/z80emu.o

tnc.o: tnc.c ./z80emu/z80emu.h
	$(CC) $(CFLAGS) -c $<

crc.o: crc.c crc.h
	$(CC) $(CFLAGS) -c $<

OBJECT_FILES = tnc.o ./z80emu/z80emu.o crc.o

tnc:	$(OBJECT_FILES)
	$(CC) $(OBJECT_FILES) rom.o -o $@

crc:	crc.o
	$(CC) ($CFLAGS) crc.o -o $@

ram:
	cp ./binary_dumps/tnc.ram .

rom:
ifeq ($(MACHTYPE),pi)
	/usr/bin/objcopy --input binary --output elf32-littlearm \
	--binary-architecture arm --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
else
	/usr/bin/objcopy --input binary --output elf32-i386 \
	 --binary-architecture i386 --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
endif

clean:
	rm -f tnc tnc.ram *.o ./z80emu/*.o 

