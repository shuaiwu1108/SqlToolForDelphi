program SqlToolForDelphi;

uses
  Forms,
  SqlUtil in 'SqlUtil.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SQL����';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
