unit unt_M12_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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

  procedure change(var s: string);
{델파이는 객체지향을 제공하지만 근간인 파스칼은 절차지향언어라
여기 선언해두지않으면
프로시져 change가 정의되기 전에 호출되면 빨간줄 뜸}

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x: string;
begin
  x:= Edit1.Text;
  change(x);  //  저 위에 주석부분의 선언 지우면 여기서 빨간줄뜸
  Edit1.Text := x;

end;

procedure change(var s: string);
var
  s1 : string;
begin
  s1 := copy(s, 1, pos(' ',s)-1);
  Delete(s,1, pos(' ',s));
  s:= s+' '+s1;
end;



end.
