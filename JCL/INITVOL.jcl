//J01INIT JOB (ACCT),MSGCLASS=H,NOTIFY=&SYSUID.,REGION=0M
//* MOD-3: VTOC(0,1,974) INDEX(65,0,50)
//* MOD-9: VTOC(0,1,2939) INDEX(196,0,150)
//FORMAT EXEC PGM=ICKDSF
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
     INIT UNIT(0A9F) NOVALIDATE NVFY VOLID(USER02) PURGE -
     VTOC(0,1,2939) INDEX(196,0,150)
/*