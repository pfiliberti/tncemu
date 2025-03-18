CC = gcc
CFLAGS = -Wall -O3 -funroll-loops -fomit-frame-pointer -mtune=native
ROMIMAGE = hk21rom.bin

# Detect architecture automatically using uname
UNAME := $(shell uname -m)

ifeq ($(UNAME),armv7l)
ARCH = arm
endif

ifeq ($(UNAME),aarch64)
ARCH = aarch64
endif

ifeq ($(UNAME),i686)
ARCH = i386
endif

ifeq ($(UNAME),x86_64)
ARCH = x86_64
endif

# If ARCH is still empty, print an error
ifeq ($(ARCH),)
$(error Cannot Determine Architecture! Detected uname: $(UNAME))
endif

$(info Compiling for $(ARCH))

ifeq ($(ARCH),arm)
DEFINES = -DSPEED_PI
endif

all: rom ram tnc

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

kiss.o: kiss.c kiss.h
	$(CC) $(CFLAGS) -c $<

OBJECT_FILES = tnc.o ./z80emu/z80emu.o crc.o kiss.o

tnc: rom.o $(OBJECT_FILES)
	$(CC) $(OBJECT_FILES) rom.o -o $@

crc: crc.o
	$(CC) crc.o -o $@

kiss: kiss.o
	$(CC) kiss.o -o $@

ram:
	cp ./binary_dumps/tnc.ram .

rom:
ifeq ($(ARCH),arm)
	/usr/bin/objcopy --input binary --output elf32-littlearm \
	--binary-architecture arm --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
endif

ifeq ($(ARCH),aarch64)
	/usr/bin/objcopy --input binary --output elf64-littleaarch64 \
	--binary-architecture aarch64 --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
endif

ifeq ($(ARCH),i386)
	/usr/bin/objcopy --input binary --output elf32-i386 \
	--binary-architecture i386 --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
endif

ifeq ($(ARCH),x86_64)
	/usr/bin/objcopy --input binary --output elf64-x86-64 \
	--binary-architecture i386:x86-64 --rename-section \
	.data=.data,alloc,load,data,contents $(ROMIMAGE) rom.o
endif

clean:
	rm -f tnc tnc.ram *.o ./z80emu/*.o 

.PHONY: all clean rom ram

