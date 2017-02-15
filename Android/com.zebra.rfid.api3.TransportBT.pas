//
// Generated by JavaToPas v1.5 20170214 - 172226
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.TransportBT;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.os,
  com.zebra.rfid.api3.BluetoothService,
  java.util.concurrent.BlockingQueue;

type
  JTransportBT_a = interface; // merged
  JTransportBT = interface;

  JTransportBTClass = interface(JObjectClass)
    ['{EB1B6BDE-2B82-4C68-B7D0-ED16070DC45F}']
    function Connect(&name : JString) : boolean; cdecl;                         // (Ljava/lang/String;)Z A: $1
    function ReConnect : boolean; cdecl;                                        // ()Z A: $1
    function ReadData : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
    function init : JTransportBT; cdecl;                                        // ()V A: $1
    procedure Disconnect ; cdecl;                                               // ()V A: $1
    procedure SetQueue(btData : JBlockingQueue) ; cdecl;                        // (Ljava/util/concurrent/BlockingQueue;)V A: $1
    procedure WriteData(Buffer : JString) ; cdecl;                              // (Ljava/lang/String;)V A: $1
    procedure a ; cdecl; overload;                                              // ()V A: $1
    procedure b ; cdecl;                                                        // ()V A: $1
    procedure dataReceivedFromBluetooth(data : JString) ; cdecl;                // (Ljava/lang/String;)V A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/TransportBT$a')]
  JTransportBT = interface(JObject)
    ['{3B871A64-5056-403C-BD03-E3AA5100AB28}']
    function Connect(&name : JString) : boolean; cdecl;                         // (Ljava/lang/String;)Z A: $1
    function ReConnect : boolean; cdecl;                                        // ()Z A: $1
    function ReadData : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
    procedure Disconnect ; cdecl;                                               // ()V A: $1
    procedure SetQueue(btData : JBlockingQueue) ; cdecl;                        // (Ljava/util/concurrent/BlockingQueue;)V A: $1
    procedure WriteData(Buffer : JString) ; cdecl;                              // (Ljava/lang/String;)V A: $1
    procedure a ; cdecl; overload;                                              // ()V A: $1
    procedure b ; cdecl;                                                        // ()V A: $1
    procedure dataReceivedFromBluetooth(data : JString) ; cdecl;                // (Ljava/lang/String;)V A: $1
  end;

  TJTransportBT = class(TJavaGenericImport<JTransportBTClass, JTransportBT>)
  end;

  // Merged from: .\com.zebra.rfid.api3.TransportBT_a.pas
  JTransportBT_aClass = interface(JObjectClass)
    ['{A204D115-89BD-40D4-8E5F-70ECB03719D4}']
  end;

  [JavaSignature('com/zebra/rfid/api3/TransportBT_a')]
  JTransportBT_a = interface(JObject)
    ['{57640C26-5912-4E99-A074-B670B56B8EF4}']
  end;

  TJTransportBT_a = class(TJavaGenericImport<JTransportBT_aClass, JTransportBT_a>)
  end;


implementation

end.