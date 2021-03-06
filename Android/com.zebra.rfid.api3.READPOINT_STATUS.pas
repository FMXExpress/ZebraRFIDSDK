//
// Generated by JavaToPas v1.5 20170214 - 172224
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.READPOINT_STATUS;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
  JREADPOINT_STATUS = interface;

  JREADPOINT_STATUSClass = interface(JObjectClass)
    ['{4AA74941-F352-4CFD-BF9B-011271D5475B}']
    function _GetDISABLE : JREADPOINT_STATUS; cdecl;                            //  A: $19
    function _GetENABLE : JREADPOINT_STATUS; cdecl;                             //  A: $19
    function _Getordinal : Integer; cdecl;                                      //  A: $11
    function equals(val : Integer) : boolean; cdecl;                            // (I)Z A: $1
    function getValue : Integer; cdecl;                                         // ()I A: $1
    function toString : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
    property DISABLE : JREADPOINT_STATUS read _GetDISABLE;                      // Lcom/zebra/rfid/api3/READPOINT_STATUS; A: $19
    property ENABLE : JREADPOINT_STATUS read _GetENABLE;                        // Lcom/zebra/rfid/api3/READPOINT_STATUS; A: $19
    property ordinal : Integer read _Getordinal;                                // I A: $11
  end;

  [JavaSignature('com/zebra/rfid/api3/READPOINT_STATUS')]
  JREADPOINT_STATUS = interface(JObject)
    ['{006CA356-7723-4D6C-BEFB-5AA8E45F6EF0}']
    function equals(val : Integer) : boolean; cdecl;                            // (I)Z A: $1
    function getValue : Integer; cdecl;                                         // ()I A: $1
    function toString : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
  end;

  TJREADPOINT_STATUS = class(TJavaGenericImport<JREADPOINT_STATUSClass, JREADPOINT_STATUS>)
  end;

implementation

end.
