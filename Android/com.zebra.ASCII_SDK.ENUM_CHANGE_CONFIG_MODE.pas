//
// Generated by JavaToPas v1.5 20170214 - 172216
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.ASCII_SDK.ENUM_CHANGE_CONFIG_MODE;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
  JENUM_CHANGE_CONFIG_MODE = interface;

  JENUM_CHANGE_CONFIG_MODEClass = interface(JObjectClass)
    ['{C96065D2-DB5B-42C2-BC73-5F13AAF2E2ED}']
    function _GetRESTORE_CUSOME_DEFAULTS : JENUM_CHANGE_CONFIG_MODE; cdecl;     //  A: $4019
    function _GetRESTORE_FACTORY_DEFAULTS : JENUM_CHANGE_CONFIG_MODE; cdecl;    //  A: $4019
    function _GetSAVE_CONFIG : JENUM_CHANGE_CONFIG_MODE; cdecl;                 //  A: $4019
    function _GetSAVE_CUSOME_DEFAULTS : JENUM_CHANGE_CONFIG_MODE; cdecl;        //  A: $4019
    function getEnum(enumValS : JString) : JENUM_CHANGE_CONFIG_MODE; cdecl;     // (Ljava/lang/String;)Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $9
    function getEnumValue : JString; cdecl;                                     // ()Ljava/lang/String; A: $1
    function valueOf(&name : JString) : JENUM_CHANGE_CONFIG_MODE; cdecl;        // (Ljava/lang/String;)Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $9
    function values : TJavaArray<JENUM_CHANGE_CONFIG_MODE>; cdecl;              // ()[Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $9
    property RESTORE_CUSOME_DEFAULTS : JENUM_CHANGE_CONFIG_MODE read _GetRESTORE_CUSOME_DEFAULTS;// Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $4019
    property RESTORE_FACTORY_DEFAULTS : JENUM_CHANGE_CONFIG_MODE read _GetRESTORE_FACTORY_DEFAULTS;// Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $4019
    property SAVE_CONFIG : JENUM_CHANGE_CONFIG_MODE read _GetSAVE_CONFIG;       // Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $4019
    property SAVE_CUSOME_DEFAULTS : JENUM_CHANGE_CONFIG_MODE read _GetSAVE_CUSOME_DEFAULTS;// Lcom/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE; A: $4019
  end;

  [JavaSignature('com/zebra/ASCII_SDK/ENUM_CHANGE_CONFIG_MODE')]
  JENUM_CHANGE_CONFIG_MODE = interface(JObject)
    ['{E4F74569-86F9-4734-8131-6DD7ECCB61A7}']
    function getEnumValue : JString; cdecl;                                     // ()Ljava/lang/String; A: $1
  end;

  TJENUM_CHANGE_CONFIG_MODE = class(TJavaGenericImport<JENUM_CHANGE_CONFIG_MODEClass, JENUM_CHANGE_CONFIG_MODE>)
  end;

implementation

end.