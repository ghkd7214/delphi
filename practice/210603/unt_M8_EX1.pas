unit unt_M8_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
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

procedure change(a, b:String);
var
  temp:string;
begin
  temp := a;
  a := b;
  b := temp;
end;




procedure TForm1.Button1Click(Sender: TObject);
  var
    x, y: String;
begin
  x := edit1.text;
  y := edit2.text;

  change(x,y);

  Label1.caption := x;
  Label2.Caption := y;
end;

end.


