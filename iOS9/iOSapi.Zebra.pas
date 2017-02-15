{ *********************************************************** }
{ }
{ CodeGear Delphi Runtime Library }
{ }
{ Copyright(c) 2012-2014 Embarcadero Technologies, Inc. }
{ }
{ *********************************************************** }

//
// Delphi-Objective-C Bridge
// Interfaces for Cocoa framework Zebra
//

unit iOSapi.Zebra;

interface

uses
  Macapi.CoreFoundation,
  Macapi.CoreServices,
  Macapi.Dispatch,
  Macapi.Foundation,
  Macapi.Mach,
  Macapi.ObjCRuntime,
  Macapi.ObjectiveC,
  Macapi.QuartzCore,
  iOSapi.CocoaTypes,
  iOSapi.Foundation;

const
  SRFID_RESULT_SUCCESS = 0;
  SRFID_RESULT_FAILURE = 1;
  SRFID_RESULT_READER_NOT_AVAILABLE = 2;
  SRFID_RESULT_INVALID_PARAMS = 4;
  SRFID_RESULT_RESPONSE_TIMEOUT = 5;
  SRFID_RESULT_NOT_SUPPORTED = 6;
  SRFID_RESULT_RESPONSE_ERROR = 7;
  SRFID_RESULT_WRONG_ASCII_PASSWORD = 8;
  SRFID_RESULT_ASCII_CONNECTION_REQUIRED = 9;
  SRFID_OPMODE_MFI = 1;
  SRFID_OPMODE_BTLE = 2;
  SRFID_OPMODE_ALL = 3;
  SRFID_CONNTYPE_INVALID = 0;
  SRFID_CONNTYPE_MFI = 1;
  SRFID_CONNTYPE_BTLE = 2;
  SRFID_BATCHMODECONFIG_DISABLE = 0;
  SRFID_BATCHMODECONFIG_AUTO = 1;
  SRFID_BATCHMODECONFIG_ENABLE = 2;
  SRFID_EVENT_READER_APPEARANCE = (1 shl 1);
  SRFID_EVENT_READER_DISAPPEARANCE = (1 shl 2);
  SRFID_EVENT_SESSION_ESTABLISHMENT = (1 shl 3);
  SRFID_EVENT_SESSION_TERMINATION = (1 shl 4);
  SRFID_EVENT_MASK_READ = (1 shl 5);
  SRFID_EVENT_MASK_STATUS = (1 shl 6);
  SRFID_EVENT_MASK_PROXIMITY = (1 shl 7);
  SRFID_EVENT_MASK_TRIGGER = (1 shl 8);
  SRFID_EVENT_MASK_BATTERY = (1 shl 9);
  SRFID_EVENT_MASK_STATUS_OPERENDSUMMARY = (1 shl 10);
  SRFID_DEVMODEL_INVALID = 0;
  SRFID_DEVMODEL_RFID_RFD8500 = 1;
  SRFID_EVENT_STATUS_OPERATION_START = 0;
  SRFID_EVENT_STATUS_OPERATION_STOP = 1;
  SRFID_EVENT_STATUS_OPERATION_BATCHMODE = 2;
  SRFID_EVENT_STATUS_OPERATION_END_SUMMARY = 3;
  SRFID_MEMORYBANK_EPC = 1;
  SRFID_MEMORYBANK_TID = 2;
  SRFID_MEMORYBANK_USER = 3;
  SRFID_MEMORYBANK_RESV = 4;
  SRFID_MEMORYBANK_NONE = 5;
  SRFID_MEMORYBANK_ACCESS = 6;
  SRFID_MEMORYBANK_KILL = 7;
  SRFID_ACCESSOPERATIONCODE_READ = 0;
  SRFID_ACCESSOPERATIONCODE_WRITE = 1;
  SRFID_ACCESSOPERATIONCODE_LOCK = 2;
  SRFID_ACCESSOPERATIONCODE_KILL = 3;
  SRFID_ACCESSOPERATIONCODE_BLOCK_WRITE = 4;
  SRFID_ACCESSOPERATIONCODE_BLOCK_ERASE = 5;
  SRFID_ACCESSOPERATIONCODE_RECOMMISSION = 6;
  SRFID_ACCESSOPERATIONCODE_BLOCK_PERMALOCK = 7;
  SRFID_ACCESSOPERATIONCODE_NXP_SET_EAS = 8;
  SRFID_ACCESSOPERATIONCODE_NXP_READ_PROTECT = 9;
  SRFID_ACCESSOPERATIONCODE_NXP_RESET_READ_PROTECT = 10;
  SRFID_ACCESSOPERATIONCODE_NXP_CHANGE_CONFIG = 22;
  SRFID_ACCESSOPERATIONCODE_IMPINJ_QT_READ = 21;
  SRFID_ACCESSOPERATIONCODE_IMPINJ_QT_WRITE = 20;
  SRFID_ACCESSOPERATIONCODE_NONE = 255;
  SRFID_ACCESSOPERATIONSTATUS_SUCCESS = 0;
  SRFID_ACCESSOPERATIONSTATUS_TAG_NON_SPECIFIC_ERROR = 1;
  SRFID_ACCESSOPERATIONSTATUS_READER_NON_SPECIFIC_ERROR = 2;
  SRFID_ACCESSOPERATIONSTATUS_NO_RESPONSE_FROM_TAG = 3;
  SRFID_ACCESSOPERATIONSTATUS_INSUFFICIENT_POWER = 4;
  SRFID_ACCESSOPERATIONSTATUS_TAG_MEMORY_LOCKED_ERROR = 5;
  SRFID_ACCESSOPERATIONSTATUS_TAG_MEMORY_OVERRUN_ERROR = 6;
  SRFID_ACCESSOPERATIONSTATUS_ZERO_KILL_PASSWORD_ERROR = 7;
  SRFID_ACCESSOPERATIONSTATUS_ERROR = 8;
  SRFID_DIVIDERATIO_DR_8 = 0;
  SRFID_DIVIDERATIO_DR_64_3 = 1;
  SRFID_MODULATION_MV_FM0 = 0;
  SRFID_MODULATION_MV_2 = 1;
  SRFID_MODULATION_MV_4 = 2;
  SRFID_MODULATION_MV_8 = 3;
  SRFID_FORWARDLINKMODULATION_PR_ASK = 0;
  SRFID_FORWARDLINKMODULATION_SSB_ASK = 1;
  SRFID_FORWARDLINKMODULATION_DSB_ASK = 2;
  SRFID_SPECTRALMASKINDICATOR_SI = 1;
  SRFID_SPECTRALMASKINDICATOR_MI = 2;
  SRFID_SPECTRALMASKINDICATOR_DI = 3;
  SRFID_SLFLAG_ASSERTED = 0;
  SRFID_SLFLAG_DEASSERTED = 1;
  SRFID_SLFLAG_ALL = 2;
  SRFID_SESSION_S0 = 0;
  SRFID_SESSION_S1 = 1;
  SRFID_SESSION_S2 = 2;
  SRFID_SESSION_S3 = 3;
  SRFID_INVENTORYSTATE_A = 0;
  SRFID_INVENTORYSTATE_B = 1;
  SRFID_INVENTORYSTATE_AB_FLIP = 2;
  SRFID_TRIGGERTYPE_PRESS = 0;
  SRFID_TRIGGERTYPE_RELEASE = 1;
  SRFID_SELECTTARGET_S0 = 0;
  SRFID_SELECTTARGET_S1 = 1;
  SRFID_SELECTTARGET_S2 = 2;
  SRFID_SELECTTARGET_S3 = 3;
  SRFID_SELECTTARGET_SL = 4;
  SRFID_SELECTACTION_INV_A_NOT_INV_B__OR__ASRT_SL_NOT_DSRT_SL = 0;
  SRFID_SELECTACTION_INV_A__OR__ASRT_SL = 1;
  SRFID_SELECTACTION_NOT_INV_B__OR__NOT_DSRT_SL = 2;
  SRFID_SELECTACTION_INV_A2BB2A_NOT_INV_A__OR__NEG_SL_NOT_ASRT_SL = 3;
  SRFID_SELECTACTION_INV_B_NOT_INV_A__OR__DSRT_SL_NOT_ASRT_SL = 4;
  SRFID_SELECTACTION_INV_B__OR__DSRT_SL = 5;
  SRFID_SELECTACTION_NOT_INV_A__OR__NOT_ASRT_SL = 6;
  SRFID_SELECTACTION_NOT_INV_A2BB2A__OR__NOT_NEG_SL = 7;
  SRFID_ACCESSPERMISSION_ACCESSIBLE = 0;
  SRFID_ACCESSPERMISSION_ACCESSIBLE_PERM = 1;
  SRFID_ACCESSPERMISSION_ACCESSIBLE_SECURED = 2;
  SRFID_ACCESSPERMISSION_ALWAYS_NOT_ACCESSIBLE = 3;
  SRFID_BEEPERCONFIG_HIGH = 0;
  SRFID_BEEPERCONFIG_MEDIUM = 1;
  SRFID_BEEPERCONFIG_LOW = 2;
  SRFID_BEEPERCONFIG_QUIET = 3;
  SRFID_TRIGGEREVENT_PRESSED = 0;
  SRFID_TRIGGEREVENT_RELEASED = 1;
  SRFID_HOPPINGCONFIG_DEFAULT = 0;
  SRFID_HOPPINGCONFIG_ENABLED = 1;
  SRFID_HOPPINGCONFIG_DISABLED = 2;
  SRFID_TID_SHOW = 0;
  SRFID_TID_HIDE_SOME = 1;
  SRFID_TID_HIDE_ALL = 2;
  SRFID_RANGE_NONE = 0;
  SRFID_RANGE_TOGGLE = 1;
  SRFID_RANGE_REDUCE = 2;

