#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "SYNTAX: $0 path-to-z80dasm repeats"
	exit 0
fi

Z80DASM="$1"
REPEATS="$2"
TESTSIZE="16"
FAILED="0"

N="0"

while [ "$N" -lt "$REPEATS" ]; do
	dd if=/dev/urandom of=stress.bin bs=1024 count=$TESTSIZE 2> stress.error
	#$Z80DASM -t -a -g 0x0 stress.bin -o stress.asm 2>> stress.error
	$Z80DASM -l -t -a -g 0x0 stress.bin -o stress.asm 2>> stress.error
	z80asm stress.asm -o stress.bin.new

	if ! diff stress.bin stress.bin.new; then
		hexdump -C stress.bin > stress.hex
		hexdump -C stress.bin.new > stress.hex.new
		diff -u stress.hex stress.hex.new > stress.diff

		mv stress.bin "stress.$N.bin"
		mv stress.asm "stress.$N.asm"
		mv stress.diff "stress.$N.diff"
		mv stress.error "stress.$N.error"

		FAILED=$(($FAILED+1))
		echo -n "x"
	else 
		echo -n "."
	fi
	N=$(($N+1))
done

echo

rm -f stress.bin stress.asm stress.bin.new

cat <<END

Final results of stress testing
===============================

Tested: $REPEATS
Failed: $FAILED
END

if [ "$FAILED" -gt 0 ]; then
	exit 1
else
	exit 0
fi
