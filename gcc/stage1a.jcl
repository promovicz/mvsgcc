//GCCGEN   JOB CLASS=C,REGION=0K
//*
//* This is the first job of the stage 1 build
//* Note that PDPCLIB is hardcoded in two places and you
//* will need to adjust that.
//*
//ST1CMP   PROC GCCPREF='GCC',MEMBER='',
//         PDPPREF='PDPCLIB'
//ASM      EXEC PGM=ASMA90,
//         PARM='DECK,NOLIST'
//SYSLIB   DD DSN=SYS1.MACLIB,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=SYS1.MODGEN,DISP=SHR
//         DD DSN=&PDPPREF..MACLIB,DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(20,10))
//SYSUT2   DD UNIT=SYSALLDA,SPACE=(CYL,(10,10))
//SYSUT3   DD UNIT=SYSALLDA,SPACE=(CYL,(10,10))
//SYSPRINT DD SYSOUT=*
//SYSLIN   DD DUMMY
//SYSGO    DD DUMMY
//SYSPUNCH DD DSN=&&OBJSET,UNIT=SYSALLDA,SPACE=(80,(4000,4000)),
//            DISP=(,PASS)
//SYSIN    DD DSN=&GCCPREF..S(&MEMBER),DISP=SHR
//LKED     EXEC PGM=IEWL,PARM='NCAL,LET',
//             COND=(4,LT,ASM)
//SYSLIN   DD DSN=&&OBJSET,DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=&GCCPREF..NCALIB(&MEMBER),DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSPRINT DD SYSOUT=*
//         PEND
//MVSSTART EXEC ST1CMP,MEMBER=MVSSTART
//SYSIN    DD   DSN=PDPCLIB.SOURCE(MVSSTART),DISP=SHR
//MVSSUPA  EXEC ST1CMP,MEMBER=MVSSUPA
//SYSIN    DD   DSN=PDPCLIB.SOURCE(MVSSUPA),DISP=SHR
//START    EXEC ST1CMP,MEMBER=START
//STDIO    EXEC ST1CMP,MEMBER=STDIO
//STDLIB   EXEC ST1CMP,MEMBER=STDLIB
//CTYPE    EXEC ST1CMP,MEMBER=CTYPE
//STRING   EXEC ST1CMP,MEMBER=STRING
//TIME     EXEC ST1CMP,MEMBER=TIME
//ERRNO    EXEC ST1CMP,MEMBER=ERRNO
//ASSERT   EXEC ST1CMP,MEMBER=ASSERT
//LOCALE   EXEC ST1CMP,MEMBER=LOCALE
//MATH     EXEC ST1CMP,MEMBER=MATH  
//SETJMP   EXEC ST1CMP,MEMBER=SETJMP
//SIGNAL   EXEC ST1CMP,MEMBER=SIGNAL
//@@MEMMGR EXEC ST1CMP,MEMBER=@@MEMMGR
//ALIAS    EXEC ST1CMP,MEMBER=ALIAS        
//ATTRIBS  EXEC ST1CMP,MEMBER=ATTRIBS        
//BB@REORD EXEC ST1CMP,MEMBER=BB@REORD        
//BITMAP   EXEC ST1CMP,MEMBER=BITMAP        
//BUILTINS EXEC ST1CMP,MEMBER=BUILTINS        
//C@AUX@IN EXEC ST1CMP,MEMBER=C@AUX@IN        
//C@COMMON EXEC ST1CMP,MEMBER=C@COMMON        
//C@CONVER EXEC ST1CMP,MEMBER=C@CONVER        
//C@DECL   EXEC ST1CMP,MEMBER=C@DECL        
//C@ERRORS EXEC ST1CMP,MEMBER=C@ERRORS        
//C@FORMAT EXEC ST1CMP,MEMBER=C@FORMAT        
//C@LANG   EXEC ST1CMP,MEMBER=C@LANG        
//C@LEX    EXEC ST1CMP,MEMBER=C@LEX        
//C@OBJC@C EXEC ST1CMP,MEMBER=C@OBJC@C        
//C@PARSE  EXEC ST1CMP,MEMBER=C@PARSE        
//C@PRAGMA EXEC ST1CMP,MEMBER=C@PRAGMA        
//C@SEMANT EXEC ST1CMP,MEMBER=C@SEMANT        
//C@TYPECK EXEC ST1CMP,MEMBER=C@TYPECK        
//CALLER@S EXEC ST1CMP,MEMBER=CALLER@S        
//CALLS    EXEC ST1CMP,MEMBER=CALLS        
//CFG      EXEC ST1CMP,MEMBER=CFG        
//CFGANAL  EXEC ST1CMP,MEMBER=CFGANAL        
//CFGBUILD EXEC ST1CMP,MEMBER=CFGBUILD        
//CFGCLEAN EXEC ST1CMP,MEMBER=CFGCLEAN        
//CFGLAYOU EXEC ST1CMP,MEMBER=CFGLAYOU        
//CFGLOOP  EXEC ST1CMP,MEMBER=CFGLOOP        
//CFGRTL   EXEC ST1CMP,MEMBER=CFGRTL        
//COMBINE  EXEC ST1CMP,MEMBER=COMBINE        
//CONFLICT EXEC ST1CMP,MEMBER=CONFLICT        
//CONVERT  EXEC ST1CMP,MEMBER=CONVERT        
//CPPDEFAU EXEC ST1CMP,MEMBER=CPPDEFAU        
//CPPERROR EXEC ST1CMP,MEMBER=CPPERROR        
//CPPEXP   EXEC ST1CMP,MEMBER=CPPEXP        
//CPPFILES EXEC ST1CMP,MEMBER=CPPFILES        
//CPPHASH  EXEC ST1CMP,MEMBER=CPPHASH        
//CPPINIT  EXEC ST1CMP,MEMBER=CPPINIT        
//CPPLEX   EXEC ST1CMP,MEMBER=CPPLEX        
//CPPLIB   EXEC ST1CMP,MEMBER=CPPLIB        
//CPPMACRO EXEC ST1CMP,MEMBER=CPPMACRO        
//CPPMAIN  EXEC ST1CMP,MEMBER=CPPMAIN        
//CPPSPEC  EXEC ST1CMP,MEMBER=CPPSPEC        
//CSE      EXEC ST1CMP,MEMBER=CSE        
//CSELIB   EXEC ST1CMP,MEMBER=CSELIB        
//DEBUG    EXEC ST1CMP,MEMBER=DEBUG        
//DEPENDEN EXEC ST1CMP,MEMBER=DEPENDEN        
//DF       EXEC ST1CMP,MEMBER=DF        
//DIAGNOST EXEC ST1CMP,MEMBER=DIAGNOST        
//DOMINANC EXEC ST1CMP,MEMBER=DOMINANC        
//DWARF2AS EXEC ST1CMP,MEMBER=DWARF2AS        
//DWARF2OU EXEC ST1CMP,MEMBER=DWARF2OU        
//EMIT@RTL EXEC ST1CMP,MEMBER=EMIT@RTL        
//EXCEPT   EXEC ST1CMP,MEMBER=EXCEPT        
//EXPLOW   EXEC ST1CMP,MEMBER=EXPLOW        
//EXPMED   EXEC ST1CMP,MEMBER=EXPMED        
//EXPR     EXEC ST1CMP,MEMBER=EXPR        
//FINAL    EXEC ST1CMP,MEMBER=FINAL        
//FLOW     EXEC ST1CMP,MEMBER=FLOW        
//FOLD@CON EXEC ST1CMP,MEMBER=FOLD@CON        
//FUNCTION EXEC ST1CMP,MEMBER=FUNCTION        
//GCC      EXEC ST1CMP,MEMBER=GCC        
//GCCSPEC  EXEC ST1CMP,MEMBER=GCCSPEC        
//GCSE     EXEC ST1CMP,MEMBER=GCSE        
//GENRTL   EXEC ST1CMP,MEMBER=GENRTL        
//GGC@COMM EXEC ST1CMP,MEMBER=GGC@COMM        
//GGC@PAGE EXEC ST1CMP,MEMBER=GGC@PAGE        
//GLOBAL   EXEC ST1CMP,MEMBER=GLOBAL        
//GRAPH    EXEC ST1CMP,MEMBER=GRAPH        
//HASH     EXEC ST1CMP,MEMBER=HASH        
//HASHTABL EXEC ST1CMP,MEMBER=HASHTABL        
//HOOKS    EXEC ST1CMP,MEMBER=HOOKS        
//IFCVT    EXEC ST1CMP,MEMBER=IFCVT        
//