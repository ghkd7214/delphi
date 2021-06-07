unit unt_M17_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  A1 = array[1..10] of Integer;

var
  Form1: TForm1;

  procedure MakeArray(var A: A1);
  procedure AddArray(var A: A1);

  implementation


{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  A: A1;
begin
  MakeArray(A);
  AddArray(A);
end;


procedure MakeArray(var A : A1);
var
  i : integer;
begin
  for i := 1 to 10 do
    a[i] := Random(10);
end;

procedure AddArray(var A : A1);
var
  i:Integer;

begin
  Form1.Memo1.Lines.Clear;
  for I := 1 to 10 do
    form1.Memo1.Lines.Append(IntToStr(A[i]));
end;


end.
//배열에 랜덤하게 수 집어넣는 프로그램