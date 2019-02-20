//CREAXML JOB (ACCT),MSGCLASS=H,NOTIFY=&SYSUID.
//STEP1 EXEC PGM=ICEGENER
//SYSUT1 DD *
   <?xml version="1.0"?>
   <service name="CMPONENT">
    <scope name="PKG_COMP">
          <message name="LIST">
          <header>
          <subsys>8</subsys>
          <product>CMN</product>
          </header>
          <request>
          <package>CISQ000030</package>
          </request>
          </message>
    </scope>
   </service>
/*
//SYSUT2 DD DISP=(SHR,KEEP),UNIT=SYSALLDA,
//        DSN=DESA.LIBWAHA.ENTRADA(ENTRADA)
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY
/*