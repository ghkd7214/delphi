unit unt_M20_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  i, j, n, m : Integer;
begin
  n := StrToInt(edit1.Text);
  m := StrToInt(edit2.Text);
  StringGrid1.RowCount := n;
  StringGrid1.colCount := m;
  for i := 0 to n-1 do
    for j := 0 to m-1 do
      StringGrid1.Cells[j,i] := IntToStr(Random(100)-50);
end;



procedure TForm1.Button2Click(Sender: TObject);
var
   i, j, n, m, k : integer;
begin
  n := StringGrid1.RowCount;
  m := StringGrid1.ColCount;
  memo1.Lines.Clear;
  memo1.Lines.Append('각 행의 음수의 개수');
  for i := 0 to n-1 do
    begin
      k := 0;
      for j := 0 to m-1 do
        if StrToInt(StringGrid1.Cells[j,i]) < 0 then
          k := k+1;
      memo1.Lines.Append(IntToStr(i+1)+'행 :'+IntToStr(k));
    end;
end;

end.
