unit unt_M11_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edit1: TEdit;
    Button1: TButton;
    PaintBox1: TPaintBox;
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
  n, i, j:Integer;
  x, y, z:Integer;

begin
  n := StrToInt(edit1.Text);
  x := 20;
  y := 20;
  z := 30;       //작은 사각형 한변길이
  for I := 0 to n do
    begin
      PaintBox1.Canvas.Pen.Width := 2;
      PaintBox1.Canvas.MoveTo(x, y+(z*i));
      PaintBox1.Canvas.LineTo(x+(z*n), y+(z*i));
    end;
  for I := 0 to n do
    begin
      PaintBox1.Canvas.Pen.Width := 2;
      PaintBox1.Canvas.MoveTo(x+(z*i), y);
      PaintBox1.Canvas.LineTo(x+(z*i), y+(z*n));
    end;
end;

//체스판 그리기

end.
