unit SqlUtil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, VirtualTrees;

type
  TMain = class(TForm)
    lblDbType: TLabel;
    chkAllStation: TCheckBox;
    lblStation: TLabel;
    cbbStation: TComboBoxEx;
    lblVpn: TLabel;
    edtVpn: TEdit;
    cbbDbType: TComboBoxEx;
    btnExecuteSql: TButton;
    btnCleanSql: TButton;
    redtSql: TRichEdit;
    btnCleanResultLog: TButton;
    redtResultLog: TRichEdit;
    btnCleanResult: TButton;
    vrtlstrngtrSqlResult: TVirtualStringTree;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

end.
