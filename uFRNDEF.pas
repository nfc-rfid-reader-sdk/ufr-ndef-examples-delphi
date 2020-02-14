unit uFRNDEF;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, uFCoder, FMX.Edit, FMX.Objects,
  FMX.Layouts, System.ImageList, FMX.ImgList, FMX.TabControl, FMX.ListBox,
  FMX.ScrollBox, FMX.Memo;

type
  TForm1 = class(TForm)
    btnReaderOpen: TButton;
    chkUseAdvanced: TCheckBox;
    LBL_ReaderType: TLabel;
    txtReaderType: TEdit;
    LBL_PortName: TLabel;
    txtPortName: TEdit;
    LBL_PortInterface: TLabel;
    txtPortInterface: TEdit;
    LBL_Arg: TLabel;
    txtArg: TEdit;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    StatusLabel: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    btnWifiFrame: TButton;
    btnUriFrame: TButton;
    btnEmailFrame: TButton;
    btnViberFrame: TButton;
    btnWhatsappFrame: TButton;
    btnDestinationFrame: TButton;
    btnLocationFrame: TButton;
    btnBluetoothFrame: TButton;
    btnSmsFrame: TButton;
    btnSkypeFrame: TButton;
    btnBitcoinFrame: TButton;
    btnContactFrame: TButton;
    btnPhoneFrame: TButton;
    btnAddressFrame: TButton;
    btnStreetViewFrame: TButton;
    btnTextFrame: TButton;
    btnApplicationFrame: TButton;
    MainPanel: TPanel;
    TabControl1: TTabControl;
    WiFiTab: TTabItem;
    UriTab: TTabItem;
    BluetoothTab: TTabItem;
    SmsTab: TTabItem;
    ImageList1: TImageList;
    LocationTab: TTabItem;
    DestinationTab: TTabItem;
    EmailTab: TTabItem;
    AddressTab: TTabItem;
    ApplicationTab: TTabItem;
    TextTab: TTabItem;
    StreetViewTab: TTabItem;
    PhoneTab: TTabItem;
    ContactTab: TTabItem;
    BitcoinTab: TTabItem;
    SkypeTab: TTabItem;
    ViberTab: TTabItem;
    WhatsappTab: TTabItem;
    btnRawDataFrame: TButton;
    RawDataTab: TTabItem;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnNdefInitialize: TButton;
    btnEraseLastNdefRecord: TButton;
    btnEraseAllNdefRecords: TButton;
    btnStartDedicated: TButton;
    btnStartCombined: TButton;
    btnStopEmulation: TButton;
    GroupBox3: TGroupBox;
    btnReadWifi: TButton;
    lblSsid: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    SsidEdit: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PasswordEdit: TEdit;
    btnWriteWifi: TButton;
    SsidReadTxt: TEdit;
    AuthTypeReadTxt: TEdit;
    EncReadTxt: TEdit;
    PasswordReadTxt: TEdit;
    AuthTypeCB: TComboBox;
    EncCB: TComboBox;
    GroupBox5: TGroupBox;
    RBWifiTag: TRadioButton;
    RBWifiReader: TRadioButton;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    UriTxt: TEdit;
    btnReadUri: TButton;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    UriCB: TComboBox;
    Label11: TLabel;
    UriFieldEdit: TEdit;
    btnWriteUri: TButton;
    bntReaderClose: TButton;
    GroupBox8: TGroupBox;
    RBUriTag: TRadioButton;
    RBUriReader: TRadioButton;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    Label12: TLabel;
    BluetoothReadEdit: TEdit;
    btnBluetoothRead: TButton;
    Label13: TLabel;
    BluetoothWriteEdit: TEdit;
    btnBluetoothWrite: TButton;
    GroupBox11: TGroupBox;
    RBBluetoothTag: TRadioButton;
    RBBluetoothReader: TRadioButton;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Label14: TLabel;
    PhoneNumReadEdit: TEdit;
    Label15: TLabel;
    MessageReadEdit: TMemo;
    btnReadSms: TButton;
    Label16: TLabel;
    PhoneNumWriteEdit: TEdit;
    Label17: TLabel;
    MessageWriteEdit: TMemo;
    btnWriteSms: TButton;
    GroupBox14: TGroupBox;
    RBSmsTag: TRadioButton;
    RBSmsReader: TRadioButton;
    gbLocation: TGroupBox;
    GroupBox15: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    GeoLatReadEdit: TEdit;
    GeoLonReadEdit: TEdit;
    btnLocationRead: TButton;
    Label20: TLabel;
    Label21: TLabel;
    GeoLatWriteEdit: TEdit;
    GeoLonWriteEdit: TEdit;
    btnLocationWrite: TButton;
    GroupBox16: TGroupBox;
    RBGeoTag: TRadioButton;
    RBGeoReader: TRadioButton;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    DestinationReadEdit: TEdit;
    DestinationWriteEdit: TEdit;
    btnDestinationRead: TButton;
    btnDestinationWrite: TButton;
    GroupBox19: TGroupBox;
    RBDestinationTag: TRadioButton;
    RBDestinationReader: TRadioButton;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EAddressReadEdit: TEdit;
    SubjectReadEdit: TEdit;
    EMessageReadEdit: TMemo;
    btnReadEmail: TButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EAddressWriteEdit: TEdit;
    SubjectWriteEdit: TEdit;
    EMessageWriteEdit: TMemo;
    btnWriteEmail: TButton;
    GroupBox22: TGroupBox;
    RBEmailTag: TRadioButton;
    RadioButton1: TRadioButton;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    AddressReadEdit: TEdit;
    AddressWriteEdit: TEdit;
    btnReadAddress: TButton;
    btnWriteAddress: TButton;
    GroupBox25: TGroupBox;
    RBAddressTag: TRadioButton;
    RBAddressReader: TRadioButton;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    ApplicationReadEdit: TEdit;
    ApplicationWriteEdit: TEdit;
    btnApplicationRead: TButton;
    btnApplicationWrite: TButton;
    GroupBox28: TGroupBox;
    RBApplicationTag: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox29: TGroupBox;
    GroupBox30: TGroupBox;
    Label34: TLabel;
    TextReadEdit: TMemo;
    Label35: TLabel;
    TextWriteEdit: TMemo;
    btnReadText: TButton;
    btnTextWrite: TButton;
    GroupBox31: TGroupBox;
    RBTextTag: TRadioButton;
    RadioButton3: TRadioButton;
    gb32: TGroupBox;
    GroupBox32: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    SVLatitudeReadEdit: TEdit;
    SVLongitudeReadEdit: TEdit;
    btnStreetViewRead: TButton;
    Label38: TLabel;
    Label39: TLabel;
    SVLongitudeWriteEdit: TEdit;
    SVLatitudeWriteEdit: TEdit;
    btnStreetViewWrite: TButton;
    GroupBox33: TGroupBox;
    RBStreetViewTag: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    Label40: TLabel;
    PhoneReadEdit: TEdit;
    btnReadPhone: TButton;
    Label41: TLabel;
    PhoneWriteEdit: TEdit;
    btnWritePhone: TButton;
    GroupBox36: TGroupBox;
    RBPhoneTag: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox37: TGroupBox;
    Label42: TLabel;
    ContactReadEdit: TMemo;
    btnContactRead: TButton;
    GroupBox38: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    NameEdit: TEdit;
    CompanyEdit: TEdit;
    AddressEdit: TEdit;
    PhoneEdit: TEdit;
    EmailEdit: TEdit;
    WebsiteEdit: TEdit;
    btnWriteContact: TButton;
    GroupBox39: TGroupBox;
    RBContactTag: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox40: TGroupBox;
    Label49: TLabel;
    BitcoinAddressRead: TEdit;
    Label50: TLabel;
    BitcoinAmountRead: TEdit;
    Label51: TLabel;
    BitcoinMessageRead: TMemo;
    btnBitcoinRead: TButton;
    GroupBox41: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    BitcoinAddressWrite: TEdit;
    BitcoinAmountWrite: TEdit;
    BitcoinMessageWrite: TMemo;
    btnWriteBitcoin: TButton;
    GroupBox42: TGroupBox;
    RBBitcoinTag: TRadioButton;
    RadioButton7: TRadioButton;
    GroupBox43: TGroupBox;
    GroupBox44: TGroupBox;
    Label55: TLabel;
    SkypeUsernameRead: TEdit;
    Label56: TLabel;
    SkypeOperationEdit: TEdit;
    btnSkypeRead: TButton;
    Label57: TLabel;
    SkypeUsernameWrite: TEdit;
    Label58: TLabel;
    SkypeOperationWriteCB: TComboBox;
    btnSkypeWrite: TButton;
    GroupBox45: TGroupBox;
    RBSkypeTag: TRadioButton;
    RBSkypeReader: TRadioButton;
    GroupBox46: TGroupBox;
    GroupBox47: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    ViberRead: TMemo;
    ViberWrite: TMemo;
    btnViberRead: TButton;
    btnViberWrite: TButton;
    GroupBox48: TGroupBox;
    RBViberTag: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox49: TGroupBox;
    GroupBox50: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    WhatsappRead: TMemo;
    WhatsappWrite: TMemo;
    btnWhatsappRead: TButton;
    btnWhatsappWrite: TButton;
    GroupBox51: TGroupBox;
    RBWhatsappTag: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox52: TGroupBox;
    GroupBox53: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    TnfRead: TEdit;
    TypeRead: TEdit;
    IdRead: TEdit;
    PayloadRead: TMemo;
    btnRawRead: TButton;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    TnfWrite: TEdit;
    TypeWrite: TEdit;
    IdWrite: TEdit;
    PayloadWrite: TMemo;
    btnRawWrite: TButton;
    GroupBox54: TGroupBox;
    RBRawTag: TRadioButton;
    RadioButton10: TRadioButton;
    procedure btnReaderOpenClick(Sender: TObject);
    procedure btnWifiFrameClick(Sender: TObject);
    procedure btnUriFrameClick(Sender: TObject);
    procedure btnBluetoothFrameClick(Sender: TObject);
    procedure btnSmsFrameClick(Sender: TObject);
    procedure btnLocationFrameClick(Sender: TObject);
    procedure btnDestinationFrameClick(Sender: TObject);
    procedure btnEmailFrameClick(Sender: TObject);
    procedure btnAddressFrameClick(Sender: TObject);
    procedure btnApplicationFrameClick(Sender: TObject);
    procedure btnTextFrameClick(Sender: TObject);
    procedure btnStreetViewFrameClick(Sender: TObject);
    procedure btnPhoneFrameClick(Sender: TObject);
    procedure btnContactFrameClick(Sender: TObject);
    procedure btnBitcoinFrameClick(Sender: TObject);
    procedure btnSkypeFrameClick(Sender: TObject);
    procedure btnViberFrameClick(Sender: TObject);
    procedure btnWhatsappFrameClick(Sender: TObject);
    procedure btnRawDataFrameClick(Sender: TObject);
    procedure btnReadWifiClick(Sender: TObject);
    procedure chkUseAdvancedChange(Sender: TObject);
    procedure btnWriteWifiClick(Sender: TObject);
    procedure btnReadUriClick(Sender: TObject);
    procedure btnWriteUriClick(Sender: TObject);
    procedure btnNdefInitializeClick(Sender: TObject);
    procedure btnEraseLastNdefRecordClick(Sender: TObject);
    procedure btnEraseAllNdefRecordsClick(Sender: TObject);
    procedure btnStartDedicatedClick(Sender: TObject);
    procedure btnStartCombinedClick(Sender: TObject);
    procedure btnStopEmulationClick(Sender: TObject);
    procedure bntReaderCloseClick(Sender: TObject);
    procedure btnBluetoothWriteClick(Sender: TObject);
    procedure btnBluetoothReadClick(Sender: TObject);
    procedure btnWriteSmsClick(Sender: TObject);
    procedure btnReadSmsClick(Sender: TObject);
    procedure btnLocationWriteClick(Sender: TObject);
    procedure btnLocationReadClick(Sender: TObject);
    procedure btnDestinationReadClick(Sender: TObject);
    procedure btnDestinationWriteClick(Sender: TObject);
    procedure btnWriteEmailClick(Sender: TObject);
    procedure btnReadEmailClick(Sender: TObject);
    procedure btnWriteAddressClick(Sender: TObject);
    procedure btnReadAddressClick(Sender: TObject);
    procedure btnApplicationWriteClick(Sender: TObject);
    procedure btnApplicationReadClick(Sender: TObject);
    procedure btnTextWriteClick(Sender: TObject);
    procedure btnReadTextClick(Sender: TObject);
    procedure btnStreetViewWriteClick(Sender: TObject);
    procedure btnStreetViewReadClick(Sender: TObject);
    procedure btnWritePhoneClick(Sender: TObject);
    procedure btnReadPhoneClick(Sender: TObject);
    procedure btnWriteContactClick(Sender: TObject);
    procedure btnContactReadClick(Sender: TObject);
    procedure btnWriteBitcoinClick(Sender: TObject);
    procedure btnBitcoinReadClick(Sender: TObject);
    procedure btnSkypeWriteClick(Sender: TObject);
    procedure btnSkypeReadClick(Sender: TObject);
    procedure btnViberReadClick(Sender: TObject);
    procedure btnViberWriteClick(Sender: TObject);
    procedure btnWhatsappReadClick(Sender: TObject);
    procedure btnWhatsappWriteClick(Sender: TObject);
    procedure btnRawReadClick(Sender: TObject);
    procedure btnRawWriteClick(Sender: TObject);
  private
    { Private declarations }
    caReadData: array [0 .. 500] of Byte;
    function ConvertToHexOrAscii(chkBox: Boolean; len: Cardinal): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnReaderOpenClick(Sender: TObject);
