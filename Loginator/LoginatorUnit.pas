unit LoginatorUnit;

interface

uses SysUtils;

type
  TLoginator = class(TObject)
  private
    target_file  : string;
    handle : TextFile;
  protected
  public
    constructor Create(file_name:string);
    destructor Destroy; override;
    procedure Log(logline:string);
  published
    property FileName : string
      read target_file;
end;

implementation

constructor TLoginator.Create(file_name:string);
begin
  file_name := file_name + '.log';
  self.target_file := file_name;
  AssignFile(handle, file_name);

  if FileExists(file_name) then
    Append(handle)
  else
    ReWrite(handle);
end;

procedure TLoginator.Log(logline:string);
  var tab:char;
begin
  tab := chr(9);
  WriteLn(self.handle, FormatDateTime('ddddd hh:mm:ss.zzz',Now) + tab + tab + logline);
  Flush(self.handle);
end;

destructor TLoginator.Destroy;
begin
  CloseFile(self.handle);
end;

end.
