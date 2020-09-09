program TestLocalizer;

uses
  Vcl.Forms, LocOnFly,
  Main.Form in 'Main.Form.pas' {Form1},
  Resources in 'Resources.pas';

{$R TestLocalizer.KLR}

{$R *.res}

begin
  LocalizerOnFly.InitReg;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