var
  status: Longint;
  reader_type, port_interface: string;
  port_name, arg: string;
  port_interface_int, reader_type_int: Longint;

begin

  if chkUseAdvanced.IsChecked then
  begin
    begin
      port_interface_int := 0;
      reader_type_int := 0;
      reader_type := txtReaderType.Text;
      port_name := txtPortName.Text;
      port_interface := txtPortInterface.Text;
      arg := txtArg.Text;
      try
        reader_type_int := StrToInt(reader_type);
      except
        On E: EConvertError do
        begin
          ShowMessage('Incorrect parameter: Reader type');
          txtReaderType.SetFocus();
          Exit;
        end;
      end;

      try
        if port_interface = 'U' then
        begin
          port_interface_int := 85;
        end
        else if port_interface = 'T' then
        begin
          port_interface_int := 84;
        end
        else
        begin
          port_interface_int := StrToInt(port_interface);
        end;

      except
        On E: EConvertError do
        begin
          ShowMessage('Incorrect parameter: Port interface');
          txtPortInterface.SetFocus();
          Exit;
        end;
      end;
      status := ReaderOpenEx(reader_type_int, PAnsiChar(AnsiString(port_name)),
        port_interface_int, PAnsiChar(AnsiString(arg)));
    end;
  end
  else
  begin
    status := ReaderOpen();
  end;
  StatusLabel.Text := string(UFR_Status2String(status));
  if status = DL_OK then
  begin
    ReaderUISignal(1, 1);
  end
