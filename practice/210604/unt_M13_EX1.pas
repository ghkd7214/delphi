unit unt_M13_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  i, x:integer;
  s:string;
  code : integer;

begin
  s := Edit1.Text;
  Label1.Caption := '';
  for I := 1 to Length(s) do
  begin
    val(s[i],x,code);
    if code <> 0 then //val의 code는 숫자변환성공시 0이 된다 즉 문자열이면 무조건 0이아닌것
    Label1.Caption := Label1.Caption + s[i];
  end;
end;

end.
