unit SqlUtil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, VirtualTrees, CommonUtil;

type
  TMain = class(TForm)
    lblDbType: TLabel;
    chkAllStation: TCheckBox;
    lblStation: TLabel;
    lblVpn: TLabel;
    edtVpn: TEdit;
    btnExecuteSql: TButton;
    btnCleanSql: TButton;
    redtSql: TRichEdit;
    btnCleanResultLog: TButton;
    redtResultLog: TRichEdit;
    btnCleanResult: TButton;
    cbbStation: TComboBox;
    cbbDbType: TComboBox;
    redtSqlResult: TRichEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbStationSelect(Sender: TObject);
    procedure cbbStationChange(Sender: TObject);
    procedure chkAllStationClick(Sender: TObject);
    procedure btnCleanSqlClick(Sender: TObject);
    procedure btnCleanResultLogClick(Sender: TObject);
    procedure btnCleanResultClick(Sender: TObject);
    procedure btnExecuteSqlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses
  DBXJSON, Models;

{$R *.dfm}

procedure TMain.btnCleanResultClick(Sender: TObject);
begin
  redtSqlResult.Text:= '';
end;

procedure TMain.btnCleanResultLogClick(Sender: TObject);
begin
  redtResultLog.Text:= '';
end;

procedure TMain.btnCleanSqlClick(Sender: TObject);
begin
  redtSql.Text:= '';
end;

procedure TMain.btnExecuteSqlClick(Sender: TObject);
begin
  redtResultLog.Text:= Md5(redtSql.Text);
end;

procedure TMain.cbbStationChange(Sender: TObject);
var
  tmpText: string;
begin
  tmpText:= cbbStation.Text;
  if tmpText='' then
  begin
    edtVpn.Text:= '';
  end;
end;

procedure TMain.cbbStationSelect(Sender: TObject);
var
  tmpSelectStation: TStation;
  tmpSyncPort: Integer;
  tmpJsonValue: TJSONValue;
begin
  tmpSelectStation:= TStation(cbbStation.Items.Objects[cbbStation.ItemIndex]);

  tmpJsonValue:= ObjToStr(tmpSelectStation);

  tmpSyncPort:= tmpSelectStation.syncPort;
  edtVpn.Text:= Concat(tmpSelectStation.vpn, ':', IntToStr(tmpSyncPort));

  redtSql.Text:= tmpJsonValue.ToString;
end;

procedure TMain.chkAllStationClick(Sender: TObject);
begin
  if chkAllStation.Checked then
  begin
    cbbStation.Enabled:=False;
    edtVpn.Enabled:=False;
  end
  else
  begin
    cbbStation.Enabled:=True;
    edtVpn.Enabled:=True;
  end;
end;

procedure TMain.FormShow(Sender: TObject);
var
  stationFile: TextFile;
  tmpStationStr: string;
  station: TStation;
  tmpSplitList: TStringList;
begin
  cbbDbType.Items.Add('前置机');
  cbbDbType.Items.Add('站务');

  cbbDbType.Text:= '前置机';

  AssignFile(stationFile, 'org.txt');
  Reset(stationFile);
  while not Eof(stationFile) do
  begin
    Readln(stationFile, tmpStationStr);
    station := TStation.Create;
    tmpSplitList := TStringList.Create;
    ExtractStrings([#9], [' '], PChar(tmpStationStr), tmpSplitList);
    station.code := tmpSplitList[0];
    station.name := tmpSplitList[1];
    station.vpn := tmpSplitList[2];
    station.salePort := StrToInt(tmpSplitList[3]);
    station.syncPort := StrToInt(tmpSplitList[4]);
    tmpSplitList.Free;
    cbbStation.AddItem(station.name, station);
  end;
  CloseFile(stationFile);
end;

end.