end;

function TForm1.ConvertToHexOrAscii(chkBox: Boolean; len: Cardinal): string;
var
  iCounter: Byte;
begin
  iCounter := 0;
  if chkBox then
  begin
    while iCounter < len do
    begin
      Result := Result + IntToHex(Byte(caReadData[iCounter]), 2);
      Inc(iCounter);
    end;
  end
  else
  begin
    while iCounter < len do
    begin
      Result := Result + Char(caReadData[iCounter]);
      Inc(iCounter);
    end;
  end;
end;

procedure TForm1.btnRawReadClick(Sender: TObject);
var
  resultStatus: DL_STATUS;
  payload, type_record, id: PByte;
  paylaodReadData: array of Byte;
  typerecordReadData: array of Byte;
  idReadData: array of Byte;
  tnf, type_len, id_len: Byte;
  payload_len: Cardinal;
begin
  try
    New(payload);
    New(type_record);
    New(id);

    SetLength(paylaodReadData, 500);
    SetLength(typerecordReadData, 500);
    SetLength(idReadData, 500);

    payload := PByte(@paylaodReadData[0]);
    type_record := PByte(@typerecordReadData[0]);
    id := PByte(@idReadData[0]);

    resultStatus := read_ndef_record(1, 1, tnf, type_record, type_len, id, id_len, payload, payload_len);

    if resultStatus = DL_OK then
    begin
      TnfRead.Text := IntToStr(tnf);
      PayloadRead.Text := string(PAnsiChar(@paylaodReadData[0]));
      TypeRead.Text := string(PAnsiChar(@typerecordReadData[0]));
      IdRead.Text := string(PAnsiChar(@idReadData[0]));
    end
    else
    begin
      TnfRead.Text := '';
      PayloadRead.Text := '';
      TypeRead.Text := '';
      IdRead.Text := '';
    end;
  finally
    payload := nil;
    type_record := nil;
    id := nil;

    Dispose(payload);
    Dispose(type_record);
    Dispose(id);

    StatusLabel.Text := string(UFR_Status2String(resultStatus));
  end;
