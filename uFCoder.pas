unit uFCoder;

interface
const
     {$IfDef win32}
       DLL_NAME = '.\\ufr-lib\\windows\\x86\\uFCoder-x86.dll';
     {$Else}
        DLL_NAME = '.\\ufr-lib\\windows\\x86_64\\uFCoder-x86_64.dll';
     {$EndIf}
     {$ifDef MACOS}
       DLL_NAME = '.\\ufr-lib\\osx\\x86_64\\libuFCoder.dylib';
     {$EndIf}
const
  MIFARE_AUTHENT1A    = $60;
  MIFARE_AUTHENT1B    = $61;
  DL_OK               = 0;
type
  DL_STATUS           = LongInt;

//DLOGIC CARD TYPE
const  DL_MIFARE_ULTRALIGHT		      =	 $01;
const  DL_MIFARE_ULTRALIGHT_EV1_11	=	 $02;
const  DL_MIFARE_ULTRALIGHT_EV1_21	=	 $03;
const  DL_MIFARE_ULTRALIGHT_C		    =	 $04;
const  DL_NTAG_203				          =  $05;
const  DL_NTAG_210				          =  $06;
const  DL_NTAG_212				          =  $07;
const  DL_NTAG_213				          =  $08;
const  DL_NTAG_215				          =  $09;
const  DL_NTAG_216				          =  $0A;

const  DL_MIFARE_MINI				        =  $20;
const  DL_MIFARE_CLASSIC_1K			    =  $21;
const  DL_MIFARE_CLASSIC_4K			    =  $22;
const  DL_MIFARE_PLUS_S_2K			    =  $23;
const  DL_MIFARE_PLUS_S_4K			    =  $24;
const  DL_MIFARE_PLUS_X_2K			    =  $25;
const  DL_MIFARE_PLUS_X_4K			    =  $26;
const  DL_MIFARE_DESFIRE			      =  $27;
const  DL_MIFARE_DESFIRE_EV1_2K		  =  $28;
const  DL_MIFARE_DESFIRE_EV1_4K		  =  $29;
const  DL_MIFARE_DESFIRE_EV1_8K		  =  $2A;


function UFR_Status2String(status: Longint): PAnsiChar stdcall;

function ReaderOpen: DL_STATUS stdcall;

function ReaderOpenEx(reader_type: Longint;
                      port_name: PAnsiChar;
                      port_interface: Longint;
                      arg: PAnsiChar): DL_STATUS stdcall;

function ReaderReset: DL_STATUS stdcall;

function ReaderClose: DL_STATUS stdcall;

function ReaderSoftRestart: DL_STATUS stdcall;

function GetReaderType(var lpulReaderType: LongInt): DL_STATUS stdcall;

function GetReaderSerialNumber(var lpulSerialNumber: LongInt): DL_STATUS  stdcall ;

function ReaderUISignal(light_signal_mode: Byte;beep_signal_mode: Byte): DL_STATUS  stdcall;

function GetCardId(var lpucCardType: Byte;var lpulCardSerial: LongInt): DL_STATUS  stdcall;

function GetCardIdEx(var bCardType  : Byte;
                     var bCardUID   : Byte;
                     var bCardUIDSize : Byte): DL_STATUS  stdcall;

function GetDlogicCardType(var pCardType:Byte):DL_STATUS stdcall;

function LinearRead(aucData:PByte;
                    usLinearAddress: Word;
                    usDataLength: Word;
                    var lpusBytesReturned: Word;
                    ucKeyMode: Byte;
                    ucReaderKeyIndex: Byte): DL_STATUS stdcall;


function LinearWrite(const aucData:PByte;
                     usLinearAddress: Word;
                     usDataLength: Word;
                     var lpusBytesWritten: Word;
                     ucKeyMode: Byte;
                     ucReaderKeyIndex: Byte): DL_STATUS  stdcall;

