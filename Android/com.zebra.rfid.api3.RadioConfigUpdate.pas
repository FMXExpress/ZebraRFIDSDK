//
// Generated by JavaToPas v1.5 20170214 - 172223
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.RadioConfigUpdate;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.UpdateStatus;

type
  JRadioConfigUpdate = interface;

  JRadioConfigUpdateClass = interface(JObjectClass)
    ['{6C6F9ABC-5D2A-4C3A-8F1B-8202B2BC6074}']
    function getUpdateStatus : JUpdateStatus; cdecl;                            // ()Lcom/zebra/rfid/api3/UpdateStatus; A: $1
    procedure update(fileName : JString) ; cdecl;                               // (Ljava/lang/String;)V A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/RadioConfigUpdate')]
  JRadioConfigUpdate = interface(JObject)
    ['{C9D3D0B1-31EE-4E5A-8F17-362C689DF1D2}']
    function getUpdateStatus : JUpdateStatus; cdecl;                            // ()Lcom/zebra/rfid/api3/UpdateStatus; A: $1
    procedure update(fileName : JString) ; cdecl;                               // (Ljava/lang/String;)V A: $1
  end;

  TJRadioConfigUpdate = class(TJavaGenericImport<JRadioConfigUpdateClass, JRadioConfigUpdate>)
  end;

implementation

end.
