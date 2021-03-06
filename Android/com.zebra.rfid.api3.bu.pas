//
// Generated by JavaToPas v1.5 20170214 - 172224
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.bu;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.MODULATION,
  com.zebra.rfid.api3.DIVIDE_RATIO,
  com.zebra.rfid.api3.FORWARD_LINK_MODULATION,
  com.zebra.rfid.api3.SPECTRAL_MASK_INDICATOR;

type
  Jbu = interface;

  JbuClass = interface(JObjectClass)
    ['{A573F76D-8A97-4047-8C70-ABBFA07BED34}']
    function _Geta : Integer; cdecl;                                            //  A: $1
    function _Getb : Integer; cdecl;                                            //  A: $1
    function _Getc : JMODULATION; cdecl;                                        //  A: $1
    function _Getd : Integer; cdecl;                                            //  A: $1
    function _Gete : JDIVIDE_RATIO; cdecl;                                      //  A: $1
    function _Getf : Integer; cdecl;                                            //  A: $1
    function _Getg : JFORWARD_LINK_MODULATION; cdecl;                           //  A: $1
    function _Geth : Integer; cdecl;                                            //  A: $1
    function _Geti : Integer; cdecl;                                            //  A: $1
    function _Getj : Integer; cdecl;                                            //  A: $1
    function _Getk : Integer; cdecl;                                            //  A: $1
    function _Getl : Integer; cdecl;                                            //  A: $1
    function _Getm : Integer; cdecl;                                            //  A: $1
    procedure _Seta(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setb(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setc(Value : JMODULATION) ; cdecl;                               //  A: $1
    procedure _Setd(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Sete(Value : JDIVIDE_RATIO) ; cdecl;                             //  A: $1
    procedure _Setf(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setg(Value : JFORWARD_LINK_MODULATION) ; cdecl;                  //  A: $1
    procedure _Seth(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Seti(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setj(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setk(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setl(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setm(Value : Integer) ; cdecl;                                   //  A: $1
    property a : Integer read _Geta write _Seta;                                // I A: $1
    property b : Integer read _Getb write _Setb;                                // I A: $1
    property c : JMODULATION read _Getc write _Setc;                            // Lcom/zebra/rfid/api3/MODULATION; A: $1
    property d : Integer read _Getd write _Setd;                                // I A: $1
    property e : JDIVIDE_RATIO read _Gete write _Sete;                          // Lcom/zebra/rfid/api3/DIVIDE_RATIO; A: $1
    property f : Integer read _Getf write _Setf;                                // I A: $1
    property g : JFORWARD_LINK_MODULATION read _Getg write _Setg;               // Lcom/zebra/rfid/api3/FORWARD_LINK_MODULATION; A: $1
    property h : Integer read _Geth write _Seth;                                // I A: $1
    property i : Integer read _Geti write _Seti;                                // I A: $1
    property j : Integer read _Getj write _Setj;                                // I A: $1
    property k : Integer read _Getk write _Setk;                                // I A: $1
    property l : Integer read _Getl write _Setl;                                // I A: $1
    property m : Integer read _Getm write _Setm;                                // I A: $1
  end;

  [JavaSignature('com/zebra/rfid/api3/bu')]
  Jbu = interface(JObject)
    ['{D44B6CEA-6D32-4F0A-BDD5-687C67F128F1}']
    function _Geta : Integer; cdecl;                                            //  A: $1
    function _Getb : Integer; cdecl;                                            //  A: $1
    function _Getc : JMODULATION; cdecl;                                        //  A: $1
    function _Getd : Integer; cdecl;                                            //  A: $1
    function _Gete : JDIVIDE_RATIO; cdecl;                                      //  A: $1
    function _Getf : Integer; cdecl;                                            //  A: $1
    function _Getg : JFORWARD_LINK_MODULATION; cdecl;                           //  A: $1
    function _Geth : Integer; cdecl;                                            //  A: $1
    function _Geti : Integer; cdecl;                                            //  A: $1
    function _Getj : Integer; cdecl;                                            //  A: $1
    function _Getk : Integer; cdecl;                                            //  A: $1
    function _Getl : Integer; cdecl;                                            //  A: $1
    function _Getm : Integer; cdecl;                                            //  A: $1
    procedure _Seta(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setb(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setc(Value : JMODULATION) ; cdecl;                               //  A: $1
    procedure _Setd(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Sete(Value : JDIVIDE_RATIO) ; cdecl;                             //  A: $1
    procedure _Setf(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setg(Value : JFORWARD_LINK_MODULATION) ; cdecl;                  //  A: $1
    procedure _Seth(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Seti(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setj(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setk(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setl(Value : Integer) ; cdecl;                                   //  A: $1
    procedure _Setm(Value : Integer) ; cdecl;                                   //  A: $1
    property a : Integer read _Geta write _Seta;                                // I A: $1
    property b : Integer read _Getb write _Setb;                                // I A: $1
    property c : JMODULATION read _Getc write _Setc;                            // Lcom/zebra/rfid/api3/MODULATION; A: $1
    property d : Integer read _Getd write _Setd;                                // I A: $1
    property e : JDIVIDE_RATIO read _Gete write _Sete;                          // Lcom/zebra/rfid/api3/DIVIDE_RATIO; A: $1
    property f : Integer read _Getf write _Setf;                                // I A: $1
    property g : JFORWARD_LINK_MODULATION read _Getg write _Setg;               // Lcom/zebra/rfid/api3/FORWARD_LINK_MODULATION; A: $1
    property h : Integer read _Geth write _Seth;                                // I A: $1
    property i : Integer read _Geti write _Seti;                                // I A: $1
    property j : Integer read _Getj write _Setj;                                // I A: $1
    property k : Integer read _Getk write _Setk;                                // I A: $1
    property l : Integer read _Getl write _Setl;                                // I A: $1
    property m : Integer read _Getm write _Setm;                                // I A: $1
  end;

  TJbu = class(TJavaGenericImport<JbuClass, Jbu>)
  end;

implementation

end.