function LinearFormatCard(const new_key_A: PByte;
                          blocks_access_bits: Byte;
                          sector_trailers_access_bits: Byte;
                          sector_trailers_byte9: Byte;
                          const new_key_B: PByte;
                          var SectorsFormatted:Byte;
                          auth_mode: Byte;
                          key_index: Byte): DL_STATUS stdcall;

function ReaderKeysLock(const bPassword:PByte):DL_STATUS stdcall;
function ReaderKeysUnlock(const bPassword:PByte):DL_STATUS stdcall;


function ReaderKeyWrite(const aucKey:PByte;ucKeyIndex: Byte): DL_STATUS  stdcall;

function ReadUserData(aucData:PByte): DL_STATUS  stdcall;

function WriteUserData(const aucData: PByte): DL_STATUS  stdcall;



function BlockRead(data:PByte;
                   block_address: Byte;
                   auth_mode: Byte;
                   key_index: Byte): DL_STATUS stdcall;


function BlockWrite(const data: PByte;
                    block_address: Byte;
                    auth_mode: Byte;
                    key_index: Byte): DL_STATUS  stdcall;


function BlockInSectorRead(data:PByte;
                           sector_address: Byte;
                           block_in_sector_address: Byte;
                           auth_mode: Byte;
                           key_index: Byte): DL_STATUS  stdcall;


function BlockInSectorWrite(const data: PByte;
                            sector_address: Byte;
                            block_in_sector_address: Byte;
                            auth_mode: Byte;
                            key_index: Byte): DL_STATUS stdcall;


function SectorTrailerWrite(addressing_mode: Byte;
                            address: Byte;
                            const new_key_A: PByte;
                            block0_access_bits: Byte;
                            block1_access_bits: Byte;
                            block2_access_bits: Byte;
                            sector_trailer_access_bits: Byte;
                            sector_trailer_byte9:Byte;
                            const new_key_B: PByte;
                            auth_mode:Byte;
                            key_index:Byte): DL_STATUS  stdcall;

function SectorTrailerWriteUnsafe(addressing_mode: Byte;
                                  address: Byte;
                                  const sector_trailer: PByte;
                                  auth_mode: Byte;
                                  key_index: Byte): DL_STATUS stdcall;


function ValueBlockRead(value:PLongint;
                        var value_addr: Byte;
                        block_address: Byte;
                        auth_mode: Byte;
                        key_index: Byte): DL_STATUS stdcall;


function ValueBlockInSectorRead(value:PLongint;
                                var value_addr: Byte;
                                sector_address: Byte;
                                block_in_sector_address: Byte;
                                auth_mode: Byte;
                                key_index: Byte): DL_STATUS stdcall;


function ValueBlockWrite(value: LongInt;
                         value_addr: Byte;
                         block_address: Byte;
                         auth_mode: Byte;
                         key_index: Byte): DL_STATUS  stdcall;


function ValueBlockInSectorWrite(value: LongInt;
                                 value_addr: Byte;
                                 sector_address: Byte;
                                 block_in_sector_address: Byte;
                                 auth_mode: Byte;
                                 key_index: Byte): DL_STATUS stdcall;


function ValueBlockIncrement(increment_value: LongInt;
                             block_address: Byte;
                             auth_mode: Byte;
                             key_index: Byte): DL_STATUS  stdcall;


function ValueBlockInSectorIncrement(increment_value: LongInt;
                                     sector_address: Byte;
                                     block_in_sector_address: Byte;
                                     auth_mode: Byte;
                                     key_index: Byte): DL_STATUS stdcall;


function ValueBlockDecrement(decrement_value:LongInt;
                             block_address: Byte;
                             auth_mode: Byte;
                             key_index: Byte): DL_STATUS stdcall ;


function ValueBlockInSectorDecrement(decrement_value: LongInt;
                                     sector_address: Byte;
                                     block_in_sector_address: Byte;
                                     auth_mode: Byte;
                                     key_index: Byte): DL_STATUS stdcall;


