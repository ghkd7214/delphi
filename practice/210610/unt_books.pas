unit unt_books;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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

  books : array of string;

const
  n = 10; //최대 책개수



implementation

{$R *.dfm}


//procedure search(var x : string);
//begin
//
//  x := Form1.Edit1.Text;
//
//  if x :=  then
//
//end;

function xy (x,y:Integer) : Integer;
var
  i, j : Integer;
begin
  xy := x + y + (y * 4);
end;



procedure TForm1.Button2Click(Sender: TObject);    //초기화

begin
  StringGrid1.RowCount := n + 1;
  StringGrid1.Cells[0,0] := '제목';
  StringGrid1.Cells[1,0] := '저자';
  StringGrid1.Cells[2,0] := '출판사';
  StringGrid1.Cells[3,0] := '가격';
  StringGrid1.Cells[4,0] := '재고량';

  SetLength(books,n*5);
  books[xy(0,0)] :=  '시작하는 사람을 위한 델파이 프로그래밍';
  books[xy(1,0)] :=  '유미 칼리코프';
  books[xy(2,0)] :=  'DEVGEAR PRESS';
  books[xy(3,0)] :=  '12000';
  books[xy(4,0)] :=  '3';

  books[xy(0,1)] := '델파이 Begin...End';
  books[xy(1,1)] := '김원경';
  books[xy(2,1)] := 'DEVGEAR PRESS';
  books[xy(3,1)] := '28000';
  books[xy(4,1)] := '1';

  books[xy(0,2)] := '관점을 디자인하라';
  books[xy(1,2)] := '박용후';
  books[xy(2,2)] := '프롬북스';
  books[xy(3,2)] := '14000';
  books[xy(4,2)] := '6';

  books[xy(0,3)] := '책먹는 여우';
  books[xy(1,3)] := '프란치스카 비커만';
  books[xy(2,3)] := '주니어김영사';
  books[xy(3,3)] := '11000';
  books[xy(4,3)] := '10';

end;


procedure TForm1.Button1Click(Sender: TObject);    //검색
var
  i, j, x, y : Integer;
begin
  for I := 0 to (n*5)-1 do
    for j := 0 to 4 do
      stringgrid1.Cells[j,i+1] := '';

  for I := 0 to (n*5)-1 do
    begin
    if edit1.Text = books[xy(0,i)] then
      begin
      for j := 0 to 4 do
        StringGrid1.Cells[j,1] := books[xy(j,i)];
      end;

    end;

end;


procedure TForm1.Button3Click(Sender: TObject);     // 전체조회
var
  i, j, x, y : Integer;
begin
  for I := 0 to (n*5)-1 do
    begin

      for j := 0 to 4 do
        StringGrid1.Cells[j,i+1] := books[xy(j,i)];

    end;

end;




end.


{
1차원배열로 만들어 2차원 배열인것처럼 사용하는 것이 훨씬 더 좋을 것 같다.

위의 3 x 5 배열이 경우

선언
2dArray : Array of String; //1차원 배열로 선언

할당
SetLength(2dArray, 3 x 5);  //크기 15 (0..14)인 1차원 배열할당

사용식
x + y + (y * cx) ;// x = x축, y=y축, cx = x 축의 크기

[출처] [Delphi] 2차원 배열의 동적할당|작성자 평정
https://blog.naver.com/ok1362/220911466300
}


