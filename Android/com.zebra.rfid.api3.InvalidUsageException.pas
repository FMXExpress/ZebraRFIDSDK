//
// Generated by JavaToPas v1.5 20170214 - 172221
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.InvalidUsageException;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.RFIDResults;

type
  JInvalidUsageException = interface;

  JInvalidUsageExceptionClass = interface(JObjectClass)
    ['{E03BEA08-884A-404C-B6B7-01B66A860C47}']
    function getInfo : JString; cdecl;                                          // ()Ljava/lang/String; A: $1
    function getTimeStamp : JString; cdecl;                                     // ()Ljava/lang/String; A: $1
    function getVendorMessage : JString; cdecl;                                 // ()Ljava/lang/String; A: $1
    function init(sMessage : JString; ErrorString : JString) : JInvalidUsageException; cdecl; overload;// (Ljava/lang/String;Ljava/lang/String;)V A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/InvalidUsageException')]
  JInvalidUsageException = interface(JObject)
    ['{71503F17-CF58-4A94-A79C-155C0B0B54E8}']
    function getInfo : JString; cdecl;                                          // ()Ljava/lang/String; A: $1
    function getTimeStamp : JString; cdecl;                                     // ()Ljava/lang/String; A: $1
    function getVendorMessage : JString; cdecl;                                 // ()Ljava/lang/String; A: $1
  end;

  TJInvalidUsageException = class(TJavaGenericImport<JInvalidUsageExceptionClass, JInvalidUsageException>)
  end;

implementation

end.