type

  // ===== Forward declarations =====
{$M+}
  srfidAccessOperationCode = interface;
  srfidAccessConfig = interface;
  srfidTagFilter = interface;
  srfidAccessCriteria = interface;
  srfidAccessParameters = interface;
  srfidAntennaConfiguration = interface;
  srfidAttribute = interface;
  srfidBatteryEvent = interface;
  srfidDynamicPowerConfig = interface;
  srfidLinkProfile = interface;
  srfidOperEndSummaryEvent = interface;
  srfidPreFilter = interface;
  srfidReaderCapabilitiesInfo = interface;
  srfidReaderInfo = interface;
  srfidReaderVersionInfo = interface;
  srfidRegionInfo = interface;
  srfidRegulatoryConfig = interface;
  srfidReportConfig = interface;
  srfidTagData = interface;
  srfidISdkApiDelegate = interface;
  srfidSingulationConfig = interface;
  srfidTagReportConfig = interface;
  srfidStartTriggerConfig = interface;
  srfidStopTriggerConfig = interface;
  srfidUniqueTagsReport = interface;
  srfidUntraceableConfig = interface;
  srfidISdkApi = interface;
  srfidSdkFactory = interface;

  // ===== Framework typedefs =====
{$M+}
  SRFID_RESULT = Cardinal;
  SRFID_BATCHMODECONFIG = Cardinal;
  SRFID_EVENT_STATUS = Cardinal;
  SRFID_MEMORYBANK = Cardinal;
  SRFID_ACCESSOPERATIONCODE = Cardinal;
  SRFID_ACCESSOPERATIONSTATUS = Cardinal;
  SRFID_DIVIDERATIO = Cardinal;
  SRFID_MODULATION = Cardinal;
  SRFID_FORWARDLINKMODULATION = Cardinal;
  SRFID_SPECTRALMASKINDICATOR = Cardinal;
  SRFID_SLFLAG = Cardinal;
  SRFID_SESSION = Cardinal;
  SRFID_INVENTORYSTATE = Cardinal;
  SRFID_TRIGGERTYPE = Cardinal;
  SRFID_SELECTTARGET = Cardinal;
  SRFID_SELECTACTION = Cardinal;
  SRFID_ACCESSPERMISSION = Cardinal;
  SRFID_BEEPERCONFIG = Cardinal;
  SRFID_TRIGGEREVENT = Cardinal;
  SRFID_HOPPINGCONFIG = Cardinal;
  SRFID_CONFIG_TID = Cardinal;
  SRFID_CONFIG_RANGE = Cardinal;
  // ===== Interface declarations =====

  srfidAccessOperationCodeClass = interface(NSObjectClass)
    ['{39D80CBF-9FF6-48DF-B1AB-29D208B767C3}']
    { class } function getAccessOperationCodeValue
      (value: SRFID_ACCESSOPERATIONCODE): srfidAccessOperationCode; cdecl;
    { class } function getAccessOperationCodeValueFromString(str: NSString)
      : srfidAccessOperationCode; cdecl;
  end;

  srfidAccessOperationCode = interface(NSObject)
    ['{8DD29DFE-B4EB-4364-A772-B8A4C4BF22D6}']
    function initAccessOperationCode(name: NSString;
      aOrdinal: SRFID_ACCESSOPERATIONCODE): Pointer; cdecl;
    function getName: NSString; cdecl;
    function getOrdinal: SRFID_ACCESSOPERATIONCODE; cdecl;
  end;

  TsrfidAccessOperationCode = class
    (TOCGenericImport<srfidAccessOperationCodeClass, srfidAccessOperationCode>)
  end;

  PsrfidAccessOperationCode = Pointer;

  srfidAccessConfigClass = interface(NSObjectClass)
    ['{3567EE70-FB14-4C1D-8CEE-48C079F40F9F}']
  end;

  srfidAccessConfig = interface(NSObject)
    ['{FC3BF662-C13A-442D-840E-F51CD42EEBF5}']
    function getDoSelect: Boolean; cdecl;
    procedure setDoSelect(val: Boolean); cdecl;
    function getPower: SmallInt; cdecl;
    procedure setPower(val: SmallInt); cdecl;
  end;

  TsrfidAccessConfig = class(TOCGenericImport<srfidAccessConfigClass,
    srfidAccessConfig>)
  end;

  PsrfidAccessConfig = Pointer;

  srfidTagFilterClass = interface(NSObjectClass)
    ['{A99B591D-1E5F-4A92-927E-A851FDD8A545}']
  end;

  srfidTagFilter = interface(NSObject)
    ['{9BF9BA37-224D-457F-8546-9DF9EAEDEB68}']
    function getFilterMaskBank: SRFID_MEMORYBANK; cdecl;
    procedure setFilterMaskBank(val: SRFID_MEMORYBANK); cdecl;
    function getFilterMaskStartPos: SmallInt; cdecl;
    procedure setFilterMaskStartPos(val: SmallInt); cdecl;
    function getFilterData: NSString; cdecl;
    procedure setFilterData(val: NSString); cdecl;
    function getFilterMask: NSString; cdecl;
    procedure setFilterMask(val: NSString); cdecl;
    function getFilterMatchLength: SmallInt; cdecl;
    procedure setFilterMatchLength(val: SmallInt); cdecl;
    function getFilterDoMatch: Boolean; cdecl;
    procedure setFilterDoMatch(val: Boolean); cdecl;
  end;

  TsrfidTagFilter = class(TOCGenericImport<srfidTagFilterClass, srfidTagFilter>)
  end;

  PsrfidTagFilter = Pointer;

  srfidAccessCriteriaClass = interface(NSObjectClass)
    ['{82135519-048B-4A5D-8A3C-52D3FB06E6D2}']
  end;

  srfidAccessCriteria = interface(NSObject)
    ['{25D18F78-F5DD-426C-A43A-1F8D649D6859}']
    procedure setTagFilter1(tagFilter1: srfidTagFilter); cdecl;
    function tagFilter1: srfidTagFilter; cdecl;
    procedure setTagFilter2(tagFilter2: srfidTagFilter); cdecl;
    function tagFilter2: srfidTagFilter; cdecl;
  end;

  TsrfidAccessCriteria = class(TOCGenericImport<srfidAccessCriteriaClass,
    srfidAccessCriteria>)
  end;

  PsrfidAccessCriteria = Pointer;

  srfidAccessParametersClass = interface(NSObjectClass)
    ['{F6599955-7377-49CD-A4EC-8AE10A3C953A}']
  end;

  srfidAccessParameters = interface(NSObject)
    ['{54F22F70-189A-479A-B640-52515100DC38}']
    procedure setAccessOperationCode(accessOperationCode
      : SRFID_ACCESSOPERATIONCODE); cdecl;
    function accessOperationCode: SRFID_ACCESSOPERATIONCODE; cdecl;
    procedure setMemoryBank(memoryBank: SRFID_MEMORYBANK); cdecl;
    function memoryBank: SRFID_MEMORYBANK; cdecl;
    procedure setOffset(offset: SmallInt); cdecl;
    function offset: SmallInt; cdecl;
    procedure setLength(length: SmallInt); cdecl;
    function length: SmallInt; cdecl;
    procedure setPassword(password: LongInt); cdecl;
    function password: LongInt; cdecl;
    procedure setDoBlockWrite(doBlockWrite: Boolean); cdecl;
    function doBlockWrite: Boolean; cdecl;
    procedure setDoLock(doLock: Boolean); cdecl;
    function doLock: Boolean; cdecl;
    procedure setBlockPtr(blockPtr: SmallInt); cdecl;
    function blockPtr: SmallInt; cdecl;
    procedure setBlockRange(blockRange: SmallInt); cdecl;
    function blockRange: SmallInt; cdecl;
    procedure setBlockMask(blockMask: NSString); cdecl;
    function blockMask: NSString; cdecl;
    procedure setDataToWrite(dataToWrite: NSString); cdecl;
    function dataToWrite: NSString; cdecl;
    procedure setAccessPermissions(accessPermissions
      : SRFID_ACCESSPERMISSION); cdecl;
    function accessPermissions: SRFID_ACCESSPERMISSION; cdecl;
  end;

  TsrfidAccessParameters = class(TOCGenericImport<srfidAccessParametersClass,
    srfidAccessParameters>)
  end;

  PsrfidAccessParameters = Pointer;

  srfidAntennaConfigurationClass = interface(NSObjectClass)
    ['{DC07D5D6-9BC6-46F3-B058-2C3EAD1A05AA}']
  end;

  srfidAntennaConfiguration = interface(NSObject)
    ['{05D7CFF0-4E42-4AE8-8826-35AE760FC6BE}']
    function getPower: SmallInt; cdecl;
    procedure setPower(val: SmallInt); cdecl;
    function getLinkProfileIdx: SmallInt; cdecl;
    procedure setLinkProfileIdx(val: SmallInt); cdecl;
    function getTari: Integer; cdecl;
    procedure setTari(val: Integer); cdecl;
    function getDoSelect: Boolean; cdecl;
    procedure setDoSelect(val: Boolean); cdecl;
  end;

  TsrfidAntennaConfiguration = class
    (TOCGenericImport<srfidAntennaConfigurationClass,
    srfidAntennaConfiguration>)
  end;

  PsrfidAntennaConfiguration = Pointer;

  srfidAttributeClass = interface(NSObjectClass)
    ['{F0B0B06C-F62A-4F43-9F45-CC387CD5F985}']
  end;

  srfidAttribute = interface(NSObject)
    ['{4CCF1285-FB68-481A-B2C7-15FB36E0E59D}']
    function getAttrNum: Integer; cdecl;
    procedure setAttrNum(val: Integer); cdecl;
    function getAttrVal: NSString; cdecl;
    procedure setAttrVal(val: NSString); cdecl;
    function getOffset: Integer; cdecl;
    procedure setOffset(val: Integer); cdecl;
    function getAttrType: NSString; cdecl;
    procedure setAttrType(val: NSString); cdecl;
    function getPropertyVal: Integer; cdecl;
    procedure setPropertyVal(val: Integer); cdecl;
    function getLength: Integer; cdecl;
    procedure setLength(val: Integer); cdecl;
  end;

  TsrfidAttribute = class(TOCGenericImport<srfidAttributeClass, srfidAttribute>)
  end;

  PsrfidAttribute = Pointer;

  srfidBatteryEventClass = interface(NSObjectClass)
    ['{17EA1287-FAD2-47D3-A0B9-D6AA21B1C018}']
  end;

  srfidBatteryEvent = interface(NSObject)
    ['{2FAADF34-9D40-4A0B-929F-DD856987F5B7}']
    function getPowerLevel: Integer; cdecl;
    procedure setPowerLevel(val: Integer); cdecl;
    function getIsCharging: Boolean; cdecl;
    procedure setIsCharging(val: Boolean); cdecl;
    function getEventCause: NSString; cdecl;
    procedure setEventCause(val: NSString); cdecl;
  end;

  TsrfidBatteryEvent = class(TOCGenericImport<srfidBatteryEventClass,
    srfidBatteryEvent>)
  end;

  PsrfidBatteryEvent = Pointer;

  srfidDynamicPowerConfigClass = interface(NSObjectClass)
    ['{10F103B3-A4E8-4A38-83D7-413364878A18}']
  end;

  srfidDynamicPowerConfig = interface(NSObject)
    ['{BC8259F1-F2F0-4BC9-A048-F4B10C23C480}']
    function getDynamicPowerOptimizationEnabled: Boolean; cdecl;
    procedure setDynamicPowerOptimizationEnabled(val: Boolean); cdecl;
  end;

  TsrfidDynamicPowerConfig = class
    (TOCGenericImport<srfidDynamicPowerConfigClass, srfidDynamicPowerConfig>)
  end;

  PsrfidDynamicPowerConfig = Pointer;

  srfidLinkProfileClass = interface(NSObjectClass)
    ['{E244F9D3-8B6A-46A2-AD0E-4DB4C982F119}']
  end;

  srfidLinkProfile = interface(NSObject)
    ['{4A045A9A-DF99-416F-BDD4-76EA35C66A71}']
    function getRFModeIndex: Integer; cdecl;
    procedure setRFModeIndex(val: Integer); cdecl;
    function getDivideRatio: SRFID_DIVIDERATIO; cdecl;
    procedure setDivideRatio(val: SRFID_DIVIDERATIO); cdecl;
    function getBDR: Integer; cdecl;
    procedure setBDR(val: Integer); cdecl;
    function getModulation: SRFID_MODULATION; cdecl;
    procedure setModulation(val: SRFID_MODULATION); cdecl;
    function getFLModulation: SRFID_FORWARDLINKMODULATION; cdecl;
    procedure setFLModulation(val: SRFID_FORWARDLINKMODULATION); cdecl;
    function getPIE: Integer; cdecl;
    procedure setPIE(val: Integer); cdecl;
    function getMinTari: Integer; cdecl;
    procedure setMinTari(val: Integer); cdecl;
    function getMaxTari: Integer; cdecl;
    procedure setMaxTari(val: Integer); cdecl;
    function getStepTari: Integer; cdecl;
    procedure setStepTari(val: Integer); cdecl;
    function getSpectralMaskIndicator: SRFID_SPECTRALMASKINDICATOR; cdecl;
    procedure setSpectralMaskIndicator(val: SRFID_SPECTRALMASKINDICATOR); cdecl;
    function getEPCHAGTCConformance: Boolean; cdecl;
    procedure setEPCHAGTCConformance(val: Boolean); cdecl;
    function getDivideRatioString: NSString; cdecl;
    function getModulationString: NSString; cdecl;
    function getForwardLinkModulationString: NSString; cdecl;
    function getSpectralMaskIndicatorString: NSString; cdecl;
  end;

  TsrfidLinkProfile = class(TOCGenericImport<srfidLinkProfileClass,
    srfidLinkProfile>)
  end;

  PsrfidLinkProfile = Pointer;

  srfidOperEndSummaryEventClass = interface(NSObjectClass)
    ['{17BF7B3E-C336-43B9-BDF0-84B9D1187BE2}']
  end;

  srfidOperEndSummaryEvent = interface(NSObject)
    ['{46AE8713-7468-4537-8426-7C75229E09EB}']
    function getTotalTimeUs: LongInt; cdecl;
    procedure setTotalTimeUs(val: LongInt); cdecl;
    function getTotalTags: Integer; cdecl;
    procedure setTotalTags(val: Integer); cdecl;
    function getTotalRounds: Integer; cdecl;
    procedure setTotalRounds(val: Integer); cdecl;
  end;

  TsrfidOperEndSummaryEvent = class
    (TOCGenericImport<srfidOperEndSummaryEventClass, srfidOperEndSummaryEvent>)
  end;

  PsrfidOperEndSummaryEvent = Pointer;

  srfidPreFilterClass = interface(NSObjectClass)
    ['{622D78E4-68E1-43C3-84C1-42C0D2C4FE5B}']
  end;

  srfidPreFilter = interface(NSObject)
    ['{49C7CD06-0BDB-4801-8D9F-607731DDE82D}']
    function getTarget: SRFID_SELECTTARGET; cdecl;
    procedure setTarget(val: SRFID_SELECTTARGET); cdecl;
    function getAction: SRFID_SELECTACTION; cdecl;
    procedure setAction(val: SRFID_SELECTACTION); cdecl;
    function getMemoryBank: SRFID_MEMORYBANK; cdecl;
    procedure setMemoryBank(val: SRFID_MEMORYBANK); cdecl;
    function getMaskStartPos: Integer; cdecl;
    procedure setMaskStartPos(val: Integer); cdecl;
    function getMatchPattern: NSString; cdecl;
    procedure setMatchPattern(val: NSString); cdecl;
  end;

  TsrfidPreFilter = class(TOCGenericImport<srfidPreFilterClass, srfidPreFilter>)
  end;

  PsrfidPreFilter = Pointer;

  srfidReaderCapabilitiesInfoClass = interface(NSObjectClass)
    ['{B743CA08-2A63-41E9-8061-4FC480B79BC8}']
  end;

  srfidReaderCapabilitiesInfo = interface(NSObject)
    ['{8458117F-5696-43DD-B4CA-4C219EA7ED21}']
    function getSerialNumber: NSString; cdecl;
    procedure setSerialNumber(val: NSString); cdecl;
    function getModel: NSString; cdecl;
    procedure setModel(val: NSString); cdecl;
    function getManufacturer: NSString; cdecl;
    procedure setManufacturer(val: NSString); cdecl;
    function getManufacturingDate: NSString; cdecl;
    procedure setManufacturingDate(val: NSString); cdecl;
    function getScannerName: NSString; cdecl;
    procedure setScannerName(val: NSString); cdecl;
    function getAsciiVersion: NSString; cdecl;
    procedure setAsciiVersion(val: NSString); cdecl;
    function getAirProtocolVersion: NSString; cdecl;
    procedure setAirProtocolVersion(val: NSString); cdecl;
    function getBDAddress: NSString; cdecl;
    procedure setBDAddress(val: NSString); cdecl;
    function getSelectFilterNum: Integer; cdecl;
    procedure setSelectFilterNum(val: Integer); cdecl;
    function getMinPower: Integer; cdecl;
    procedure setMinPower(val: Integer); cdecl;
    function getMaxPower: Integer; cdecl;
    procedure setMaxPower(val: Integer); cdecl;
    function getPowerStep: Integer; cdecl;
    procedure setPowerStep(val: Integer); cdecl;
    function getMaxAccessSequence: Integer; cdecl;
    procedure setMaxAccessSequence(val: Integer); cdecl;
  end;

  TsrfidReaderCapabilitiesInfo = class
    (TOCGenericImport<srfidReaderCapabilitiesInfoClass,
    srfidReaderCapabilitiesInfo>)
  end;

  PsrfidReaderCapabilitiesInfo = Pointer;

  srfidReaderInfoClass = interface(NSObjectClass)
    ['{FA5C8F6C-CDC1-4956-AD74-BC2F09BF2312}']
  end;

  srfidReaderInfo = interface(NSObject)
    ['{816EDC3C-B912-4BFB-89FB-B1D4DB225FB1}']
    function init: Pointer; cdecl;
    procedure dealloc; cdecl;
    procedure setReaderID(readerID: Integer); cdecl;
    procedure setConnectionType(connectionType: Integer); cdecl;
    procedure setActive(active: Boolean); cdecl;
    procedure setReaderName(readerName: NSString); cdecl;
    procedure setReaderModel(readerModel: Integer); cdecl;
    function getReaderID: Integer; cdecl;
    function getConnectionType: Integer; cdecl;
    function isActive: Boolean; cdecl;
    function getReaderName: NSString; cdecl;
    function getReaderModel: Integer; cdecl;
  end;

  TsrfidReaderInfo = class(TOCGenericImport<srfidReaderInfoClass,
    srfidReaderInfo>)
  end;

  PsrfidReaderInfo = Pointer;

  srfidReaderVersionInfoClass = interface(NSObjectClass)
    ['{1909B30C-2BA0-4D68-8E8E-692DDBBA25AD}']
  end;

  srfidReaderVersionInfo = interface(NSObject)
    ['{4BA049A3-4A3C-4D3F-A6B1-9A68774B8C7B}']
    function getDeviceVersion: NSString; cdecl;
    procedure setDeviceVersion(val: NSString); cdecl;
    function getBluetoothVersion: NSString; cdecl;
    procedure setBluetoothVersion(val: NSString); cdecl;
    function getNGEVersion: NSString; cdecl;
    procedure setNGEVersion(val: NSString); cdecl;
    function getPL33: NSString; cdecl;
    procedure setPL33(val: NSString); cdecl;
  end;

  TsrfidReaderVersionInfo = class(TOCGenericImport<srfidReaderVersionInfoClass,
    srfidReaderVersionInfo>)
  end;

  PsrfidReaderVersionInfo = Pointer;

  srfidRegionInfoClass = interface(NSObjectClass)
    ['{BAB45100-3E87-419E-B6BB-D04EF4F6D43C}']
  end;

  srfidRegionInfo = interface(NSObject)
    ['{1B335558-4A58-4933-8A4C-793D4F4EC1A5}']
    function getRegionCode: NSString; cdecl;
    procedure setRegionCode(val: NSString); cdecl;
    function getRegionName: NSString; cdecl;
    procedure setRegionName(val: NSString); cdecl;
  end;

  TsrfidRegionInfo = class(TOCGenericImport<srfidRegionInfoClass,
    srfidRegionInfo>)
  end;

  PsrfidRegionInfo = Pointer;

  srfidRegulatoryConfigClass = interface(NSObjectClass)
    ['{47DA715C-4840-4959-81AD-83254C3E1253}']
  end;

  srfidRegulatoryConfig = interface(NSObject)
    ['{9D43887D-4F12-4C04-9E14-3F0B370B7619}']
    function getRegionCode: NSString; cdecl;
    procedure setRegionCode(val: NSString); cdecl;
    function getEnabledChannelsList: NSArray; cdecl;
    procedure setEnabledChannelsList(val: NSArray); cdecl;
    procedure addEnabledChannel(channelId: Integer); cdecl;
    function getHoppingConfig: SRFID_HOPPINGCONFIG; cdecl;
    procedure setHoppingConfig(val: SRFID_HOPPINGCONFIG); cdecl;
  end;

  TsrfidRegulatoryConfig = class(TOCGenericImport<srfidRegulatoryConfigClass,
    srfidRegulatoryConfig>)
  end;

  PsrfidRegulatoryConfig = Pointer;

  srfidReportConfigClass = interface(NSObjectClass)
    ['{181F6378-7DE0-41AD-95CF-3925BF41E996}']
  end;

  srfidReportConfig = interface(NSObject)
    ['{2E291C4E-15EA-4582-90C7-3E15BAC5BF18}']
    function getIncFirstSeenTime: Boolean; cdecl;
    procedure setIncFirstSeenTime(val: Boolean); cdecl;
    function getIncLastSeenTime: Boolean; cdecl;
    procedure setIncLastSeenTime(val: Boolean); cdecl;
    function getIncPC: Boolean; cdecl;
    procedure setIncPC(val: Boolean); cdecl;
    function getIncRSSI: Boolean; cdecl;
    procedure setIncRSSI(val: Boolean); cdecl;
    function getIncPhase: Boolean; cdecl;
    procedure setIncPhase(val: Boolean); cdecl;
    function getIncChannelIndex: Boolean; cdecl;
    procedure setIncChannelIndex(val: Boolean); cdecl;
    function getIncTagSeenCount: Boolean; cdecl;
    procedure setIncTagSeenCount(val: Boolean); cdecl;
  end;

  TsrfidReportConfig = class(TOCGenericImport<srfidReportConfigClass,
    srfidReportConfig>)
  end;

  PsrfidReportConfig = Pointer;

  srfidTagDataClass = interface(NSObjectClass)
    ['{7AFD5625-D2A9-48FB-B0BE-02DB4E7CD3CF}']
  end;

  srfidTagData = interface(NSObject)
    ['{1C829C50-F4F0-428D-9850-73230B0128E6}']
    function getTagId: NSString; cdecl;
    procedure setTagId(val: NSString); cdecl;
    function getFirstSeenTime: LongInt; cdecl;
    procedure setFirstSeenTime(val: LongInt); cdecl;
    function getLastSeenTime: LongInt; cdecl;
    procedure setLastSeenTime(val: LongInt); cdecl;
    function getPC: NSString; cdecl;
    procedure setPC(val: NSString); cdecl;
    function getPeakRSSI: SmallInt; cdecl;
    procedure setPeakRSSI(val: SmallInt); cdecl;
    function getChannelIndex: SmallInt; cdecl;
    procedure setChannelIndex(val: SmallInt); cdecl;
    function getPhaseInfo: SmallInt; cdecl;
    procedure setPhaseInfo(val: SmallInt); cdecl;
    function getTagSeenCount: SmallInt; cdecl;
    procedure setTagSeenCount(val: SmallInt); cdecl;
    function getOpCode: srfidAccessOperationCode; cdecl;
    procedure setOpCode(val: srfidAccessOperationCode); cdecl;
    function getOperationSucceed: Boolean; cdecl;
    procedure setOperationSucceed(val: Boolean); cdecl;
    function getOperationStatus: NSString; cdecl;
    procedure setOperationStatus(val: NSString); cdecl;
    function getMemoryBank: SRFID_MEMORYBANK; cdecl;
    procedure setMemoryBank(val: SRFID_MEMORYBANK); cdecl;
    function getMemoryBankData: NSString; cdecl;
    procedure setMemoryBankData(val: NSString); cdecl;
    procedure setPermaLockData(val: NSString); cdecl;
    function getPermaLockData: NSString; cdecl;
    procedure setModifiedWordCount(val: Integer); cdecl;
    function getModifiedWordCount: Integer; cdecl;
    procedure setg2v2Result(val: NSString); cdecl;
    function getg2v2Result: NSString; cdecl;
    procedure setg2v2Response(val: NSString); cdecl;
    function getg2v2Response: NSString; cdecl;
  end;

  TsrfidTagData = class(TOCGenericImport<srfidTagDataClass, srfidTagData>)
  end;

  PsrfidTagData = Pointer;

  srfidSingulationConfigClass = interface(NSObjectClass)
    ['{ECA05A16-135A-49FC-9222-B79DE02BD939}']
  end;

  srfidSingulationConfig = interface(NSObject)
    ['{FE8A3EBE-4CFA-4672-9451-24F1B5489D66}']
    function getSLFlag: SRFID_SLFLAG; cdecl;
    procedure setSlFlag(val: SRFID_SLFLAG); cdecl;
    function getSession: SRFID_SESSION; cdecl;
    procedure setSession(val: SRFID_SESSION); cdecl;
    function getInventoryState: SRFID_INVENTORYSTATE; cdecl;
    procedure setInventoryState(val: SRFID_INVENTORYSTATE); cdecl;
    function getTagPopulation: Integer; cdecl;
    procedure setTagPopulation(val: Integer); cdecl;
  end;

  TsrfidSingulationConfig = class(TOCGenericImport<srfidSingulationConfigClass,
    srfidSingulationConfig>)
  end;

  PsrfidSingulationConfig = Pointer;

  srfidTagReportConfigClass = interface(NSObjectClass)
    ['{C75369A5-0DEE-4C4B-A95B-CE30CDD46F4A}']
  end;

  srfidTagReportConfig = interface(NSObject)
    ['{9512FEAE-2178-4DF6-B07F-9AAAF2D6B276}']
    function getIncFirstSeenTime: Boolean; cdecl;
    procedure setIncFirstSeenTime(val: Boolean); cdecl;
    function getIncLastSeenTime: Boolean; cdecl;
    procedure setIncLastSeenTime(val: Boolean); cdecl;
    function getIncPC: Boolean; cdecl;
    procedure setIncPC(val: Boolean); cdecl;
    function getIncRSSI: Boolean; cdecl;
    procedure setIncRSSI(val: Boolean); cdecl;
    function getIncPhase: Boolean; cdecl;
    procedure setIncPhase(val: Boolean); cdecl;
    function getIncChannelIdx: Boolean; cdecl;
    procedure setIncChannelIdx(val: Boolean); cdecl;
    function getIncTagSeenCount: Boolean; cdecl;
    procedure setIncTagSeenCount(val: Boolean); cdecl;
  end;

  TsrfidTagReportConfig = class(TOCGenericImport<srfidTagReportConfigClass,
    srfidTagReportConfig>)
  end;

  PsrfidTagReportConfig = Pointer;

  srfidStartTriggerConfigClass = interface(NSObjectClass)
    ['{D2B4094D-C55A-4421-BCDF-32144A358AB0}']
  end;

  srfidStartTriggerConfig = interface(NSObject)
    ['{BBB40DCC-E9BF-43FE-9195-874B077D8E84}']
    function getStartOnHandheldTrigger: Boolean; cdecl;
    procedure setStartOnHandheldTrigger(val: Boolean); cdecl;
    function getTriggerType: SRFID_TRIGGERTYPE; cdecl;
    procedure setTriggerType(val: SRFID_TRIGGERTYPE); cdecl;
    function getStartDelay: Cardinal; cdecl;
    procedure setStartDelay(val: Cardinal); cdecl;
    function getRepeatMonitoring: Boolean; cdecl;
    procedure setRepeatMonitoring(val: Boolean); cdecl;
  end;

  TsrfidStartTriggerConfig = class
    (TOCGenericImport<srfidStartTriggerConfigClass, srfidStartTriggerConfig>)
  end;

  PsrfidStartTriggerConfig = Pointer;

  srfidStopTriggerConfigClass = interface(NSObjectClass)
    ['{D8ABFEF9-6932-4814-9B5B-0C18DFDA2954}']
  end;

  srfidStopTriggerConfig = interface(NSObject)
    ['{0FCD7D0D-4C0C-4D10-84D8-EE3D687003DD}']
    function getStopOnHandheldTrigger: Boolean; cdecl;
    procedure setStopOnHandheldTrigger(val: Boolean); cdecl;
    function getTriggerType: SRFID_TRIGGERTYPE; cdecl;
    procedure setTriggerType(val: SRFID_TRIGGERTYPE); cdecl;
    function getStopOnTagCount: Boolean; cdecl;
    procedure setStopOnTagCount(val: Boolean); cdecl;
    function getStopTagCount: Cardinal; cdecl;
    procedure setStopTagCount(val: Cardinal); cdecl;
    function getStopOnTimeout: Boolean; cdecl;
    procedure setStopOnTimeout(val: Boolean); cdecl;
    function getStopTimeout: Cardinal; cdecl;
    procedure setStopTimout(val: Cardinal); cdecl;
    function getStopOnInventoryCount: Boolean; cdecl;
    procedure setStopOnInventoryCount(val: Boolean); cdecl;
    function getStopInventoryCount: Cardinal; cdecl;
    procedure setStopInventoryCount(val: Cardinal); cdecl;
    function getStopOnAccessCount: Boolean; cdecl;
    procedure setStopOnAccessCount(val: Boolean); cdecl;
    function getStopAccessCount: Cardinal; cdecl;
    procedure setStopAccessCount(val: Cardinal); cdecl;
  end;

  TsrfidStopTriggerConfig = class(TOCGenericImport<srfidStopTriggerConfigClass,
    srfidStopTriggerConfig>)
  end;

  PsrfidStopTriggerConfig = Pointer;

  srfidUniqueTagsReportClass = interface(NSObjectClass)
    ['{F2C1EB09-692F-4D42-9B3E-8C30993C38C0}']
  end;

  srfidUniqueTagsReport = interface(NSObject)
    ['{9188AB94-52DB-470B-BB0D-E48217143ECA}']
    function getUniqueTagsReportEnabled: Boolean; cdecl;
    procedure setUniqueTagsReportEnabled(val: Boolean); cdecl;
  end;

  TsrfidUniqueTagsReport = class(TOCGenericImport<srfidUniqueTagsReportClass,
    srfidUniqueTagsReport>)
  end;

  PsrfidUniqueTagsReport = Pointer;

  srfidUntraceableConfigClass = interface(NSObjectClass)
    ['{53CC9375-32E4-415E-9C2E-78A682634B42}']
  end;

  srfidUntraceableConfig = interface(NSObject)
    ['{C7EBC28B-4CCE-4FC4-A65F-593A183E6F16}']
    function getAssertU: Boolean; cdecl;
    procedure setAssertU(val: Boolean); cdecl;
    function getShowEpc: Boolean; cdecl;
    procedure setShowEpc(val: Boolean); cdecl;
    function getTid: SRFID_CONFIG_TID; cdecl;
    procedure setTid(val: SRFID_CONFIG_TID); cdecl;
    function getShowUser: Boolean; cdecl;
    procedure setShowUser(val: Boolean); cdecl;
    function getEpcLen: Integer; cdecl;
    procedure setEpcLen(val: Integer); cdecl;
    function getRange: SRFID_CONFIG_RANGE; cdecl;
    procedure setRange(val: SRFID_CONFIG_RANGE); cdecl;
  end;

  TsrfidUntraceableConfig = class(TOCGenericImport<srfidUntraceableConfigClass,
    srfidUntraceableConfig>)
  end;

  PsrfidUntraceableConfig = Pointer;

  srfidSdkFactoryClass = interface(NSObjectClass)
    ['{A36AC58E-A1F8-4CF8-855B-057AE294A73D}']
    { class } function createRfidSdkApiInstance: Pointer; cdecl;
  end;

  srfidSdkFactory = interface(NSObject)
    ['{3D7EF0C8-F48C-4E2A-BC8F-BCF71D98C0D0}']
  end;

  TsrfidSdkFactory = class(TOCGenericImport<srfidSdkFactoryClass,
    srfidSdkFactory>)
  end;

  PsrfidSdkFactory = Pointer;

  // ===== Protocol declarations =====

  srfidISdkApiDelegate = interface(IObjectiveC)
    ['{4944B1F5-D2B0-4939-BEEE-4514BE9F27AF}']
    procedure srfidEventReaderAppeared(availableReader: srfidReaderInfo); cdecl;
    procedure srfidEventReaderDisappeared(readerID: Integer); cdecl;
    procedure srfidEventCommunicationSessionEstablished
      (activeReader: srfidReaderInfo); cdecl;
    procedure srfidEventCommunicationSessionTerminated
      (readerID: Integer); cdecl;
    procedure srfidEventReadNotify(readerID: Integer;
      aTagData: srfidTagData); cdecl;
    procedure srfidEventStatusNotify(readerID: Integer;
      aEvent: SRFID_EVENT_STATUS; aNotification: Pointer); cdecl;
    procedure srfidEventProximityNotify(readerID: Integer;
      aProximityPercent: Integer); cdecl;
    procedure srfidEventTriggerNotify(readerID: Integer;
      aTriggerEvent: SRFID_TRIGGEREVENT); cdecl;
    procedure srfidEventBatteryNotity(readerID: Integer;
      aBatteryEvent: srfidBatteryEvent); cdecl;
  end;

  srfidISdkApi = interface(IObjectiveC)
    ['{D4F09F21-93A4-45B1-9A97-CD87DFDFF059}']
    function srfidGetSdkVersion: NSString; cdecl;
    function srfidSetDelegate(delegate: Pointer): SRFID_RESULT; cdecl;
    function srfidSubsribeForEvents(sdkEventsMask: Integer)
      : SRFID_RESULT; cdecl;
    function srfidUnsubsribeForEvents(sdkEventsMask: Integer)
      : SRFID_RESULT; cdecl;
    function srfidSetOperationalMode(operationalMode: Integer)
      : SRFID_RESULT; cdecl;
    function srfidGetAvailableReadersList(availableReadersList: NSMutableArray)
      : SRFID_RESULT; cdecl;
    function srfidGetActiveReadersList(activeReadersList: NSMutableArray)
      : SRFID_RESULT; cdecl;
    function srfidEstablishCommunicationSession(readerID: Integer)
      : SRFID_RESULT; cdecl;
    function srfidTerminateCommunicationSession(readerID: Integer)
      : SRFID_RESULT; cdecl;
    function srfidEstablishAsciiConnection(readerID: Integer;
      aPassword: NSString): SRFID_RESULT; cdecl;
    function srfidEnableAvailableReadersDetection(enable: Boolean)
      : SRFID_RESULT; cdecl;
    function srfidEnableAutomaticSessionReestablishment(enable: Boolean)
      : SRFID_RESULT; cdecl;
    function srfidStartRapidRead(readerID: Integer;
      aReportConfig: srfidReportConfig; aAccessConfig: srfidAccessConfig;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidStopRapidRead(readerID: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidStartInventory(readerID: Integer;
      aMemoryBank: SRFID_MEMORYBANK; aReportConfig: srfidReportConfig;
      aAccessConfig: srfidAccessConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidStopInventory(readerID: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetSupportedLinkProfiles(readerID: Integer;
      aLinkProfilesList: NSMutableArray; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetAntennaConfiguration(readerID: Integer;
      aAntennaConfiguration: srfidAntennaConfiguration;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetAntennaConfiguration(readerID: Integer;
      aAntennaConfiguration: srfidAntennaConfiguration;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidGetDpoConfiguration(readerID: Integer;
      aDpoConfiguration: srfidDynamicPowerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetDpoConfiguration(readerID: Integer;
      aDpoConfiguration: srfidDynamicPowerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetSingulationConfiguration(readerID: Integer;
      aSingulationConfig: srfidSingulationConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetSingulationConfiguration(readerID: Integer;
      aSingulationConfig: srfidSingulationConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetTagReportConfiguration(readerID: Integer;
      aTagReportConfig: srfidTagReportConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetTagReportConfiguration(readerID: Integer;
      aTagReportConfig: srfidTagReportConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetReaderVersionInfo(readerID: Integer;
      aReaderVersionInfo: srfidReaderVersionInfo; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetReaderCapabilitiesInfo(readerID: Integer;
      aReaderCapabilitiesInfo: srfidReaderCapabilitiesInfo;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidGetStartTriggerConfiguration(readerID: Integer;
      aStartTriggeConfig: srfidStartTriggerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetStartTriggerConfiguration(readerID: Integer;
      aStartTriggeConfig: srfidStartTriggerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetStopTriggerConfiguration(readerID: Integer;
      aStopTriggeConfig: srfidStopTriggerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetStopTriggerConfiguration(readerID: Integer;
      aStopTriggeConfig: srfidStopTriggerConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetSupportedRegions(readerID: Integer;
      aSupportedRegions: NSMutableArray; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetRegionInfo(readerID: Integer; aRegionCode: NSString;
      aSupportedChannels: NSMutableArray; aHoppingConfigurable: PBoolean;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidGetRegulatoryConfig(readerID: Integer;
      aRegulatoryConfig: srfidRegulatoryConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetRegulatoryConfig(readerID: Integer;
      aRegulatoryConfig: srfidRegulatoryConfig; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetBeeperConfig(readerID: Integer; aBeeperConfig: Cardinal;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetBeeperConfig(readerID: Integer;
      aBeeperConfig: SRFID_BEEPERCONFIG; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetPreFilters(readerID: Integer; aPreFilters: NSMutableArray;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetPreFilters(readerID: Integer; aPreFilters: NSMutableArray;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName('srfidStartTagLocationing:aTagEpcId:aStatusMessage:')]
    function srfidStartTagLocationingATagEpcIdAStatusMessage(readerID: Integer;
      aTagEpcId: NSString; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidStartTagLocationing:aTagEpcId:aTagEpcMask:aStatusMessage:')]
    function srfidStartTagLocationingATagEpcIdATagEpcMaskAStatusMessage
      (readerID: Integer; aTagEpcId: NSString; aTagEpcMask: NSString;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidStopTagLocationing(readerID: Integer;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSaveReaderConfiguration(readerID: Integer;
      aSaveCustomDefaults: Boolean; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidRestoreReaderConfiguration(readerID: Integer;
      aRestoreFactoryDefaults: Boolean; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    [MethodName
      ('srfidReadTag:aTagID:aAccessTagData:aMemoryBank:aOffset:aLength:aPassword:aStatusMessage:')
      ]
    function srfidReadTagATagIDAAccessTagDataAMemoryBankAOffsetALengthAPasswordAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aMemoryBank: SRFID_MEMORYBANK; aOffset: SmallInt; aLength: SmallInt;
      aPassword: LongInt; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidWriteTag:aTagID:aAccessTagData:aMemoryBank:aOffset:aData:aPassword:aDoBlockWrite:aStatusMessage:')
      ]
    function srfidWriteTagATagIDAAccessTagDataAMemoryBankAOffsetADataAPasswordADoBlockWriteAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aMemoryBank: SRFID_MEMORYBANK; aOffset: SmallInt; aData: NSString;
      aPassword: LongInt; aDoBlockWrite: Boolean; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    [MethodName('srfidKillTag:aTagID:aAccessTagData:aPassword:aStatusMessage:')]
    function srfidKillTagATagIDAAccessTagDataAPasswordAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aPassword: LongInt; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidLockTag:aTagID:aAccessTagData:aMemoryBank:aAccessPermissions:aPassword:aStatusMessage:')
      ]
    function srfidLockTagATagIDAAccessTagDataAMemoryBankAAccessPermissionsAPasswordAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aMemoryBank: SRFID_MEMORYBANK; aAccessPermissions: SRFID_ACCESSPERMISSION;
      aPassword: LongInt; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidBlockErase:aTagID:aAccessTagData:aMemoryBank:aOffset:aLength:aPassword:aStatusMessage:')
      ]
    function srfidBlockEraseATagIDAAccessTagDataAMemoryBankAOffsetALengthAPasswordAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aMemoryBank: SRFID_MEMORYBANK; aOffset: SmallInt; aLength: SmallInt;
      aPassword: LongInt; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidBlockPermaLock:aTagID:aAccessTagData:aMemoryBank:aDoLock:aBlockPtr:aBlockRange:aBlockMask:aPassword:aStatusMessage:')
      ]
    function srfidBlockPermaLockATagIDAAccessTagDataAMemoryBankADoLockABlockPtrABlockRangeABlockMaskAPasswordAStatusMessage
      (readerID: Integer; aTagID: NSString; aAccessTagData: srfidTagData;
      aMemoryBank: SRFID_MEMORYBANK; aDoLock: Boolean; aBlockPtr: SmallInt;
      aBlockRange: SmallInt; aBlockMask: NSString; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidReadTag:aAccessCriteria:aAccessTagData:aMemoryBank:aOffset:aLength:aPassword:aStatusMessage:')
      ]
    function srfidReadTagAAccessCriteriaAAccessTagDataAMemoryBankAOffsetALengthAPasswordAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aLength: SmallInt; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidWriteTag:aAccessCriteria:aAccessTagData:aMemoryBank:aOffset:aData:aPassword:aDoBlockWrite:aStatusMessage:')
      ]
    function srfidWriteTagAAccessCriteriaAAccessTagDataAMemoryBankAOffsetADataAPasswordADoBlockWriteAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aData: NSString; aPassword: LongInt;
      aDoBlockWrite: Boolean; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidKillTag:aAccessCriteria:aAccessTagData:aPassword:aStatusMessage:')]
    function srfidKillTagAAccessCriteriaAAccessTagDataAPasswordAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidLockTag:aAccessCriteria:aAccessTagData:aMemoryBank:aAccessPermissions:aPassword:aStatusMessage:')
      ]
    function srfidLockTagAAccessCriteriaAAccessTagDataAMemoryBankAAccessPermissionsAPasswordAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aMemoryBank: SRFID_MEMORYBANK;
      aAccessPermissions: SRFID_ACCESSPERMISSION; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidBlockErase:aAccessCriteria:aAccessTagData:aMemoryBank:aOffset:aLength:aPassword:aStatusMessage:')
      ]
    function srfidBlockEraseAAccessCriteriaAAccessTagDataAMemoryBankAOffsetALengthAPasswordAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aLength: SmallInt; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName
      ('srfidBlockPermaLock:aAccessCriteria:aAccessTagData:aMemoryBank:aDoLock:aBlockPtr:aBlockRange:aBlockMask:aPassword:aStatusMessage:')
      ]
    function srfidBlockPermaLockAAccessCriteriaAAccessTagDataAMemoryBankADoLockABlockPtrABlockRangeABlockMaskAPasswordAStatusMessage
      (readerID: Integer; aAccessCriteria: srfidAccessCriteria;
      aAccessTagData: srfidTagData; aMemoryBank: SRFID_MEMORYBANK;
      aDoLock: Boolean; aBlockPtr: SmallInt; aBlockRange: SmallInt;
      aBlockMask: NSString; aPassword: LongInt; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidRequestBatteryStatus(readerID: Integer): SRFID_RESULT; cdecl;
    function srfidGetBatchModeConfig(readerID: Integer;
      aBatchModeConfig: Cardinal; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetBatchModeConfig(readerID: Integer;
      aBatchModeConfig: SRFID_BATCHMODECONFIG; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidgetTags(readerID: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetConfigurations: SRFID_RESULT; cdecl;
    function srfidPurgeTags(readerID: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    [MethodName
      ('srfidSetAttribute:attributeNumber:attributeValue:attributeType:aStatusMessage:')
      ]
    function srfidSetAttributeAttributeNumberAttributeValueAttributeTypeAStatusMessage
      (readerID: Integer; attributeNumber: Integer; attributeValue: Integer;
      attributeType: NSString; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    [MethodName('srfidSetAttribute:aAttrInfo:aStatusMessage:')]
    function srfidSetAttributeAAttrInfoAStatusMessage(readerID: Integer;
      aAttrInfo: srfidAttribute; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidGetAttribute(readerID: Integer; aAttrNum: Integer;
      aAttrInfo: srfidAttribute; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidLocateReader(readerID: Integer; doEnabled: Boolean;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetAccessCommandOperationWaitTimeout(readerID: Integer;
      aTimeoutMs: Integer): SRFID_RESULT; cdecl;
    function srfidEnableDebugLog: SRFID_RESULT; cdecl;
    function srfidDisableDebugLog: SRFID_RESULT; cdecl;
    function srfidResetDebugLog: SRFID_RESULT; cdecl;
    function srfidRetrieveDebugLog(debugLog: NSString): SRFID_RESULT; cdecl;
    function srfidReadTagAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aLength: SmallInt; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidWriteTagAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aData: NSString; aPassword: LongInt;
      aDoBlockWrite: Boolean; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidLockTagAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aMemoryBank: SRFID_MEMORYBANK;
      aAccessPermissions: SRFID_ACCESSPERMISSION; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidKillTagAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidBlockPermaLockAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aMemoryBank: SRFID_MEMORYBANK;
      aDoLock: Boolean; aBlockPtr: SmallInt; aBlockRange: SmallInt;
      aBlockMask: NSString; aPassword: LongInt; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidBlockEraseAsync(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aMemoryBank: SRFID_MEMORYBANK;
      aOffset: SmallInt; aLength: SmallInt; aPassword: LongInt;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidPerformAccessInSequence(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aAccessParameters: NSArray;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetUniqueTagReportConfiguration(readerID: Integer;
      aUtrConfiguration: srfidUniqueTagsReport; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidGetUniqueTagReportConfiguration(readerID: Integer;
      aUtrConfiguration: srfidUniqueTagsReport; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidSetCommandResponseTimeout(readerID: Integer;
      atimeout: Integer): SRFID_RESULT; cdecl;
    function srfidAuthenticate(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aAccessConfig: srfidAccessConfig;
      aPassword: LongInt; aMsgLength: Integer; aMsgData: NSString;
      aRespLength: Integer; aCsi: Integer; aDoSendRes: Boolean;
      aDoIncresplen: Boolean; aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidUntraceable(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aAccessConfig: srfidAccessConfig;
      aPassword: LongInt; aUntraceableConfig: srfidUntraceableConfig;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidReadBuffer(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aAccessConfig: srfidAccessConfig;
      aPassword: LongInt; aWordPtr: Integer; aBitCount: Integer;
      aStatusMessage: NSString): SRFID_RESULT; cdecl;
    function srfidSetCryptoSuite(readerID: Integer;
      aAccessCriteria: srfidAccessCriteria; aAccessConfig: srfidAccessConfig;
      aPassword: LongInt; aKeyId: Integer; aIChallenge: NSString;
      aIncCustom: Boolean; aProfile: Integer; aOffset: Integer;
      aBlockCount: Integer; aProtMode: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
    function srfidStopOperation(readerID: Integer; aStatusMessage: NSString)
      : SRFID_RESULT; cdecl;
  end;

  // ===== External functions =====

const
  libZebra = '/System/Library/Frameworks/Zebra.framework/Zebra';

implementation

{$IF defined(IOS) and NOT defined(CPUARM)}

uses
  Posix.Dlfcn;

var
  ZebraModule: THandle;

{$ENDIF IOS}
{$IF defined(IOS) and NOT defined(CPUARM)}

initialization

ZebraModule := dlopen(MarshaledAString(libZebra), RTLD_LAZY);

finalization

dlclose(ZebraModule);
{$ENDIF IOS}

end.