end;

procedure TForm1.btnRawWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  tnfstr, typestr, idstr, payloadstr: string;

  tnf, type_len, id_len, card_formatted: Byte;
  type_record, id, payload: PByte;
  payload_len: Cardinal;
  I: Integer;
begin
  New(type_record);
  New(id);
  New(payload);

  tnfstr := TnfWrite.Text;
  typestr := TypeWrite.Text;
  idstr := IdWrite.Text;
  payloadstr := PayloadWrite.Text;

  tnf:=StrToInt(tnfstr);
  type_record := PByte(AnsiString(typestr));
  type_len := typestr.Length;
  id := PByte(AnsiString(idstr));
  id_len := idstr.Length;
  payload := PByte(AnsiString(payloadstr));
  payload_len := payloadstr.Length;

  status := write_ndef_record(1, @tnf, type_record, @type_len, id, @id_len, payload, @payload_len, card_formatted);

  type_record:=nil;
  id:=nil;
  payload:=nil;
  Dispose(type_record);
  Dispose(id);
  Dispose(payload);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnReadUriClick(Sender: TObject);
var
  pIdData: PByte;
  pTypeData: PByte;
  pPayloadData: PByte;
  tnf: Byte;
  type_len: Byte;
  id_len: Byte;
  payload_len: Cardinal;
  status: DL_STATUS;
begin
  New(pIdData);
  New(pTypeData);
  New(pPayloadData);

  pIdData := PByte(@caReadData);
  pTypeData := PByte(@caReadData);
  pPayloadData := PByte(@caReadData);

  status := read_ndef_record(1, 1, tnf, pTypeData, type_len, pIdData, id_len,
    pPayloadData, payload_len);

  if status = DL_OK then
  begin
    UriTxt.Text := ConvertToHexOrAscii(false, payload_len);
  end
  else
  begin
    UriTxt.Text := '';
  end;

  pIdData := nil;
  Dispose(pIdData);
  pTypeData := nil;
  Dispose(pTypeData);
  pPayloadData := nil;
  Dispose(pPayloadData);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnReadWifiClick(Sender: TObject);
var
  resultStatus: DL_STATUS;
  ssid, auth_type, enc_type, password: PChar;
  ssidReadData: array of Char;
  authTypeReadData: array of Char;
  encTypeReadData: array of Char;
  passwordReadData: array of Char;
begin
  try
    New(ssid);
    New(auth_type);
    New(enc_type);
    New(password);

    SetLength(ssidReadData, 500);
    SetLength(authTypeReadData, 500);
    SetLength(encTypeReadData, 500);
    SetLength(passwordReadData, 500);

    ssid := PChar(@ssidReadData[0]);
    auth_type := PChar(@authTypeReadData[0]);
    enc_type := PChar(@encTypeReadData[0]);
    password := PChar(@passwordReadData[0]);

    resultStatus := ReadNdefRecord_Wifi(ssid, auth_type, enc_type, password);

    if resultStatus = DL_OK then
    begin
      SsidReadTxt.Text := string(PAnsiChar(@ssidReadData[0]));
      AuthTypeReadTxt.Text := string(PAnsiChar(@authTypeReadData[0]));
      EncReadTxt.Text := string(PAnsiChar(@encTypeReadData[0]));
      PasswordReadTxt.Text := string(PAnsiChar(@passwordReadData[0]));
    end
    else
    begin
      SsidReadTxt.Text := '';
      AuthTypeReadTxt.Text := '';
      EncReadTxt.Text := '';
      PasswordReadTxt.Text := '';
    end;
  finally
    ssid := nil;
    auth_type := nil;
    enc_type := nil;
    password := nil;

    Dispose(ssid);
    Dispose(auth_type);
    Dispose(enc_type);
    Dispose(password);

    StatusLabel.Text := string(UFR_Status2String(resultStatus));
  end;
end;

procedure TForm1.btnWifiFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := WiFiTab;
end;

procedure TForm1.btnWriteUriClick(Sender: TObject);
var
  pPayload: PByte;
  card_formatted: Byte;
  status: DL_STATUS;

  TNF: Byte;
  TYPE_RECORD: Byte;
  TYPE_LENGTH: Byte;
  ID_RECORD: Byte;
  ID_LENGTH: Byte;
  PAYLOAD_LEN: Cardinal;
  payloadStr: string;
  I: Integer;
begin
  New(pPayload);

  TNF := 1;
  TYPE_RECORD := 85;
  TYPE_LENGTH := 1;
  ID_RECORD  := 0;
  ID_LENGTH := 0;
  payloadStr := UriFieldEdit.Text;

  if payloadStr.Length=0 then
  begin
    ShowMessage('URI field cannot be empty');
    Exit;
  end;

  PAYLOAD_LEN := payloadStr.Length + 1;

  pPayload[0] := UriCB.ItemIndex;

  for I := 1 to PAYLOAD_LEN do
  begin
    pPayload[I] := TEncoding.UTF8.GetBytes(payloadStr)[I - 1];
  end;

  if RBUriTag.IsChecked then
  begin
        status := write_ndef_record(1, @TNF, @TYPE_RECORD, @TYPE_LENGTH, @ID_RECORD, @ID_LENGTH,
            pPayload, @PAYLOAD_LEN, card_formatted);
  end
  else
  begin
    status := WriteEmulationNdef(1, @TYPE_RECORD, TYPE_LENGTH, @ID_RECORD, ID_LENGTH, pPayload, PAYLOAD_LEN);
  end;

  pPayload := nil;

  Dispose(pPayload);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWriteWifiClick(Sender: TObject);
var
  status: DL_STATUS;
  ssid, password: string;
  auth_type, enc_type: Byte;
