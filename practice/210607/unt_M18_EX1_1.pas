unit unt_M18_EX1_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  n = 10; // �迭 ����

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;



  A1 = array[1..n] of integer;

var
  Form1: TForm1;

  a2 : array of Integer;

  procedure SetArray(var a : A1);
  procedure change(var x, y : Integer);
//  function Min(a,i) : Integer;

// ���ν��� ����


implementation

{$R *.dfm}




procedure SetArray(var a :a1);
var

  i : integer;
begin
  SetLength(a2,n);
  Form1.Memo1.Lines.Clear;
  for i := 1 to n do
    begin
      A2[i] := random(10);
      Form1.Memo1.Lines.Append(IntToStr(i)+' : '+IntToStr(a2[i]));
    end;

end;



function NumMin(start: Integer): Integer;
var
  i, m: Integer;
begin
  m := start;
  for i := m+1 to n do
    if a2[i] < a2[m] then
      m := i;
  NumMin := m;
end;



procedure Change(var x, y : Integer);
var
  temp: Integer;
begin
  temp := x;
  x := y;
  y := temp;
end;



procedure SortArray;
var
  i: Integer;
begin
  for i := 1 to n-1 do
    Change(a2[i], a2[NumMin(i)]);
end;



procedure TForm1.Button1Click(Sender: TObject);
var
  a : a1;
begin
  SetArray(a);
end;
// ��ư1 Ŭ���� �޸�1�� ����迭 ���



procedure TForm1.Button2Click(Sender: TObject);
var
  a : A1;
  i : Integer;
begin
  SortArray();
  Form1.Memo2.Lines.Clear;
  for i := 1 to n do
    begin
      Form1.Memo2.Lines.Append(IntToStr(i)+' : '+IntToStr(a2[i]));
    end;

end;



// ��ư2 Ŭ���� �޸�2�� ���õ� �迭 ���
end.
