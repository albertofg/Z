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
             NAME(ROCKET.ZFS) -
             VOLUME(ZDTNFS) -
             LINEAR -
             CYL(200 100) -
             SHAREOPTIONS(3) -
                  )
/*
//ZFSFORMT EXEC PGM=IOEAGFMT,REGION=0M,COND=(0,LT,ZFSALLOC),
//            PARM='-aggregate ROCKET.ZFS -compat'
//SYSPRINT DD SYSOUT=*
