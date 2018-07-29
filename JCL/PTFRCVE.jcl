//IDZPTF JOB (ACCT),MSGCLASS=H,NOTIFY=&SYSUID.
//*
//*******************************************************************
//*            TURN CAPS OFF AS THIS JOB CONTAINS CASE
//*                 SENSITIVE CONTROL INFORMATION.
//********************************************************************
//*
//* This job will pull the service package from the IBM server to
//* your host system.
//*
//* Change the JOB card above to match your installations
//* requirements.
//*
//* SMP/E zone-related files are assumed to be defined in your
//* global CSI.  See the SMP/E Commands manual for a list of
//* the required DDDEF entries.
//*
//*
//* NOTE 1: Change smpe.global.csi to the name of the SMP/E
//*         GLOBAL CSI you intend to use.
//*
//* NOTE 2: Change the SMPNTS DD statement to a directory name
//*         on your host system.
//*
//* NOTE 3: Uncomment/Update the SMPWKDIR DD statements if you
//*         intend on using a separate path/file system for
//*         workspace. SMP/E will use that directory to unzip
//*         the files during RECEIVE processing after which they
//*         will be deleted from that path.
//*
//* NOTE 4: Uncomment/update the SMPCPATH DD
//*         Statement to point to the SMP/E Class libraries.
//*
//* NOTE 5: If you only want to transfer the package back to
//*         your host but do not want to RECEIVE the package into the
//*         global zone you specified on the SMPCSI DD statement, then
//*         uncomment the TRANSFERONLY operand on the RECEIVE command.
//*         The files in the package will be transferred to your
//*         host system without being RECEIVED.  You can later
//*         perform a RECEIVE FROMNTS using the RCVPDO sample job
//*         provided in the RIMLIB dataset to do the actual RECEIVE.
//*
//* NOTE 6: Do not remove or comment out the javahome, downloadmethod,
//*         or downloadkeyring attributes. They are attributes that
//*         are required by SMP/E and must be assigned values.
//*
//* NOTE 7: Specify HTTP or SOCKS Proxy Server information if needed.
//*
//* For more information on the specific security set up tasks that
//* need to be completed on your system to support HTTP Secure (HTTPS),
//* visit the Shopz home page at:
//* http://www.ibm.com/software/shopzseries/ShopzSeries_public.wss and
//* in the "Using Shopz" box near the bottom of the page.
//*
//SMPER1  EXEC PGM=GIMSMP,REGION=0M,
//             PARM='PROCESS=WAIT'
//SMPCSI   DD  DISP=SHR,DSN=FELE10.GLOBAL.CSI     <=== NOTE 1
//SMPNTS   DD  PATHDISP=KEEP,
//             PATH='/u/smpe2/smpnts/'
//SMPWKDIR DD  PATHDISP=KEEP,
//             PATH='/u/smpe2/workdir/'
//SMPCPATH DD PATH='/usr/lpp/smp/classes/'
//SMPOUT   DD  SYSOUT=*
//SMPRPT   DD  SYSOUT=*
//SMPLIST  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SMPCNTL  DD  *
  SET      BOUNDARY (GLOBAL) .
  RECEIVE
        FROMNETWORK(
          SERVER(SERVINFO)
     /*   TRANSFERONLY                   <=== NOTE 5 */
          CLIENT(CLNTINFO)
          )
            .
/*
//*
//* The information provided in the SERVINFO DD has
//* been customized for your order.  Please do not
//* alter this information.
//*
//SERVINFO DD *
  <SERVER
    host="deliverycb-mul.dhe.ibm.com"
    user="S158248k"
    pw="xxxxxxx"
    >
    <PACKAGE
      file="2018072772780/PROD/GIMPAF.XML"
      hash="2C863CFD8E3B9CAFBF65F87CF0600DCF2FD6C177"
      id="U01995948"
      >
    </PACKAGE>
  </SERVER>
/*
//*
//CLNTINFO DD *
<!--                                                                 -->
<!-- NOTE 6:                                                         -->
<!-- Specify a java home directory for the javahome attribute value. -->
<!-- Specify the security manager keyring or CERTAUTH virtual        -->
<!-- keyring or the keyword javatruststore for the downloadkeyring   -->
<!-- attribute value.                                                -->
<!--                                                                 -->
<CLIENT
javahome="/usr/lpp/java/J8.0_64/"
downloadmethod="https"
downloadkeyring="javatruststore">
</CLIENT>
/*
<!--                                                                 -->
<!--  NOTE 7:                                                        -->
<!--  All HTTP and SOCKS Proxy Server tags below are commented out.  -->
<!--  Remove the XML comment start and end tags to specify HTTP or   -->
<!--  SOCKS Proxy Server information and add them before the ending  -->
<!--  CLIENT tag above. The tags are optional and are defined by     -->
<!--  SMP/E.                                                         -->
<!--  For information about them, see SMP/E Commands.                -->
<!--                                                                 -->
<!-- <HTTPPROXY host="server name|server ip address"                 -->
<!--  user="userid" pw="password" port="number">                     -->
<!-- </HTTPPROXY>                                                    -->
<!--                                                                 -->
<!-- <HTTPSOCKSPROXY host="server name|server ip address"            -->
<!--   user="userid" pw="password" port="number">                    -->
<!-- </HTTPSOCKSPROXY>                                               -->
<!--                                                                 -->
//*