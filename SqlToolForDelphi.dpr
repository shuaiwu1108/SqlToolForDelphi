program SqlToolForDelphi;

uses
  Forms,
  SqlUtil in 'SqlUtil.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SQL¹¤¾ß';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