function BlockRead_AKM1(data:PByte;
                        block_address: Byte;
                        auth_mode: Byte): DL_STATUS stdcall;


function BlockWrite_AKM1(const data: PByte;
                         block_address: Byte;
                         auth_mode: Byte): DL_STATUS  stdcall;


function BlockInSectorRead_AKM1(data:PByte;
                                sector_address: Byte;
                                block_in_sector_address: Byte;
                                auth_mode: Byte): DL_STATUS  stdcall;


function BlockInSectorWrite_AKM1(const data: PByte;
                                 sector_address: Byte;
                                 block_in_sector_address: Byte;
                                 auth_mode: Byte): DL_STATUS  stdcall;


function LinearRead_AKM1(data:PByte;
                         linear_address: Word;
                         length: Word;
                         var bytes_returned: Word;
                         auth_mode: Byte): DL_STATUS stdcall;


function LinearWrite_AKM1(const data: PByte;
                          linear_address: Word;
                          length: Word;
                          var bytes_written: Word;
                          auth_mode: Byte): DL_STATUS  stdcall;


function LinearFormatCard_AKM1(const new_key_A: PByte;
                               blocks_access_bits: Byte;
                               sector_trailers_access_bits: Byte;
                               sector_trailers_byte9: Byte;
                               const new_key_B: PByte;
                               var sector_formatted:Byte;
                               auth_mode: Byte): DL_STATUS stdcall;


function SectorTrailerWrite_AKM1(addressing_mode: Byte;
                                 address: Byte;
                                 const new_key_A: PByte;
                                 block0_access_bits: Byte;
                                 block1_access_bits: Byte;
                                 block2_access_bits: Byte;
                                 sector_trailer_access_bits: Byte;
                                 sector_trailer_byte9:Byte;
                                 const new_key_B: PByte;
                                 auth_mode:Byte): DL_STATUS  stdcall;

