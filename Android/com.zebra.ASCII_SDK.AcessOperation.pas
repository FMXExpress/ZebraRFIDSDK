//
// Generated by JavaToPas v1.5 20170214 - 172214
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.ASCII_SDK.AcessOperation;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
  JAcessOperation = interface;

  JAcessOperationClass = interface(JObjectClass)
    ['{7F4295DA-C9C2-4E60-8837-EE6C56777E4A}']
    function _GetBlockPermaLocakResult : JString; cdecl;                        //  A: $1
    function _GetmemoryBank : JString; cdecl;                                   //  A: $1
    function _GetmemoryBankData : JString; cdecl;                               //  A: $1
    function _GetoperationStatus : JString; cdecl;                              //  A: $1
    function _Getopration : JString; cdecl;                                     //  A: $1
    function _GetwordsOperationSucceeded : SmallInt; cdecl;                     //  A: $1
    function init : JAcessOperation; cdecl;                                     // ()V A: $1
    procedure _SetBlockPermaLocakResult(Value : JString) ; cdecl;               //  A: $1
    procedure _SetmemoryBank(Value : JString) ; cdecl;                          //  A: $1
    procedure _SetmemoryBankData(Value : JString) ; cdecl;                      //  A: $1
    procedure _SetoperationStatus(Value : JString) ; cdecl;                     //  A: $1
    procedure _Setopration(Value : JString) ; cdecl;                            //  A: $1
    procedure _SetwordsOperationSucceeded(Value : SmallInt) ; cdecl;            //  A: $1
    property BlockPermaLocakResult : JString read _GetBlockPermaLocakResult write _SetBlockPermaLocakResult;// Ljava/lang/String; A: $1
    property memoryBank : JString read _GetmemoryBank write _SetmemoryBank;     // Ljava/lang/String; A: $1
    property memoryBankData : JString read _GetmemoryBankData write _SetmemoryBankData;// Ljava/lang/String; A: $1
    property operationStatus : JString read _GetoperationStatus write _SetoperationStatus;// Ljava/lang/String; A: $1
    property opration : JString read _Getopration write _Setopration;           // Ljava/lang/String; A: $1
    property wordsOperationSucceeded : SmallInt read _GetwordsOperationSucceeded write _SetwordsOperationSucceeded;// S A: $1
  end;

  [JavaSignature('com/zebra/ASCII_SDK/AcessOperation')]
  JAcessOperation = interface(JObject)
    ['{FE8B8A89-BFF7-4BF6-B5CA-0FF504C50446}']
    function _GetBlockPermaLocakResult : JString; cdecl;                        //  A: $1
    function _GetmemoryBank : JString; cdecl;                                   //  A: $1
    function _GetmemoryBankData : JString; cdecl;                               //  A: $1
    function _GetoperationStatus : JString; cdecl;                              //  A: $1
    function _Getopration : JString; cdecl;                                     //  A: $1
    function _GetwordsOperationSucceeded : SmallInt; cdecl;                     //  A: $1
    procedure _SetBlockPermaLocakResult(Value : JString) ; cdecl;               //  A: $1
    procedure _SetmemoryBank(Value : JString) ; cdecl;                          //  A: $1
    procedure _SetmemoryBankData(Value : JString) ; cdecl;                      //  A: $1
    procedure _SetoperationStatus(Value : JString) ; cdecl;                     //  A: $1
    procedure _Setopration(Value : JString) ; cdecl;                            //  A: $1
    procedure _SetwordsOperationSucceeded(Value : SmallInt) ; cdecl;            //  A: $1
    property BlockPermaLocakResult : JString read _GetBlockPermaLocakResult write _SetBlockPermaLocakResult;// Ljava/lang/String; A: $1
    property memoryBank : JString read _GetmemoryBank write _SetmemoryBank;     // Ljava/lang/String; A: $1
    property memoryBankData : JString read _GetmemoryBankData write _SetmemoryBankData;// Ljava/lang/String; A: $1
    property operationStatus : JString read _GetoperationStatus write _SetoperationStatus;// Ljava/lang/String; A: $1
    property opration : JString read _Getopration write _Setopration;           // Ljava/lang/String; A: $1
    property wordsOperationSucceeded : SmallInt read _GetwordsOperationSucceeded write _SetwordsOperationSucceeded;// S A: $1
  end;

  TJAcessOperation = class(TJavaGenericImport<JAcessOperationClass, JAcessOperation>)
  end;

implementation

end.