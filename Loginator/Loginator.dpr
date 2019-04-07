program Loginator;

uses
  System.StartUpCopy,
  FMX.Forms,
  Tester in 'Tester.pas' {Form1},
  LoginatorUnit in 'LoginatorUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
