program ApiLicenca;

uses
  Vcl.Forms,
  Controle in 'src\Controle.pas' {ControleLicenca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TControleLicenca, ControleLicenca);
  Application.Run;
end.
