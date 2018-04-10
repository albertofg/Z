//ADDUSER0 JOB (ACCT),MSGCLASS=H,NOTIFY=&SYSUID.
//*------------------------------------------------------------------
//* Licensed materials - Property of IBM
//* 5725-G39 Copyright IBM Corp. 2013
//* All rights reserved
//* US Government users restricted rights -  Use, duplication or
//* disclosure restricted by GSA ADP schedule contract with IBM Corp.
//*
//* IBM Rational Development and Test Environment for System z
//*------------------------------------------------------------------
//* COMMANDS FOR CREATION OF EMPOTxx TSO USERIDS
//*-------------------------------------------------------------------
//ALTA      EXEC PGM=IKJEFT01,REGION=0M
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  *
ADDUSER ALBERTO   DFLTGRP(SYS1)
ALTUSER ALBERTO   TSO(ACCTNUM(ACCT#) COMMAND('ISPF NOLOGO'))
ALTUSER ALBERTO   TSO(PROC(ISPFPROC) SIZE(2096128))
ALTUSER ALBERTO   PASSWORD(ALBERTO)  NOEXPIRED
PASSWORD USER(ALBERTO) NOINTERVAL
PERMIT ACCT# CLASS(ACCTNUM) ID(ALBERTO) ACCESS(READ)
PERMIT JCL CLASS(TSOAUTH) ID(ALBERTO) ACCESS(READ)
//*
//*--------------------------------------------------------
//*  Paso para el alias
//*--------------------------------------------------------
//ALIAS  EXEC  PGM=IDCAMS,REGION=512K
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  *
 DEFINE ALIAS(NAME(ALBERTO                                     )     -
      REL(USERCAT.Z23A.USER                                ))
//*



