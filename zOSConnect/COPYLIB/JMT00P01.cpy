      * ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      * This file contains the generated language structure(s) for
      *  response JSON schema 'helloworld_hello_GET_200_response.json'.
      * This structure was generated using 'DFHJS2LS' at mapping level
      *  '4.3'.
      *
      *
      *      06 RespBody.
      *
      *
      * JSON schema keyword 'RespBody->message' is optional. The
      *  number of instances present is indicated in field
      *  'Xmessage-num'.
      * There should be at least '0' instance(s).
      * There should be at most '1' instance(s).
      *        09 Xmessage-num                  PIC S9(9) COMP-5 SYNC.
      *
      *
      *        09 Xmessage.
      *
      * Comments for field 'Xmessage2':
      * This field represents the value of JSON schema keyword
      *  'RespBody->message'.
      * JSON schema type: 'string'.
      * This field contains a varying length array of characters or
      *  binary data.
      *          12 Xmessage2-length              PIC S9999 COMP-5
      *  SYNC.
      *          12 Xmessage2                     PIC X(255).
      *
      *
      * ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

             06 RespBody.

               09 Xmessage-num                  PIC S9(9) COMP-5 SYNC.

               09 Xmessage.
                 12 Xmessage2-length              PIC S9999 COMP-5
            SYNC.
                 12 Xmessage2                     PIC X(255).
