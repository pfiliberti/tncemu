# Makefile using z80asm
# The output of the assembler can be parsed by vim or emacs.

EXTRA_DIST = 	test.bin \
		test.blocks \
		stress \
		labelsdd.bin \
		labelsdd.asm.vetted \
		jrwrap.bin \
		jrwrap.asm.vetted

TEST_CASES =	test.asm
	
test: $(TEST_CASES) labelsdd jrwrap stress_test cleantest

stress_test: stress
	./stress $(top_builddir)/src/z80dasm 20

%.asm: %.bin %.blocks
	$(top_builddir)/src/z80dasm -at $(srcdir)/$< -o $@
	z80asm $@ -o $<-generated
	diff $<-generated $(srcdir)/$<
	$(top_builddir)/src/z80dasm -atl $(srcdir)/$< -b $*.blocks -o $@
	z80asm $@ -o $<-generated
	diff $<-generated $(srcdir)/$<

labelsdd: labelsdd.bin labelsdd.asm.vetted
	$(top_builddir)/src/z80dasm -g0 -l labelsdd.bin -o labelsdd.asm
	diff -I z80dasm labelsdd.asm.vetted labelsdd.asm

jrwrap: jrwrap.bin jrwrap.asm.vetted
	$(top_builddir)/src/z80dasm -g0 -l jrwrap.bin -o jrwrap.asm
	diff -I z80dasm jrwrap.asm.vetted jrwrap.asm

cleantest:
	rm -f *.asm *.bin-generated
	rm -f stress.error

.PHONY: test stress_test labelsdd jrwrap
