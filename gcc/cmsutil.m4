:READ  PDPTOP   COPY     A
undivert(pdp370.mac):READ  PDPPRLG  MACRO    A
undivert(pdpprlg.mac):READ  PDPEPIL  MACRO    A
undivert(pdpepil.mac):READ  CMSSTART ASSEMBLE A
undivert(cmsstart.asm):READ  CMSSUPA  ASSEMBLE A
undivert(cmssupa.asm):READ  START    ASSEMBLE A
undivert(start.s):READ  STDIO    ASSEMBLE A
undivert(stdio.s):READ  STDLIB   ASSEMBLE A
undivert(stdlib.s):READ  CTYPE    ASSEMBLE A
undivert(ctype.s):READ  STRING   ASSEMBLE A
undivert(string.s):READ  TIME     ASSEMBLE A
undivert(time.s):READ  ERRNO    ASSEMBLE A
undivert(errno.s):READ  ASSERT   ASSEMBLE A
undivert(assert.s):READ  LOCALE   ASSEMBLE A
undivert(locale.s):READ  MATH     ASSEMBLE A
undivert(math.s):READ  SETJMP   ASSEMBLE A
undivert(setjmp.s):READ  SIGNAL   ASSEMBLE A
undivert(signal.s):READ  MVSUNZIP ASSEMBLE A
undivert(mvsunzip.s):READ  HEXDUMP  ASSEMBLE A
undivert(hexdump.s):READ  MVSENDEC ASSEMBLE A
undivert(mvsendec.s):READ  CPYFIL   ASSEMBLE A
undivert(cpyfil.s):READ  CMSUTIL  EXEC     A
undivert(cmsutil.exec):READ  RUNSPOOL EXEC     A
undivert(runspool.exec)