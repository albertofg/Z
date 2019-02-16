//CREAZFS JOB 'Alberto',CLASS=A,NOTIFY=&SYSUID,MSGCLASS=H
//*  AFTER CREATE THE CLUSTER, YOU HAVE TO MOUNT*/
//* TO HAVE IT NEXT IPL, ADD TO BPXPRM00   */
//*   MOUNT    FILESYSTEM('ROCKET.ZFS') */
//*         TYPE(ZFS)                   */
//*         MODE(RDWR) NOAUTOMOVE       */
//*         MOUNTPOINT('/u')   */
//ZFSALLOC EXEC PGM=IDCAMS,REGION=0M
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
    DEFINE CLUSTER( -
             NAME(NODEJS.ZFS) -
             VOLUME(ZOWE01) -
             LINEAR -
             CYL(200 200) -
             SHAREOPTIONS(3) -
                  )
/*
//ZFSFORMT EXEC PGM=IOEAGFMT,REGION=0M,COND=(0,LT,ZFSALLOC),
//            PARM='-aggregate NODEJS.ZFS -compat'
//SYSPRINT DD SYSOUT=*
