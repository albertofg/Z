      * ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      * This file contains the generated language structure(s) for
      *  request JSON schema 'helloworld_hello_GET_request.json'.
      * This structure was generated using 'DFHJS2LS' at mapping level
      *  '4.3'.
      *
      *
      *      06 ReqQueryParameters.
      *
      * Comments for field 'name':
      * This field represents the value of JSON schema keyword
      *  'ReqQueryParameters->name'.
      * JSON schema description: Your name.
      * JSON schema type: 'string'.
      * This field contains a varying length array of characters or
      *  binary data.
      *        09 name-length                   PIC S9999 COMP-5 SYNC.
      *        09 name                          PIC X(255).
      *      06 ReqHeaders.
      *
      * Comments for field 'X-IBM-Client-Id':
      * This field represents the value of JSON schema keyword
      *  'ReqHeaders->X-IBM-Client-Id'.
      * JSON schema type: 'string'.
      * JSON schema keyword 'minLength' value: '0'.
      * JSON schema keyword 'maxLength' value: '36'.
      * This field contains a varying length array of characters or
      *  binary data.
      *        09 X-IBM-Client-Id-length        PIC S9999 COMP-5 SYNC.
      *        09 X-IBM-Client-Id               PIC X(36).
      *
      *
      * ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

             06 ReqQueryParameters.
               09 name-length                   PIC S9999 COMP-5 SYNC.
               09 name                          PIC X(255).
             06 ReqHeaders.
               09 X-IBM-Client-Id-length        PIC S9999 COMP-5 SYNC.
               09 X-IBM-Client-Id               PIC X(36).
