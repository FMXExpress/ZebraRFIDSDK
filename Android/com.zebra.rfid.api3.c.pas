//
// Generated by JavaToPas v1.5 20170214 - 172217
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.c;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.ai,
  com.zebra.rfid.api3.at;

type
  Jc = interface;

  JcClass = interface(JObjectClass)
    ['{0D257282-8000-4D9D-81FD-5DE0F4EDC969}']
    function _Geta : Jai; cdecl;                                                //  A: $1
    function _Getb : Jat; cdecl;                                                //  A: $1
    procedure _Seta(Value : Jai) ; cdecl;                                       //  A: $1
    procedure _Setb(Value : Jat) ; cdecl;                                       //  A: $1
    property a : Jai read _Geta write _Seta;                                    // Lcom/zebra/rfid/api3/ai; A: $1
    property b : Jat read _Getb write _Setb;                                    // Lcom/zebra/rfid/api3/at; A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/c')]
  Jc = interface(JObject)
    ['{72C3E533-0BD3-4A46-8F91-BE9FA3BF0B19}']
    function _Geta : Jai; cdecl;                                                //  A: $1
    function _Getb : Jat; cdecl;                                                //  A: $1
    procedure _Seta(Value : Jai) ; cdecl;                                       //  A: $1
    procedure _Setb(Value : Jat) ; cdecl;                                       //  A: $1
    property a : Jai read _Geta write _Seta;                                    // Lcom/zebra/rfid/api3/ai; A: $1
    property b : Jat read _Getb write _Setb;                                    // Lcom/zebra/rfid/api3/at; A: $1
  end;

  TJc = class(TJavaGenericImport<JcClass, Jc>)
  end;

implementation

end.