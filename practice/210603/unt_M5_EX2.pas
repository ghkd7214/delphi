unit unt_M5_EX2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Transparent := True;
  Label2.Transparent := False;
  Label3.Transparent := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Transparent := False;
  Label2.Transparent := True;
  Label3.Transparent := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Transparent := False;
  Label2.Transparent := False;
  Label3.Transparent := True;
end;

end.
//모듈5 연습문제2
