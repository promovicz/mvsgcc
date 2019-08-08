//GCCC    PROC PDPPREF='PDPCLIB',GCCPREF='GCC',INFILE='',
//         COPTS='-S',
// COS1='-ansi -pedantic-errors',
// COS2='-o dd:out -'
//*
//COMP     EXEC PGM=GCC,
// PARM='&COPTS &COS1 &COS2'
//STEPLIB  DD DSN=&GCCPREF..LINKLIB,DISP=SHR
//*
//* INCLUDE SHOULD HAVE YOUR OWN HEADERS ADDED
//*
//INCLUDE  DD DSN=&PDPPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//SYSINCL  DD DSN=&PDPPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//SYSIN    DD DSN=&INFILE,DISP=SHR
//OUT      DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//*