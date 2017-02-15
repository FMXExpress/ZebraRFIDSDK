//
// Generated by JavaToPas v1.5 20170214 - 172218
////////////////////////////////////////////////////////////////////////////////
unit com.zebra.rfid.api3.h;

interface

uses
  AndroidAPI.JNIBridge,
  Androidapi.JNI.JavaTypes,
  com.zebra.rfid.api3.RFIDResults,
  com.zebra.rfid.api3.PostFilter,
  com.zebra.rfid.api3.AntennaInfo,
  com.zebra.rfid.api3.TriggerInfo,
  com.zebra.rfid.api3.n,
  com.zebra.rfid.api3.AccessFilter,
  com.zebra.rfid.api3.TagData,
  com.zebra.rfid.api3.cl,
  com.zebra.rfid.api3.TagAccess_WriteSpecificFieldAccessParams,
  com.zebra.rfid.api3.WRITE_FIELD_CODE,
  com.zebra.rfid.api3.ae,
  com.zebra.rfid.api3.TagAccess_Sequence,
  com.zebra.rfid.api3.SecureConnectionInfo,
  com.zebra.rfid.api3.LoginInfo,
  com.zebra.rfid.api3.READER_TYPE,
  com.zebra.rfid.api3.ANTENNA_MODE,
  com.zebra.rfid.api3.READPOINT_STATUS,
  com.zebra.rfid.api3.RFID_EVENT_TYPE,
  com.zebra.rfid.api3.bc,
  com.zebra.rfid.api3.ReaderCapabilities,
  com.zebra.rfid.api3.SYSTEMTIME,
  com.zebra.rfid.api3.Antennas,
  com.zebra.rfid.api3.da,
  com.zebra.rfid.api3.UpdateStatus,
  com.zebra.rfid.api3.USBOperationMode,
  com.zebra.rfid.api3.SERVICE_ID,
  com.zebra.rfid.api3.LedInfo,
  com.zebra.rfid.api3.ReaderInfo,
  com.zebra.rfid.api3.LLRPConnectionConfig,
  com.zebra.rfid.api3.SystemInfo,
  com.zebra.rfid.api3.SoftwareUpdateInfo,
  com.zebra.rfid.api3.RUN_STATUS,
  com.zebra.rfid.api3.CableLossCompensation,
  com.zebra.rfid.api3.v,
  com.zebra.rfid.api3.RADIO_POWER_STATE,
  com.zebra.rfid.api3.TagStorageSettings,
  com.zebra.rfid.api3.StartTrigger,
  com.zebra.rfid.api3.StopTrigger,
  com.zebra.rfid.api3.DYNAMIC_POWER_OPTIMIZATION,
  com.zebra.rfid.api3.AttributeInfo,
  com.zebra.rfid.api3.SetAttribute,
  com.zebra.rfid.api3.RegulatoryConfig,
  com.zebra.rfid.api3.RegionInfo,
  java.util.logging.Level;

type
  Jh = interface;

  JhClass = interface(JObjectClass)
    ['{1023D86E-C921-4BAB-A966-26A9FAA022FF}']
  end;

  [JavaSignature('com/zebra/rfid/api3/h')]
  Jh = interface(JObject)
    ['{D900DCBC-8ACE-4F9D-AB71-780255C545A1}']
  end;

  TJh = class(TJavaGenericImport<JhClass, Jh>)
  end;

implementation

end.