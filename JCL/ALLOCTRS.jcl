//ALLOCDS JOB (ACCT),'ALLOCATION JOB',NOTIFY=&SYSUID,
//            CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1)
//STEP1  EXEC PGM=IEFBR14
//DSSFILE1 DD DISP=(NEW,CATLG,DELETE),
//            DSN=CBL.TXT,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80),
//            SPACE=(CYL,(200,200),RLSE),
//            UNIT=3390,VOL=SER=USER02