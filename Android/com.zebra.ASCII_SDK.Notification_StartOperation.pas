//
// Generated by JavaToPas v1.5 20170214 - 172216
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.ASCII_SDK.Notification_StartOperation;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.ASCII_SDK.NOTIFICATION_TYPE;

type
  JNotification_StartOperation = interface;

  JNotification_StartOperationClass = interface(JObjectClass)
    ['{5F066EB0-5333-435A-BE2B-2EE8B1EFACB4}']
    function FromString(str : JString) : JNotification_StartOperation; cdecl;   // (Ljava/lang/String;)Lcom/zebra/ASCII_SDK/Notification_StartOperation; A: $9
    function getNotificationType : JNOTIFICATION_TYPE; cdecl;                   // ()Lcom/zebra/ASCII_SDK/NOTIFICATION_TYPE; A: $1
    function init : JNotification_StartOperation; cdecl;                        // ()V A: $1
  end;

  [JavaSignature('com/zebra/ASCII_SDK/Notification_StartOperation')]
  JNotification_StartOperation = interface(JObject)
    ['{9AE2FBED-4480-4130-A1F0-61035984834A}']
    function getNotificationType : JNOTIFICATION_TYPE; cdecl;                   // ()Lcom/zebra/ASCII_SDK/NOTIFICATION_TYPE; A: $1
  end;

  TJNotification_StartOperation = class(TJavaGenericImport<JNotification_StartOperationClass, JNotification_StartOperation>)
  end;

implementation

end.