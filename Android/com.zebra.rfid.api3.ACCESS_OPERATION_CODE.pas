//
// Generated by JavaToPas v1.5 20170214 - 172217
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.ACCESS_OPERATION_CODE;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  java.util.TreeMap;

type
  JACCESS_OPERATION_CODE = interface;

  JACCESS_OPERATION_CODEClass = interface(JObjectClass)
    ['{1763223B-42B6-47A3-A54C-4E3807A8D078}']
    function GetAccessOperationCodeValue(opration : JString) : JACCESS_OPERATION_CODE; cdecl; overload;// (Ljava/lang/String;)Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $9
    function GetAccessOperationCodeValue(value : Integer) : JACCESS_OPERATION_CODE; cdecl; overload;// (I)Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $9
    function _GetACCESS_OPERATION_BLOCK_ERASE : JACCESS_OPERATION_CODE; cdecl;  //  A: $19
    function _GetACCESS_OPERATION_BLOCK_PERMALOCK : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_BLOCK_WRITE : JACCESS_OPERATION_CODE; cdecl;  //  A: $19
    function _GetACCESS_OPERATION_IMPINJ_QT_READ : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_IMPINJ_QT_WRITE : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_KILL : JACCESS_OPERATION_CODE; cdecl;         //  A: $19
    function _GetACCESS_OPERATION_LOCK : JACCESS_OPERATION_CODE; cdecl;         //  A: $19
    function _GetACCESS_OPERATION_NONE : JACCESS_OPERATION_CODE; cdecl;         //  A: $19
    function _GetACCESS_OPERATION_NXP_CHANGE_CONFIG : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_NXP_READ_PROTECT : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_NXP_RESET_READ_PROTECT : JACCESS_OPERATION_CODE; cdecl;//  A: $19
    function _GetACCESS_OPERATION_NXP_SET_EAS : JACCESS_OPERATION_CODE; cdecl;  //  A: $19
    function _GetACCESS_OPERATION_READ : JACCESS_OPERATION_CODE; cdecl;         //  A: $19
    function _GetACCESS_OPERATION_RECOMMISSION : JACCESS_OPERATION_CODE; cdecl; //  A: $19
    function _GetACCESS_OPERATION_WRITE : JACCESS_OPERATION_CODE; cdecl;        //  A: $19
    function _Getordinal : Integer; cdecl;                                      //  A: $11
    function equals(val : Integer) : boolean; cdecl;                            // (I)Z A: $1
    function getValue : Integer; cdecl;                                         // ()I A: $1
    function toString : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
    property ACCESS_OPERATION_BLOCK_ERASE : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_BLOCK_ERASE;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_BLOCK_PERMALOCK : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_BLOCK_PERMALOCK;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_BLOCK_WRITE : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_BLOCK_WRITE;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_IMPINJ_QT_READ : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_IMPINJ_QT_READ;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_IMPINJ_QT_WRITE : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_IMPINJ_QT_WRITE;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_KILL : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_KILL;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_LOCK : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_LOCK;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_NONE : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_NONE;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_NXP_CHANGE_CONFIG : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_NXP_CHANGE_CONFIG;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_NXP_READ_PROTECT : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_NXP_READ_PROTECT;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_NXP_RESET_READ_PROTECT : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_NXP_RESET_READ_PROTECT;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_NXP_SET_EAS : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_NXP_SET_EAS;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_READ : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_READ;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_RECOMMISSION : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_RECOMMISSION;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ACCESS_OPERATION_WRITE : JACCESS_OPERATION_CODE read _GetACCESS_OPERATION_WRITE;// Lcom/zebra/rfid/api3/ACCESS_OPERATION_CODE; A: $19
    property ordinal : Integer read _Getordinal;                                // I A: $11
  end;

  [JavaSignature('com/zebra/rfid/api3/ACCESS_OPERATION_CODE')]
  JACCESS_OPERATION_CODE = interface(JObject)
    ['{D3781301-8347-4D00-960B-7564A788488A}']
    function equals(val : Integer) : boolean; cdecl;                            // (I)Z A: $1
    function getValue : Integer; cdecl;                                         // ()I A: $1
    function toString : JString; cdecl;                                         // ()Ljava/lang/String; A: $1
  end;

  TJACCESS_OPERATION_CODE = class(TJavaGenericImport<JACCESS_OPERATION_CODEClass, JACCESS_OPERATION_CODE>)
  end;

implementation

end.
