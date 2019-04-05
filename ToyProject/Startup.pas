unit Startup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btn_save: TButton;
    SpeedButton1: TSpeedButton;
    btn_delete: TButton;
    btn_edit: TButton;
    txt_name: TEdit;
    CheckBox1: TCheckBox;
    txt_name2: TEdit;
    txt_name3: TEdit;
    lb_value: TLabel;
    Button1: TButton;
    procedure btn_saveClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_deleteClick(Sender: TObject);
begin
  txt_name.text := '';
  txt_name2.text := '';
  txt_name3.text := '';
end;

procedure TForm1.btn_saveClick(Sender: TObject);
  var warning, warn2:string;
begin
  warning := 'batata';
  warn2 := 'cebola';
  txt_name.Text := warning;
  txt_name2.Text := warning;
  txt_name3.Text := warn2;
end;

procedure TForm1.Button1Click(Sender: TObject);
  var x:Integer;
begin
  x := StrToInt(txt_name.Text);
  if(x>5) then
  begin
    ShowMessage('batata');
  end
  else
  begin
    ShowMessage('cebola');
  end;

end;

end.
