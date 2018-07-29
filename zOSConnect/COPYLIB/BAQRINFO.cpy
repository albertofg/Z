      *****************************************************************
      * <copyright
      * notice="rm-source-program"
      * pids="5655-CE3"
      * years="2017" >
      * Licensed Materials - Property of IBM
      *
      * Restricted Materials of IBM
      *
      * 5655-CE3
      *
      * (C) Copyright IBM Corp. 2017
      *
      * US Government Users Restricted Rights - Use, duplication or
      * disclosure restricted by GSA ADP Schedule Contract with
      * IBM Corp.
      * </copyright>
      *****************************************************************
      * This file contains the generated language structure(s) for    *
      * Request and Response Info                                     *
      *****************************************************************
       01  BAQ-REQUEST-INFO.
         03 BAQ-REQUEST-INFO-COMP-LEVEL  PIC S9(9) COMP-5 SYNC VALUE 1.
         03 BAQ-REQUEST-INFO-USER.
            05 BAQ-OAUTH.
               07 BAQ-OAUTH-USERNAME           PIC X(256).
               07 BAQ-OAUTH-USERNAME-LEN       PIC S9(9) COMP-5 SYNC
                                                 VALUE 0.
               07 BAQ-OAUTH-PASSWORD           PIC X(256).
               07 BAQ-OAUTH-PASSWORD-LEN       PIC S9(9) COMP-5 SYNC
                                                 VALUE 0.
               07 BAQ-OAUTH-CLIENTID           PIC X(256).
               07 BAQ-OAUTH-CLIENTID-LEN       PIC S9(9) COMP-5 SYNC
                                                 VALUE 0.
               07 BAQ-OAUTH-CLIENT-SECRET      PIC X(256).
               07 BAQ-OAUTH-CLIENT-SECRET-LEN  PIC S9(9) COMP-5 SYNC
                                                 VALUE 0.
               07 BAQ-OAUTH-SCOPE-PTR          USAGE POINTER.
               07 BAQ-OAUTH-SCOPE-LEN          PIC S9(9) COMP-5 SYNC
                                                 VALUE 0.

       01  BAQ-RESPONSE-INFO.
         03 BAQ-RESPONSE-INFO-COMP-LEVEL PIC S9(9) COMP-5 SYNC VALUE 0.
         03 BAQ-STUB-NAME                PIC X(8).
         03 BAQ-RETURN-CODE              PIC S9(9) COMP-5 SYNC.
            88 BAQ-SUCCESS                 VALUE 0.
            88 BAQ-ERROR-IN-API            VALUE 1.
            88 BAQ-ERROR-IN-ZCEE           VALUE 2.
            88 BAQ-ERROR-IN-STUB           VALUE 3.
         03 BAQ-STATUS-CODE              PIC S9(9) COMP-5 SYNC.
         03 BAQ-STATUS-MESSAGE           PIC X(1024).
         03 BAQ-STATUS-MESSAGE-LEN       PIC S9(9) COMP-5 SYNC.