function SectorTrailerWriteUnsafe_AKM1(addressing_mode: Byte;
                                       address: Byte;
                                       const sector_trailer: PByte;
                                       auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockRead_AKM1(value: PLongInt;
                             var value_addr: Byte;
                             block_address: Byte;
                             auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockInSectorRead_AKM1(value:PLongInt;
                                     var value_addr: Byte;
                                     sector_address: Byte;
                                     block_in_sector_address: Byte;
                                     auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockWrite_AKM1(value: LongInt;
                              value_addr: Byte;
                              block_address: Byte;
                              auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockInSectorWrite_AKM1(value: LongInt;
                                      value_addr: Byte;
                                      sector_address: Byte;
                                      block_address: Byte;
                                      auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockIncrement_AKM1(increment_value: LongInt;
                                  block_address: Byte;
                                  auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockInSectorIncrement_AKM1(increment_value: LongInt;
                                          sector_address: Byte;
                                          block_in_sector_address: Byte;
                                          auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockDecrement_AKM1(decrement_value: LongInt;
                                  block_address: Byte;
                                  auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockInSectorDecrement_AKM1(decrement_value: LongInt;
                                          sector_address: Byte;
                                          block_in_sector_address: Byte;
                                          auth_mode: Byte): DL_STATUS stdcall;


function BlockRead_AKM2(data:PByte;
                        block_address: Byte;
                        auth_mode: Byte): DL_STATUS  stdcall;


function BlockWrite_AKM2(const data: PByte;
                         block_address: Byte;
                         auth_mode: Byte): DL_STATUS  stdcall;


function BlockInSectorRead_AKM2(data:PByte;
                                sector_address: Byte;
                                block_in_sector_address: Byte;
                                auth_mode: Byte): DL_STATUS stdcall  ;


function BlockInSectorWrite_AKM2(const data: PByte;
                                 sector_address: Byte;
                                 block_in_sector_address: Byte;
                                 auth_mode: Byte): DL_STATUS stdcall;


function LinearRead_AKM2(data: PByte;
                         linear_address: Word;
                         length: Word;
                         var bytes_returned: Word;
                         auth_mode: Byte): DL_STATUS stdcall;


function LinearWrite_AKM2(const data: PByte;
                          linear_address: Word;
                          length: Word;
                          var bytes_written: Word;
                          auth_mode: Byte): DL_STATUS  stdcall;


function LinearFormatCard_AKM2(const new_key_A: PByte;
                               blocks_access_bits: Byte;
                               sector_trailers_access_bits: Byte;
                               sector_trailers_byte9: Byte;
                               const new_key_B: PByte;
                               var sector_formatted:Byte;
                               auth_mode: Byte): DL_STATUS  stdcall;


function SectorTrailerWrite_AKM2(addressing_mode: Byte;
                                 address: Byte;
                                 const new_key_A: PByte;
                                 block0_access_bits: Byte;
                                 block1_access_bits: Byte;
                                 block2_access_bits: Byte;
                                 sector_trailer_access_bits: Byte;
                                 sector_trailer_byte9:Byte;
                                 const new_key_B: PByte;
                                 auth_mode:Byte): DL_STATUS  stdcall  ;

function SectorTrailerWriteUnsafe_AKM2(addressing_mode: Byte;
                                       address: Byte;
                                       const sector_trailer: PByte;
                                       auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockRead_AKM2(value: pLongInt;
                             var value_addr: Byte;
                             block_address: Byte;
                             auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockInSectorRead_AKM2(value:PLongInt;
                                     var value_addr: Byte;
                                     sector_address: Byte;
                                     block_in_sector_address: Byte;
                                     auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockWrite_AKM2(value: LongInt;
                              value_addr: Byte;
                              block_address: Byte;
                              auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockInSectorWrite_AKM2(value: LongInt;
                                      value_addr: Byte;
                                      sector_address: Byte;
                                      block_address: Byte;
                                      auth_mode: Byte): DL_STATUS  stdcall;


function ValueBlockIncrement_AKM2(increment_value:LongInt;
                                  block_address: Byte;
                                  auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockInSectorIncrement_AKM2(increment_value: LongInt;
                                          sector_address: Byte;
                                          block_in_sector_address: Byte;
                                          auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockDecrement_AKM2(decrement_value:LongInt;
                                  block_address: Byte;
                                  auth_mode: Byte): DL_STATUS stdcall;


function ValueBlockInSectorDecrement_AKM2(decrement_value: LongInt;
                                          sector_address: Byte;
                                          block_in_sector_address: Byte;
                                          auth_mode: Byte): DL_STATUS stdcall;


function BlockRead_PK(data:PByte;
                      block_address: Byte;
                      auth_mode: Byte;
                      const key: PByte): DL_STATUS  stdcall;


function BlockWrite_PK(const data: PByte;
                       block_address: Byte;
                       auth_mode: Byte;
                       const key: PByte): DL_STATUS  stdcall;


function BlockInSectorRead_PK(data:PByte;
                              sector_address: Byte;
                              block_in_sector_address: Byte;
                              auth_mode: Byte;
                              const key: PByte): DL_STATUS  stdcall;


function BlockInSectorWrite_PK(const data: PByte;
                               sector_address: Byte;
                               block_in_sector_address: Byte;
                               auth_mode: Byte;
                               const key: PByte): DL_STATUS  stdcall;


function LinearRead_PK(data:PByte;
                       linear_address: Word;
                       length: Word;
                       var bytes_returned: Word;
                       auth_mode: Byte;
                       const key:PByte): DL_STATUS  stdcall;


function LinearWrite_PK(const data: PByte;
                        linear_address: Word;
                        length: Word;
                        var bytes_written: Word;
                        auth_mode: Byte;
                        const key: PByte): DL_STATUS stdcall;


function LinearFormatCard_PK(const new_key_A: PByte;
                             blocks_access_bits: Byte;
                             sector_trailers_access_bits: Byte;
                             sector_trailers_byte9: Byte;
                             const new_key_B: PByte;
                             var sector_formatted:Byte;
                             auth_mode: Byte;
                             const key:PByte): DL_STATUS stdcall;

function SectorTrailerWrite_PK(addressing_mode: Byte;
                               address: Byte;
                               const new_key_A: PByte;
                               block0_access_bits: Byte;
                               block1_access_bits: Byte;
                               block2_access_bits: Byte;
                               sector_trailer_access_bits: Byte;
                               sector_trailer_byte9:Byte;
                               const new_key_B:PByte;
                               auth_mode: Byte;
                               const key: PByte): DL_STATUS stdcall;

function SectorTrailerWriteUnsafe_PK(addressing_mode: Byte;
                                     address: Byte;
                                     const sector_trailer: PByte;
                                     auth_mode: Byte;
                                     const key: PByte): DL_STATUS  stdcall;


function ValueBlockRead_PK(value:PLongInt;
                           var value_addr: Byte;
                           block_address: Byte;
                           auth_mode: Byte;
                           const key: PByte): DL_STATUS stdcall;


function ValueBlockInSectorRead_PK(value: PLongInt;
                                   var value_addr: Byte;
                                   sector_address: Byte;
                                   block_in_sector_address: Byte;
                                   auth_mode: Byte;
                                   const key: PByte): DL_STATUS stdcall;


function ValueBlockWrite_PK(value: LongInt;
                            value_addr: Byte;
                            block_address: Byte;
                            auth_mode: Byte;
                            const key: PByte): DL_STATUS  stdcall;


function ValueBlockInSectorWrite_PK(value:LongInt;
                                    value_addr: Byte;
                                    sector_address: Byte;
                                    block_address: Byte;
                                    auth_mode: Byte;
                                    const key: PByte): DL_STATUS  stdcall;


function ValueBlockIncrement_PK(increment_value:LongInt;
                                block_address: Byte;
                                auth_mode: Byte;
                                const key: PByte): DL_STATUS  stdcall;


function ValueBlockInSectorIncrement_PK(increment_value: LongInt;
                                        sector_address: Byte;
                                        block_in_sector_address: Byte;
                                        auth_mode: Byte;
                                        const key: PByte): DL_STATUS  stdcall;


function ValueBlockDecrement_PK(decrement_value:LongInt;
                                block_address: Byte;
                                auth_mode: Byte;
                                const key: PByte): DL_STATUS stdcall;


function ValueBlockInSectorDecrement_PK(decrement_value: LongInt;
                                        sector_address: Byte;
                                        block_in_sector_address: Byte;
                                        auth_mode: Byte;
                                        const key: PByte): DL_STATUS  stdcall;

function GetReaderHardwareVersion(var bMajor:Byte;
                                  var bMinor:Byte):DL_STATUS stdcall;

function GetReaderFirmwareVersion(var bMajor:Byte;
                                  var bMinor:Byte):DL_STATUS stdcall;


function ReadNdefRecord_WiFi(ssid: PChar;
                             auth_type: PChar;
                             enc_type: PChar;
                             password: PChar): DL_STATUS stdcall;

function WriteNdefRecord_WiFi(ndef_storage: Byte;
                              ssid: PAnsiChar;
                              auth_type: Byte;
                              enc_type: Byte;
                              password: PAnsiChar): DL_STATUS stdcall;

function read_ndef_record(message_nr: Byte;
                          record_nr: Byte;
                          var tnf: Byte;
                          type_record: PByte;
                          var type_len: Byte;
                          id: PByte;
                          var id_len: Byte;
                          payload: PByte;
                          var payload_len: Cardinal): DL_STATUS stdcall;

function write_ndef_record(message_nr: Byte;
                           tnf: PByte;
                           type_record: PByte;
                           type_len: PByte;
                           id: PByte;
                           id_len: PByte;
                           payload: PByte;
                           payload_len: PCardinal;
                           var card_formatted: Byte): DL_STATUS stdcall;

function WriteEmulationNdef(tnf: Byte;
                            type_record: PByte;
                            type_length: Byte;
                            id: PByte;
                            id_length: Byte;
                            payload: PByte;
                            payload_len: Cardinal): DL_STATUS stdcall;

function ndef_card_initialization: DL_STATUS stdcall;
function erase_last_ndef_record(message_nr: Byte): DL_STATUS stdcall;
function erase_all_ndef_records(message_nr: Byte): DL_STATUS stdcall;
function CombinedModeEmulationStart: DL_STATUS stdcall;
function TagEmulationStart: DL_STATUS stdcall;
function TagEmulationStop: DL_STATUS stdcall;

function WriteNdefRecord_Bluetooth(ndef_storage: Byte;
                                   bt_mac_address: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Bluetooth(bt_mac_address: PChar): DL_STATUS stdcall;

function WriteNdefRecord_SMS(ndef_storage: Byte;
                             phone_number: PAnsiChar;
                             sms_message: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_SMS(phone_number: PChar;
                            sms_message: PChar): DL_STATUS stdcall;

function WriteNdefRecord_GeoLocation(ndef_storage: Byte;
                                     latitude: PAnsiChar;
                                     longitude: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_GeoLocation(latitude: PChar;
                                    longitude: PChar): DL_STATUS stdcall;

function WriteNdefRecord_NaviDestination(ndef_storage: Byte;
                                         destination: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_NaviDestination(destination: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Email(ndef_storage: Byte;
                               email_address: PAnsiChar;
                               subject: PAnsiChar;
                               emessage: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Email(email_address: PChar;
                              subject: PChar;
                              emessage: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Address(ndef_storage: Byte;
                               address: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Address(address: PChar): DL_STATUS stdcall;

function WriteNdefRecord_AndroidApp(ndef_storage: Byte;
                               package_name: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_AndroidApp(package_name: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Text(ndef_storage: Byte;
                               text: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Text(text: PChar): DL_STATUS stdcall;

function WriteNdefRecord_StreetView(ndef_storage: Byte;
                                    latitude: PAnsiChar;
                                    longitude: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_StreetView(latitude: PChar;
                                   longitude: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Phone(ndef_storage: Byte;
                               phone: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Phone(phone: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Contact(ndef_storage: Byte;
                                 name: PAnsiChar;
                                 company: PAnsiChar;
                                 address: PAnsiChar;
                                 phone: PAnsiChar;
                                 email: PAnsiChar;
                                 website: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Contact(vCardData: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Bitcoin(ndef_storage: Byte;
                                 address: PAnsiChar;
                                 amount: PAnsiChar;
                                 bmessage: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Bitcoin(address: PChar;
                                amount: PChar;
                                bmessage: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Skype(ndef_storage: Byte;
                               user_name: PAnsiChar;
                               action: Byte): DL_STATUS stdcall;

function ReadNdefRecord_Skype(user_name: PChar;
                              action: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Viber(ndef_storage: Byte;
                               vmessage: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Viber(vmessage: PChar): DL_STATUS stdcall;

function WriteNdefRecord_Whatsapp(ndef_storage: Byte;
                                  wmessage: PAnsiChar): DL_STATUS stdcall;

function ReadNdefRecord_Whatsapp(wmessage: PChar): DL_STATUS stdcall;

implementation

function UFR_Status2String;                          external DLL_NAME;
function ReaderOpen;                                 external DLL_NAME;
function ReaderOpenEx;                               external DLL_NAME;
function ReaderReset;                                external DLL_NAME;
function ReaderClose;                                external DLL_NAME;
function ReaderSoftRestart;                          external DLL_NAME;
function GetReaderType;                              external DLL_NAME;
function GetReaderSerialNumber;                      external DLL_NAME;
function ReaderKeyWrite;                             external DLL_NAME;
function ReaderUISignal;                             external DLL_NAME;
function ReadUserData;                               external DLL_NAME;
function WriteUserData;                              external DLL_NAME;
function GetCardId;                                  external DLL_NAME;
function GetCardIdEx;                                external DLL_NAME;
function GetDlogicCardType;                          external DLL_NAME;
function ReaderKeysLock;                             external DLL_NAME;
function ReaderKeysUnlock;                           external DLL_NAME;
function BlockRead;                                  external DLL_NAME;
function BlockWrite;                                 external DLL_NAME;
function BlockInSectorRead;                          external DLL_NAME;
function BlockInSectorWrite;                         external DLL_NAME;
function LinearRead;                                 external DLL_NAME;
function LinearWrite;                                external DLL_NAME;
function LinearFormatCard;                           external DLL_NAME;
function SectorTrailerWrite;                         external DLL_NAME;
function SectorTrailerWriteUnsafe;                   external DLL_NAME;
function ValueBlockRead;                             external DLL_NAME;
function ValueBlockInSectorRead;                     external DLL_NAME;
function ValueBlockWrite;                            external DLL_NAME;
function ValueBlockInSectorWrite;                    external DLL_NAME;
function ValueBlockIncrement;                        external DLL_NAME;
function ValueBlockInSectorIncrement;                external DLL_NAME;
function ValueBlockDecrement;                        external DLL_NAME;
function ValueBlockInSectorDecrement;                external DLL_NAME;
function BlockRead_AKM1;                             external DLL_NAME;
function BlockWrite_AKM1;                            external DLL_NAME;
function BlockInSectorRead_AKM1;                     external DLL_NAME;
function BlockInSectorWrite_AKM1;                    external DLL_NAME;
function LinearRead_AKM1;                            external DLL_NAME;
function LinearWrite_AKM1;                           external DLL_NAME;
function LinearFormatCard_AKM1;                      external DLL_NAME;
function SectorTrailerWrite_AKM1;                    external DLL_NAME;
function SectorTrailerWriteUnsafe_AKM1;              external DLL_NAME;
function ValueBlockRead_AKM1;                        external DLL_NAME;
function ValueBlockInSectorRead_AKM1;                external DLL_NAME;
function ValueBlockWrite_AKM1;                       external DLL_NAME;
function ValueBlockInSectorWrite_AKM1;               external DLL_NAME;
function ValueBlockIncrement_AKM1;                   external DLL_NAME;
function ValueBlockInSectorIncrement_AKM1;           external DLL_NAME;
function ValueBlockDecrement_AKM1;                   external DLL_NAME;
function ValueBlockInSectorDecrement_AKM1;           external DLL_NAME;
function BlockRead_AKM2;                             external DLL_NAME;
function BlockWrite_AKM2;                            external DLL_NAME;
function BlockInSectorRead_AKM2;                     external DLL_NAME;
function BlockInSectorWrite_AKM2;                    external DLL_NAME;
function LinearRead_AKM2;                            external DLL_NAME;
function LinearWrite_AKM2;                           external DLL_NAME;
function LinearFormatCard_AKM2;                      external DLL_NAME;
function SectorTrailerWrite_AKM2;                    external DLL_NAME;
function SectorTrailerWriteUnsafe_AKM2;              external DLL_NAME;
function ValueBlockRead_AKM2;                        external DLL_NAME;
function ValueBlockInSectorRead_AKM2;                external DLL_NAME;
function ValueBlockWrite_AKM2;                       external DLL_NAME;
function ValueBlockInSectorWrite_AKM2;               external DLL_NAME;
function ValueBlockIncrement_AKM2;                   external DLL_NAME;
function ValueBlockInSectorIncrement_AKM2;           external DLL_NAME;
function ValueBlockDecrement_AKM2;                   external DLL_NAME;
function ValueBlockInSectorDecrement_AKM2;           external DLL_NAME;
function BlockRead_PK;                               external DLL_NAME;
function BlockWrite_PK;                              external DLL_NAME;
function BlockInSectorRead_PK;                       external DLL_NAME;
function BlockInSectorWrite_PK;                      external DLL_NAME;
function LinearRead_PK;                              external DLL_NAME;
function LinearWrite_PK;                             external DLL_NAME;
function LinearFormatCard_PK;                        external DLL_NAME;
function SectorTrailerWrite_PK;                      external DLL_NAME;
function SectorTrailerWriteUnsafe_PK;                external DLL_NAME;
function ValueBlockRead_PK;                          external DLL_NAME;
function ValueBlockInSectorRead_PK;                  external DLL_NAME;
function ValueBlockWrite_PK;                         external DLL_NAME;
function ValueBlockInSectorWrite_PK;                 external DLL_NAME;
function ValueBlockIncrement_PK;                     external DLL_NAME;
function ValueBlockInSectorIncrement_PK;             external DLL_NAME;
function ValueBlockDecrement_PK;                     external DLL_NAME;
function ValueBlockInSectorDecrement_PK;             external DLL_NAME;
function GetReaderHardwareVersion;                   external DLL_NAME;
function GetReaderFirmwareVersion;                   external DLL_NAME;
function ReadNdefRecord_WiFi;                        external DLL_NAME;
function WriteNdefRecord_WiFi;                       external DLL_NAME;
function read_ndef_record;                           external DLL_NAME;
function write_ndef_record;                          external DLL_NAME;
function ndef_card_initialization;                   external DLL_NAME;
function erase_all_ndef_records;                     external DLL_NAME;
function erase_last_ndef_record;                     external DLL_NAME;
function TagEmulationStart;                          external DLL_NAME;
function TagEmulationStop;                           external DLL_NAME;
function CombinedModeEmulationStart;                 external DLL_NAME;
function WriteEmulationNdef;                         external DLL_NAME;
function WriteNdefRecord_Bluetooth;                  external DLL_NAME;
function ReadNdefRecord_Bluetooth;                   external DLL_NAME;
function WriteNdefRecord_SMS;                        external DLL_NAME;
function ReadNdefRecord_SMS;                         external DLL_NAME;
function WriteNdefRecord_GeoLocation;                external DLL_NAME;
function ReadNdefRecord_GeoLocation;                 external DLL_NAME;
function WriteNdefRecord_NaviDestination;            external DLL_NAME;
function ReadNdefRecord_NaviDestination;             external DLL_NAME;
function WriteNdefRecord_Email;                      external DLL_NAME;
function ReadNdefRecord_Email;                       external DLL_NAME;
function WriteNdefRecord_Address;                    external DLL_NAME;
function ReadNdefRecord_Address;                     external DLL_NAME;
function WriteNdefRecord_AndroidApp;                 external DLL_NAME;
function ReadNdefRecord_AndroidApp;                  external DLL_NAME;
function WriteNdefRecord_Text;                       external DLL_NAME;
function ReadNdefRecord_Text;                        external DLL_NAME;
function WriteNdefRecord_StreetView;                 external DLL_NAME;
function ReadNdefRecord_StreetView;                  external DLL_NAME;
function WriteNdefRecord_Phone;                      external DLL_NAME;
function ReadNdefRecord_Phone;                       external DLL_NAME;
function WriteNdefRecord_Contact;                    external DLL_NAME;
function ReadNdefRecord_Contact;                     external DLL_NAME;
function WriteNdefRecord_Bitcoin;                    external DLL_NAME;
function ReadNdefRecord_Bitcoin;                     external DLL_NAME;
function WriteNdefRecord_Skype;                      external DLL_NAME;
function ReadNdefRecord_Skype;                       external DLL_NAME;
function WriteNdefRecord_Viber;                      external DLL_NAME;
function ReadNdefRecord_Viber;                       external DLL_NAME;
function WriteNdefRecord_Whatsapp;                   external DLL_NAME;
function ReadNdefRecord_Whatsapp;                    external DLL_NAME;
end.
