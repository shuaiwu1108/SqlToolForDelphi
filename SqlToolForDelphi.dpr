program SqlToolForDelphi;

uses
  Forms,
  SqlUtil in 'SqlUtil.pas' {Main},
  Models in 'Models.pas',
  CommonUtil in 'CommonUtil.pas',
  superobject in 'superobject.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SQL¹¤¾ß';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