begin
  auth_type := AuthTypeCB.ItemIndex;
  enc_type := EncCB.ItemIndex;
  ssid := SsidEdit.Text;
  password := PasswordEdit.Text;

  if RBWifiTag.IsChecked then
  begin
    status := WriteNdefRecord_WiFi(1, PAnsiChar(AnsiString(ssid)), auth_type,
      enc_type, PAnsiChar(AnsiString(password)));
  end
  else
  begin
    status := WriteNdefRecord_WiFi(0, PAnsiChar(AnsiString(ssid)), auth_type,
      enc_type, PAnsiChar(AnsiString(password)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWriteAddressClick(Sender: TObject);
var
  status: DL_STATUS;
  address: string;
begin
  address := AddressWriteEdit.Text;

  if RBAddressTag.IsChecked then
  begin
     status := WriteNdefRecord_Address(1, PAnsiChar(AnsiString(address)));
  end
  else
  begin
     status := WriteNdefRecord_Address(0, PAnsiChar(AnsiString(address)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWriteBitcoinClick(Sender: TObject);
var
  status: DL_STATUS;
  address, amount, bmessage: string;
begin

  address := BitcoinAddressWrite.Text;
  amount := BitcoinAmountWrite.Text;
  bmessage := BitcoinMessageWrite.Text;

  if RBBitcoinTag.IsChecked then
  begin
    status := WriteNdefRecord_Bitcoin(1, PAnsiChar(AnsiString(address)), PAnsiChar(AnsiString(amount)), PAnsiChar(AnsiString(bmessage)));
  end
  else
  begin
    status := WriteNdefRecord_Bitcoin(0, PAnsiChar(AnsiString(address)), PAnsiChar(AnsiString(amount)), PAnsiChar(AnsiString(bmessage)));
  end;
  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWriteContactClick(Sender: TObject);
var
  status: DL_STATUS;
  name, company, address, phone, email, website: string;
begin

  name := NameEdit.Text;
  company := CompanyEdit.Text;
  address := AddressEdit.Text;
  phone := PhoneEdit.Text;
  email := EmailEdit.Text;
  website := WebsiteEdit.Text;

  if RBContactTag.IsChecked then
  begin
    status := WriteNdefRecord_Contact(1, PAnsiChar(AnsiString(name)), PAnsiChar(AnsiString(company)), PAnsiChar(AnsiString(address)),
                                      PAnsiChar(AnsiString(phone)), PAnsiChar(AnsiString(email)), PAnsiChar(AnsiString(website)));
  end
  else
  begin
    status := WriteNdefRecord_Contact(0, PAnsiChar(AnsiString(name)), PAnsiChar(AnsiString(company)), PAnsiChar(AnsiString(address)),
                                      PAnsiChar(AnsiString(phone)), PAnsiChar(AnsiString(email)), PAnsiChar(AnsiString(website)));
  end;
  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWriteEmailClick(Sender: TObject);
var
  status: DL_STATUS;
  email_address, subject, emessage: string;
begin

  email_address := EAddressWriteEdit.Text;
  subject := SubjectWriteEdit.Text;
  emessage := EMessageWriteEdit.Text;

  if RBEmailTag.IsChecked then
  begin
    status := WriteNdefRecord_Email(1, PAnsiChar(AnsiString(email_address)), PAnsiChar(AnsiString(subject)), PAnsiChar(AnsiString(emessage)));
  end
  else
  begin
    status := WriteNdefRecord_Email(0, PAnsiChar(AnsiString(email_address)), PAnsiChar(AnsiString(subject)), PAnsiChar(AnsiString(emessage)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWritePhoneClick(Sender: TObject);
var
  status: DL_STATUS;
  phone: string;
begin

  phone := PhoneWriteEdit.Text;

  if RBPhoneTag.IsChecked then
  begin
    status := WriteNdefRecord_Phone(1, PAnsiChar(AnsiString(phone)));
  end
  else
  begin
    status := WriteNdefRecord_Phone(0, PAnsiChar(AnsiString(phone)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));

end;

procedure TForm1.btnWriteSmsClick(Sender: TObject);
var
  status: DL_STATUS;
  phone, sms: string;
begin
  phone := PhoneNumWriteEdit.Text;
  sms := MessageWriteEdit.Text;

  if RBSmsTag.IsChecked then
  begin
    status := WriteNdefRecord_SMS(1, PAnsiChar(AnsiString(phone)), PAnsiChar(AnsiString(sms)));
  end
  else
  begin
    status := WriteNdefRecord_SMS(0, PAnsiChar(AnsiString(phone)), PAnsiChar(AnsiString(sms)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnLocationWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  latitude, longitude: string;
begin

  latitude := GeoLatWriteEdit.Text;
  longitude := GeoLonWriteEdit.Text;

  if RBGeoTag.IsChecked then
  begin
      status := WriteNdefRecord_GeoLocation(1, PAnsiChar(AnsiString(latitude)), PAnsiChar(AnsiString(longitude)));
  end
  else
  begin
      status := WriteNdefRecord_GeoLocation(0, PAnsiChar(AnsiString(latitude)), PAnsiChar(AnsiString(longitude)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnApplicationWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  package: string;
begin

  package := ApplicationWriteEdit.Text;

  if RBApplicationTag.IsChecked then
  begin
    status := WriteNdefRecord_AndroidApp(1, PAnsiChar(AnsiString(package)));
  end
  else
  begin
    status := WriteNdefRecord_AndroidApp(0, PAnsiChar(AnsiString(package)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnBluetoothWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  mac_address: string;
begin
  mac_address := BluetoothWriteEdit.Text;

  if mac_address.Length <> 12 then
  begin
    ShowMessage('MAC address must be 6 bytes long (12 hexadecimal characters)');
    Exit;
  end;

  if RBBluetoothTag.IsChecked then
  begin
    status := WriteNdefRecord_Bluetooth(1, PAnsiChar(AnsiString(mac_address)));
  end
  else
  begin
    status := WriteNdefRecord_Bluetooth(0, PAnsiChar(AnsiString(mac_address)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnDestinationWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  destination: string;
begin
  destination := DestinationWriteEdit.Text;

  if RBDestinationTag.IsChecked then
  begin
      status := WriteNdefRecord_NaviDestination(1, PAnsiChar(AnsiString(destination)));
  end
  else
  begin
      status := WriteNdefRecord_NaviDestination(0, PAnsiChar(AnsiString(destination)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnTextWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  text: string;
begin
  text := TextWriteEdit.Text;

  if RBTextTag.IsChecked then
  begin
      status := WriteNdefRecord_Text(1, PAnsiChar(AnsiString(text)));
  end
  else
  begin
      status := WriteNdefRecord_Text(0, PAnsiChar(AnsiString(text)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnStreetViewWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  latitude: string;
  longitude: string;
begin

  latitude := SVLatitudeWriteEdit.Text;
  longitude := SVLongitudeWriteEdit.Text;

  if RBStreetViewTag.IsChecked then
  begin
    status := WriteNdefRecord_StreetView(1, PAnsiChar(AnsiString(latitude)), PAnsiChar(AnsiString(longitude)));
  end
  else
  begin
    status := WriteNdefRecord_StreetView(0, PAnsiChar(AnsiString(latitude)), PAnsiChar(AnsiString(longitude)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnSkypeWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  username: string;
  action: Byte;
begin

  username := SkypeUsernameWrite.Text;
  action := SkypeOperationWriteCB.ItemIndex;

  if RBSkypeTag.IsChecked then
  begin
    status := WriteNdefRecord_Skype(1, PAnsiChar(AnsiString(username)), action);
  end
  else
  begin
    status := WriteNdefRecord_Skype(0, PAnsiChar(AnsiString(username)), action);
  end;
  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnViberReadClick(Sender: TObject);
var
  resultStatus: DL_STATUS;
  vmessage: PChar;
  messageReadData: array of Char;
begin
  try
    New(vmessage);

    SetLength(messageReadData, 500);

    vmessage := PChar(@messageReadData[0]);

    resultStatus := ReadNdefRecord_Viber(vmessage);

    if resultStatus = DL_OK then
    begin
      ViberRead.Text := string(PAnsiChar(@messageReadData[0]));
    end
    else
    begin
      ViberRead.Text := '';
    end;
  finally
    vmessage := nil;

    Dispose(vmessage);

    StatusLabel.Text := string(UFR_Status2String(resultStatus));
  end;
end;

procedure TForm1.btnViberWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  vmessage: string;
begin
  vmessage := ViberWrite.Text;

  if RBViberTag.IsChecked then
  begin
    status := WriteNdefRecord_Viber(1, PAnsiChar(AnsiString(vmessage)));
  end
  else
  begin
    status := WriteNdefRecord_Viber(0, PAnsiChar(AnsiString(vmessage)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnWhatsappReadClick(Sender: TObject);
var
  resultStatus: DL_STATUS;
  vmessage: PChar;
  messageReadData: array of Char;
begin
  try
    New(vmessage);

    SetLength(messageReadData, 500);

    vmessage := PChar(@messageReadData[0]);

    resultStatus := ReadNdefRecord_Whatsapp(vmessage);

    if resultStatus = DL_OK then
    begin
      WhatsappRead.Text := string(PAnsiChar(@messageReadData[0]));
    end
    else
    begin
      WhatsappRead.Text := '';
    end;
  finally
    vmessage := nil;

    Dispose(vmessage);

    StatusLabel.Text := string(UFR_Status2String(resultStatus));
  end;
end;

procedure TForm1.btnWhatsappWriteClick(Sender: TObject);
var
  status: DL_STATUS;
  vmessage: string;
begin
  vmessage := WhatsappWrite.Text;

  if RBWhatsappTag.IsChecked then
  begin
    status := WriteNdefRecord_Whatsapp(1, PAnsiChar(AnsiString(vmessage)));
  end
  else
  begin
    status := WriteNdefRecord_Whatsapp(0, PAnsiChar(AnsiString(vmessage)));
  end;

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnBluetoothReadClick(Sender: TObject);
var
  resultStatus: DL_STATUS;
  macAddress: PChar;
  btMacAddressReadData: array of Char;
begin
  try
    New(macAddress);

    SetLength(btMacAddressReadData, 500);

    macAddress := PChar(@btMacAddressReadData[0]);

    resultStatus := ReadNdefRecord_Bluetooth(macAddress);

    if resultStatus = DL_OK then
    begin
      BluetoothReadEdit.Text := string(PAnsiChar(@btMacAddressReadData[0]));
    end
    else
    begin
      BluetoothReadEdit.Text := '';
    end;
  finally
    macAddress := nil;

    Dispose(macAddress);

    StatusLabel.Text := string(UFR_Status2String(resultStatus));
  end;
end;

procedure TForm1.btnReadAddressClick(Sender: TObject);
var
  status: DL_STATUS;
  address: PChar;
  addressReadData: array of Char;
begin
  try
    New(address);

    SetLength(addressReadData, 500);

    address := PChar(@addressReadData[0]);

    status := ReadNdefRecord_Address(address);

    if status = DL_OK then
    begin
      AddressReadEdit.Text := string(PAnsiChar(@addressReadData[0]));
    end
    else
    begin
      AddressReadEdit.Text := '';
    end;
  finally
    address := nil;

    Dispose(address);

    StatusLabel.Text := string(UFR_Status2String(status));
  end;
end;

procedure TForm1.btnReadPhoneClick(Sender: TObject);
var
  status: DL_STATUS;
  phone: PChar;
  phoneReadData: array of Char;
begin
  try
    New(phone);

    SetLength(phoneReadData, 500);

    phone := PChar(@phoneReadData[0]);

    status := ReadNdefRecord_Phone(phone);

    if status = DL_OK then
    begin
      PhoneReadEdit.Text := string(PAnsiChar(@phoneReadData[0]));
    end
    else
    begin
      PhoneReadEdit.Text := '';
    end;
  finally
    phone := nil;

    Dispose(phone);

    StatusLabel.Text := string(UFR_Status2String(status));
  end;
end;

procedure TForm1.btnReadEmailClick(Sender: TObject);
var
  status: DL_STATUS;
  email_address, subject, emessage: PChar;
  eAddressReadData, subjectReadData, emessageReadData: array of Char;
begin

  New(email_address);
  New(subject);
  New(emessage);

  SetLength(eAddressReadData, 500);
  SetLength(subjectReadData, 500);
  SetLength(emessageReadData, 500);

  email_address := PChar(@eAddressReadData[0]);
  subject := PChar(@subjectReadData[0]);
  emessage := PChar(@emessageReadData[0]);

  status := ReadNdefRecord_Email(email_address, subject, emessage);

  if status=DL_OK then
  begin
    EAddressReadEdit.Text := string(PAnsiChar(@eAddressReadData[0]));
    SubjectReadEdit.Text :=  string(PAnsiChar(@subjectReadData[0]));
    EMessageReadEdit.Text := string(PAnsiChar(@emessageReadData[0]));
  end
  else
  begin
    EAddressReadEdit.Text := '';
    SubjectReadEdit.Text :=  '';
    EMessageReadEdit.Text := ''
  end;

  email_address:=nil;
  subject:=nil;
  emessage:=nil;

  Dispose(email_address);
  Dispose(subject);
  Dispose(emessage);

  StatusLabel.Text := string(UFR_Status2String(status));

end;

procedure TForm1.btnReadSmsClick(Sender: TObject);
var
  status: DL_STATUS;
  phone: PChar;
  sms: PChar;
  phoneReadData: array of Char;
  smsReadData: array of Char;
begin
    New(phone);
    New(sms);

    SetLength(phoneReadData, 500);
    SetLength(smsReadData, 500);

    phone := PChar(@phoneReadData[0]);
    sms := PChar(@smsReadData[0]);

    status := ReadNdefRecord_SMS(phone, sms);

    if status = DL_OK then
    begin
      PhoneNumReadEdit.Text := string(PAnsiChar(@phoneReadData[0]));
      MessageReadEdit.Text := string(PAnsiChar(@smsReadData[0]));
    end
    else
    begin
      PhoneNumReadEdit.Text := '';
      MessageReadEdit.Text := '';
    end;

    phone := nil;
    sms := nil;

    Dispose(phone);
    Dispose(sms);

    StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnReadTextClick(Sender: TObject);
var
  status: DL_STATUS;
  text: PChar;
  textReadData: array of Char;
begin
    New(text);

    SetLength(textReadData, 500);

    text := PChar(@textReadData[0]);

    status := ReadNdefRecord_Text(text);

    if status = DL_OK then
    begin
      TextReadEdit.Text := string(PAnsiChar(@textReadData[0]));
    end
    else
    begin
      TextReadEdit.Text := '';
    end;

    text := nil;

    Dispose(text);

    StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnLocationReadClick(Sender: TObject);
var
  status: DL_STATUS;
  latitude: PChar;
  longitude: PChar;
  latitudeReadData: array of Char;
  longitudeReadData: array of Char;
begin
    New(latitude);
    New(longitude);

    SetLength(latitudeReadData, 500);
    SetLength(longitudeReadData, 500);

    latitude := PChar(@latitudeReadData[0]);
    longitude := PChar(@longitudeReadData[0]);

    status := ReadNdefRecord_GeoLocation(latitude, longitude);

    if status = DL_OK then
    begin
      GeoLatReadEdit.Text := string(PAnsiChar(@latitudeReadData[0]));
      GeoLonReadEdit.Text := string(PAnsiChar(@longitudeReadData[0]));
    end
    else
    begin
      GeoLatReadEdit.Text := '';
      GeoLonReadEdit.Text := '';
    end;

    latitude := nil;
    longitude := nil;

    Dispose(latitude);
    Dispose(longitude);

    StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnStreetViewReadClick(Sender: TObject);
var
  status: DL_STATUS;
  latitude: PChar;
  longitude: PChar;
  latitudeReadData: array of Char;
  longitudeReadData: array of Char;
begin
    New(latitude);
    New(longitude);

    SetLength(latitudeReadData, 500);
    SetLength(longitudeReadData, 500);

    latitude := PChar(@latitudeReadData[0]);
    longitude := PChar(@longitudeReadData[0]);

    status := ReadNdefRecord_StreetView(latitude, longitude);

    if status = DL_OK then
    begin
      SVLatitudeReadEdit.Text := string(PAnsiChar(@latitudeReadData[0]));
      SVLongitudeReadEdit.Text := string(PAnsiChar(@longitudeReadData[0]));
    end
    else
    begin
      SVLatitudeReadEdit.Text := '';
      SVLongitudeReadEdit.Text := '';
    end;

    latitude := nil;
    longitude := nil;

    Dispose(latitude);
    Dispose(longitude);

    StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnDestinationReadClick(Sender: TObject);
var
  status: DL_STATUS;
  destination: PChar;
  destReadData: array of Char;
begin
  New(destination);

  SetLength(destReadData, 500);

  destination := PChar(@destReadData[0]);

  status := ReadNdefRecord_NaviDestination(destination);

  if status=DL_OK then
  begin
     DestinationReadEdit.Text := string(PAnsiChar(@destReadData[0]));
  end
  else
  begin
     DestinationReadEdit.Text := '';
  end;

  destination := nil;
  Dispose(destination);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnApplicationReadClick(Sender: TObject);
var
  status: DL_STATUS;
  package: PChar;
  packageReadData: array of Char;
begin
  New(package);

  SetLength(packageReadData, 500);

  package := PChar(@packageReadData[0]);

  status := ReadNdefRecord_AndroidApp(package);

  if status=DL_OK then
  begin
     ApplicationReadEdit.Text := string(PAnsiChar(@packageReadData[0]));
  end
  else
  begin
     ApplicationReadEdit.Text := '';
  end;

  package := nil;
  Dispose(package);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnBitcoinReadClick(Sender: TObject);
var
  status: DL_STATUS;
  address, amount, bmessage: PChar;
  addressReadData, amountReadData, bmessageReadData: array of Char;
begin
  New(address);
  New(amount);
  New(bmessage);

  SetLength(addressReadData, 500);
  SetLength(amountReadData, 500);
  SetLength(bmessageReadData, 500);

  address := PChar(@addressReadData[0]);
  amount := PChar(@amountReadData[0]);
  bmessage := PChar(@bmessageReadData[0]);

  status := ReadNdefRecord_Bitcoin(address, amount, bmessage);

  if status=DL_OK then
  begin
     BitcoinAddressRead.Text := string(PAnsiChar(@addressReadData[0]));
     BitcoinAmountRead.Text := string(PAnsiChar(@amountReadData[0]));
     BitcoinMessageRead.Text := string(PAnsiChar(@bmessageReadData[0]));
  end
  else
  begin
     BitcoinAddressRead.Text := '';
     BitcoinAmountRead.Text := '';
     BitcoinMessageRead.Text := '';
  end;

  address := nil;
  Dispose(address);
  amount := nil;
  Dispose(amount);
  bmessage := nil;
  Dispose(bmessage);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnContactReadClick(Sender: TObject);
var
  status: DL_STATUS;
  vcard: PChar;
  vcardReadData: array of Char;
begin
  New(vcard);

  SetLength(vcardReadData, 500);

  vcard := PChar(@vcardReadData[0]);

  status := ReadNdefRecord_Contact(vcard);

  if status=DL_OK then
  begin
     ContactReadEdit.Text := string(PAnsiChar(@vcardReadData[0]));
  end
  else
  begin
     ContactReadEdit.Text := '';
  end;

  vcard := nil;
  Dispose(vcard);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnSkypeReadClick(Sender: TObject);
var
  status: DL_STATUS;
  username, action: PChar;
  usernameReadData, actionReadData: array of Char;
begin
  New(username);
  New(action);

  SetLength(usernameReadData, 500);
  SetLength(actionReadData, 500);

  username := PChar(@usernameReadData[0]);
  action := PChar(@actionReadData[0]);

  status := ReadNdefRecord_Skype(username, action);

  if status=DL_OK then
  begin
     SkypeUsernameRead.Text := string(PAnsiChar(@usernameReadData[0]));
     SkypeOperationEdit.Text := string(PAnsiChar(@actionReadData[0]));
  end
  else
  begin
     SkypeUsernameRead.Text := '';
     SkypeOperationEdit.Text := '';
  end;

  username := nil;
  Dispose(username);
  action := nil;
  Dispose(action);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnNdefInitializeClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := ndef_card_initialization();

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnEraseAllNdefRecordsClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := erase_all_ndef_records(1);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnEraseLastNdefRecordClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := erase_last_ndef_record(1);

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnStartCombinedClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := CombinedModeEmulationStart();

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnStartDedicatedClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := TagEmulationStart();

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnStopEmulationClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := TagEmulationStop();

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.chkUseAdvancedChange(Sender: TObject);
begin
  if chkUseAdvanced.IsChecked then
  begin
    txtReaderType.Enabled := true;
    txtPortName.Enabled := true;
    txtPortInterface.Enabled := true;
    txtArg.Enabled := true;
    LBL_ReaderType.Enabled := true;
    LBL_PortName.Enabled := true;
    LBL_PortInterface.Enabled := true;
    LBL_Arg.Enabled := true;
  end
  else
  begin
    txtReaderType.Enabled := false;
    txtPortName.Enabled := false;
    txtPortInterface.Enabled := false;
    txtArg.Enabled := false;
    LBL_ReaderType.Enabled := false;
    LBL_PortName.Enabled := false;
    LBL_PortInterface.Enabled := false;
    LBL_Arg.Enabled := false;
  end;
end;

procedure TForm1.bntReaderCloseClick(Sender: TObject);
var
  status: DL_STATUS;
begin
  status := ReaderClose();

  StatusLabel.Text := string(UFR_Status2String(status));
end;

procedure TForm1.btnAddressFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := AddressTab;
end;

procedure TForm1.btnApplicationFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := ApplicationTab;
end;

procedure TForm1.btnBitcoinFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := BitcoinTab;
end;

procedure TForm1.btnBluetoothFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := BluetoothTab;
end;

procedure TForm1.btnContactFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := ContactTab;
end;

procedure TForm1.btnSkypeFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := SkypeTab;
end;

procedure TForm1.btnSmsFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := SmsTab;
end;

procedure TForm1.btnStreetViewFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := StreetViewTab;
end;

procedure TForm1.btnTextFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TextTab;
end;

procedure TForm1.btnRawDataFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := RawDataTab;
end;

procedure TForm1.btnLocationFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := LocationTab;
end;

procedure TForm1.btnPhoneFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := PhoneTab;
end;

procedure TForm1.btnDestinationFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := DestinationTab;
end;

procedure TForm1.btnEmailFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := EmailTab;
end;

procedure TForm1.btnUriFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := UriTab;
end;

procedure TForm1.btnWhatsappFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := WhatsappTab;
end;

procedure TForm1.btnViberFrameClick(Sender: TObject);
begin
  TabControl1.ActiveTab := ViberTab;
end;

end.
