unit unt_M18_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  n = 10; // 배열 길이

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }

    procedure SetArray();
    procedure change(var x, y : Integer);
    procedure sortArray();
    function NumMin(start: Integer) : Integer;

  public
    { Public declarations }
  end;





var
  Form2: TForm2;

  a2 : array of Integer;


//  function Min(a,i) : Integer;

// 프로시져 선언


implementation

{$R *.dfm}







procedure tForm2.SetArray();
var
  i : integer;
begin
  SetLength(A2,n);
  Form2.Memo1.Lines.Clear;
  for i := 1 to n do
    begin
      A2[i] := random(10);
      Form2.Memo1.Lines.Append(IntToStr(i)+' : '+IntToStr(a2[i]));
    end;

end;







procedure tForm2.Change(var x, y : Integer);
var
  temp: Integer;
begin
  temp := x;
  x := y;
  y := temp;
end;



procedure tForm2.SortArray();
var
  i: Integer;
begin
  for i := 1 to n-1 do
    Change(a2[i], a2[NumMin(i)]);
end;


function TForm2.NumMin(start: Integer): Integer;
var
  i, m: Integer;
begin
  m := start;
  for i := m+1 to n do
    if a2[i] < a2[m] then
      m := i;
  NumMin := m;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  a : a1;
begin
  SetArray();
end;
// 버튼1 클릭시 메모1에 현재배열 출력



procedure TForm2.Button2Click(Sender: TObject);
var
  a : A1;
  i : Integer;
begin
  SortArray();
  Form2.Memo2.Lines.Clear;
  for i := 1 to n do
    begin
      Form2.Memo2.Lines.Append(IntToStr(i)+' : '+IntToStr(a2[i]));
    end;

end;



//procedure TForm1.Button3Click(Sender: TObject);
//var
//  a : a1;
//  i : Integer;
//begin
//  Form1.Memo2.Lines.Clear;
//  for i := 1 to n do
//    begin
//      Form1.Memo2.Lines.Append(IntToStr(i)+' : '+IntToStr(a[i]));
//    end;
//end;

// 버튼2 클릭시 메모2에 소팅된 배열 출력
end.
