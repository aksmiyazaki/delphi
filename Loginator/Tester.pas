unit Tester;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, LoginatorUnit;

type
  TForm1 = class(TForm)
    textbox_filepath: TEdit;
    button_openfile: TButton;
    textbox_content: TEdit;
    button_write: TButton;
    procedure button_openfileClick(Sender: TObject);
    procedure button_writeClick(Sender: TObject);
  private
    { Private declarations }
    var log : TLoginator;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}


procedure TForm1.button_openfileClick(Sender: TObject);
begin
  log := TLoginator.Create(textbox_filepath.Text);
  ShowMessage('The Filename inside log is: ' + log.FileName);
end;

procedure TForm1.button_writeClick(Sender: TObject);
begin
  log.Log(textbox_content.Text);
end;

end.
