//
// Generated by JavaToPas v1.5 20170214 - 172222
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.ba;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.SYSTEMTIME;

type
  Jba = interface;

  JbaClass = interface(JObjectClass)
    ['{0699DD6C-DA21-4896-8C0E-937F72F8D050}']
    function _Geta : Integer; cdecl;                                            //  A: $1
    function _Getb : JSYSTEMTIME; cdecl;                                        //  A: $1
    procedure _Seta(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setb(Value : JSYSTEMTIME) ; cdecl;                               //  A: $1
    property a : Integer read _Geta write _Seta;                                // I A: $1
    property b : JSYSTEMTIME read _Getb write _Setb;                            // Lcom/zebra/rfid/api3/SYSTEMTIME; A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/ba')]
  Jba = interface(JObject)
    ['{D6A7AB9E-3834-4FDD-9CEE-9DBFFF8CE4FF}']
    function _Geta : Integer; cdecl;                                            //  A: $1
    function _Getb : JSYSTEMTIME; cdecl;                                        //  A: $1
    procedure _Seta(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setb(Value : JSYSTEMTIME) ; cdecl;                               //  A: $1
    property a : Integer read _Geta write _Seta;                                // I A: $1
    property b : JSYSTEMTIME read _Getb write _Setb;                            // Lcom/zebra/rfid/api3/SYSTEMTIME; A: $1
  end;

  TJba = class(TJavaGenericImport<JbaClass, Jba>)
  end;

implementation

end.