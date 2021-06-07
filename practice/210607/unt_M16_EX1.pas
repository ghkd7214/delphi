unit unt_M16_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edit1: TEdit;
    edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
  i, x, y : Integer;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
  x := StrToInt(Edit1.Text);
  y := StrToInt(Edit2.Text);
  i := random(y-x+1)+x;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(i));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if StrToInt(Edit3.Text) = i then
    ShowMessage('맞췄습니다!')
  else if i > StrToInt(Edit3.Text) then
    ShowMessage('더 작은 수를 입력하셨습니다.')
  else
    ShowMessage('더 큰 수를 입력하셨습니다.');
end;

end.
