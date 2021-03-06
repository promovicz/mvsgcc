//GCCGEN   JOB CLASS=C,REGION=0K,TIME=1440
//*
//CREATE   PROC GCCPREF='GCC'
//DELETE   EXEC PGM=IEFBR14
//DD11     DD DSN=&GCCPREF..NCALIB,DISP=(MOD,DELETE),
//       UNIT=SYSALLDA,SPACE=(TRK,(0))
//*
//ALLOC    EXEC PGM=IEFBR14
//DD11     DD DSN=&GCCPREF..NCALIB,DISP=(,CATLG),
// DCB=(RECFM=U,LRECL=0,BLKSIZE=6144),
// SPACE=(6144,(1000,1000,44)),UNIT=SYSALLDA
//         PEND
//*
//ST3CMP   PROC GCCPREF='GCC',MEMBER='',
// PDPPREF='PDPCLIB',
// COS1='-Os -S -ansi -pedantic-errors -remap -DHAVE_CONFIG_H',
// COS2='-DIN_GCC -DPUREISO -o dd:out -'
//*
//COMP     EXEC PGM=STAGE2,
// PARM='&COS1 &COS2'
//STEPLIB  DD DSN=&GCCPREF..TMPLOAD,DISP=SHR
//SYSIN    DD DSN=&GCCPREF..SOURCE(&MEMBER),DISP=SHR
//INCLUDE  DD DSN=&GCCPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..INCLUDE,DISP=SHR
//SYSINCL  DD DSN=&GCCPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..INCLUDE,DISP=SHR
//OUT      DD DSN=&GCCPREF..S3(&MEMBER),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//*
//ASM      EXEC PGM=ASMA90,
//            PARM='DECK,NOLIST',
//            COND=(4,LT,COMP)
//SYSLIB   DD DSN=SYS1.MACLIB,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..MACLIB,DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(20,10))
//SYSUT2   DD UNIT=SYSALLDA,SPACE=(CYL,(10,10))
//SYSUT3   DD UNIT=SYSALLDA,SPACE=(CYL,(10,10))
//SYSPRINT DD SYSOUT=*
//SYSLIN   DD DUMMY
//SYSGO    DD DUMMY
//SYSPUNCH DD DSN=&&OBJSET,UNIT=SYSALLDA,SPACE=(80,(4000,4000)),
//            DISP=(,PASS)
//SYSIN    DD DSN=&GCCPREF..S3(&MEMBER),DISP=SHR
//*
//LKED     EXEC PGM=IEWL,PARM='NCAL',
//            COND=((4,LT,COMP),(4,LT,ASM))
//SYSLIN   DD DSN=&&OBJSET,DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=&GCCPREF..NCALIB(&MEMBER),DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSPRINT DD SYSOUT=*
//         PEND
//*
//NEWNCAL  EXEC CREATE
//*
//ALIAS    EXEC ST3CMP,MEMBER=ALIAS
//ALLOCA   EXEC ST3CMP,MEMBER=ALLOCA
//ASPRINTF EXEC ST3CMP,MEMBER=ASPRINTF
//ATTRIBS  EXEC ST3CMP,MEMBER=ATTRIBS
//BB@REORD EXEC ST3CMP,MEMBER=BB@REORD
//BITMAP   EXEC ST3CMP,MEMBER=BITMAP
//BUILTINS EXEC ST3CMP,MEMBER=BUILTINS
//C@AUX@IN EXEC ST3CMP,MEMBER=C@AUX@IN
//C@COMMON EXEC ST3CMP,MEMBER=C@COMMON
//C@CONVER EXEC ST3CMP,MEMBER=C@CONVER
//C@DECL   EXEC ST3CMP,MEMBER=C@DECL
//C@ERRORS EXEC ST3CMP,MEMBER=C@ERRORS
//C@FORMAT EXEC ST3CMP,MEMBER=C@FORMAT
//C@LANG   EXEC ST3CMP,MEMBER=C@LANG
//C@LEX    EXEC ST3CMP,MEMBER=C@LEX
//C@OBJC@C EXEC ST3CMP,MEMBER=C@OBJC@C
//C@PARSE  EXEC ST3CMP,MEMBER=C@PARSE
//C@PRAGMA EXEC ST3CMP,MEMBER=C@PRAGMA
//C@SEMANT EXEC ST3CMP,MEMBER=C@SEMANT
//C@TYPECK EXEC ST3CMP,MEMBER=C@TYPECK
//CALLER@S EXEC ST3CMP,MEMBER=CALLER@S
//CALLS    EXEC ST3CMP,MEMBER=CALLS
//CFG      EXEC ST3CMP,MEMBER=CFG
//CFGANAL  EXEC ST3CMP,MEMBER=CFGANAL
//CFGBUILD EXEC ST3CMP,MEMBER=CFGBUILD
//CFGCLEAN EXEC ST3CMP,MEMBER=CFGCLEAN
//CFGLAYOU EXEC ST3CMP,MEMBER=CFGLAYOU
//CFGLOOP  EXEC ST3CMP,MEMBER=CFGLOOP
//CFGRTL   EXEC ST3CMP,MEMBER=CFGRTL
//COMBINE  EXEC ST3CMP,MEMBER=COMBINE
//CONFLICT EXEC ST3CMP,MEMBER=CONFLICT
//CONVERT  EXEC ST3CMP,MEMBER=CONVERT
//CPPDEFAU EXEC ST3CMP,MEMBER=CPPDEFAU
//CPPERROR EXEC ST3CMP,MEMBER=CPPERROR
//CPPEXP   EXEC ST3CMP,MEMBER=CPPEXP
//CPPFILES EXEC ST3CMP,MEMBER=CPPFILES
//CPPHASH  EXEC ST3CMP,MEMBER=CPPHASH
//CPPINIT  EXEC ST3CMP,MEMBER=CPPINIT
//CPPLEX   EXEC ST3CMP,MEMBER=CPPLEX
//CPPLIB   EXEC ST3CMP,MEMBER=CPPLIB
//CPPMACRO EXEC ST3CMP,MEMBER=CPPMACRO
//CPPMAIN  EXEC ST3CMP,MEMBER=CPPMAIN
//CPPSPEC  EXEC ST3CMP,MEMBER=CPPSPEC
//CSE      EXEC ST3CMP,MEMBER=CSE
//CSELIB   EXEC ST3CMP,MEMBER=CSELIB
//DEBUG    EXEC ST3CMP,MEMBER=DEBUG
//DEPENDEN EXEC ST3CMP,MEMBER=DEPENDEN
//DF       EXEC ST3CMP,MEMBER=DF
//DIAGNOST EXEC ST3CMP,MEMBER=DIAGNOST
//DOMINANC EXEC ST3CMP,MEMBER=DOMINANC
//DWARF2AS EXEC ST3CMP,MEMBER=DWARF2AS
//DWARF2OU EXEC ST3CMP,MEMBER=DWARF2OU
//EMIT@RTL EXEC ST3CMP,MEMBER=EMIT@RTL
//EXCEPT   EXEC ST3CMP,MEMBER=EXCEPT
//EXPLOW   EXEC ST3CMP,MEMBER=EXPLOW
//EXPMED   EXEC ST3CMP,MEMBER=EXPMED
//EXPR     EXEC ST3CMP,MEMBER=EXPR
//FIBHEAP  EXEC ST3CMP,MEMBER=FIBHEAP
//FINAL    EXEC ST3CMP,MEMBER=FINAL
//FLOW     EXEC ST3CMP,MEMBER=FLOW
//FOLD@CON EXEC ST3CMP,MEMBER=FOLD@CON
//FUNCTION EXEC ST3CMP,MEMBER=FUNCTION
//
