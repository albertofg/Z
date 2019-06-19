//*---------------------------------------------------------
//IHSAPACH PROC ACTION='start',
//          DIR='/etc/websrv1',
//          CONF='/u/bjt/itomweb/conf/httpd.conf'
//*---------------------------------------------------------
//IHS      EXEC PGM=BPXBATCH,REGION=0K,TIME=NOLIMIT,
// PARM='SH &DIR/bin/apachectl -k &ACTION -f &CONF -DNO_DETACH',
// MEMLIMIT=512M
//STEPLIB  DD  DSN=SYS1.DSNDBX0.SDSNEXIT,DISP=SHR
//         DD  DSN=SYS1.DSNDBX0.SDSNLOAD,DISP=SHR
//OUTDSC   OUTPUT DEST=HOLD
//SYSPRINT DD SYSOUT=A,OUTPUT=(*.OUTDSC)
//STDOUT   DD  PATH='/u/bjt/itomweb/logs/proc.output',
//         PATHOPTS=(OWRONLY,OCREAT,OTRUNC),
//         PATHMODE=(SIRUSR,SIWUSR,SIRGRP,SIWGRP)
//STDERR   DD  PATH='/u/bjt/itomweb/logs/proc.errors',
//         PATHOPTS=(OWRONLY,OCREAT,OTRUNC),
//         PATHMODE=(SIRUSR,SIWUSR,SIRGRP,SIWGRP)
//         PEND
