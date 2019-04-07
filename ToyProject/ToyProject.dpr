program ToyProject;

uses
  Vcl.Forms,
  Startup in 'Startup.pas' {Form1},
  FrmSecondScreen in 'FrmSecondScreen.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
