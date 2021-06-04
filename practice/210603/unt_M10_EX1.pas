unit unt_M10_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PaintBox1: TPaintBox;
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

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  canvas.pen.color:=clred;

  Canvas.Pen.Width := 1;
  PaintBox1.canvas.Ellipse(100,100, clientwidth div 2,clientwidth div 2 );
//  canvas.Ellipse(100,210, (clientwidth div 2)+10,(clientwidth div 2)+110 );
end;        //좌측 상단이 0,0

procedure TForm1.Button2Click(Sender: TObject);
var
  x0, y0: integer;
begin
  PaintBox1.canvas.Pixels[300,100]:= clred;
end;
// 페인트 박스 = 레이어
procedure TForm1.Button3Click(Sender: TObject);
begin
  PaintBox1.canvas.lineto(200,300);
end;

end.
