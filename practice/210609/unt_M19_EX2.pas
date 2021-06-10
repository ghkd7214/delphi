unit unt_M19_EX2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    edit_cnt: TEdit;
    edit_value: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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

var
cnt : Integer;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i :byte;

begin
  CNT := strToInt(edit_cnt.Text);
  StringGrid1.RowCount := cnt + 1;

  StringGrid1.Cells[0,0] := '실험횟수';
  StringGrid1.Cells[1,0] := '가중치';
  StringGrid1.Cells[2,0] := '측정된값';
  StringGrid1.Cells[3,0] := '결과값';
  StringGrid1.Cells[4,0] := '최대값/최소값';
  for I := 1 to cnt do
    begin
      StringGrid1.Cells[0,i] := IntToStr(i);
      StringGrid1.Cells[1,i] := edit_value.Text;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:byte;
  Minid,Maxid:integer;
  MinValue, MaxValue:integer;
  value:integer;
begin
  Maxvalue := 0;
  for I := 1 to cnt do
  begin
    value := StrToInt(StringGrid1.Cells[2,i]) * (StrToInt(Edit_Value.Text));
    StringGrid1.Cells[3,i] := IntToStr(value);
    if value > Maxvalue then
    begin
        Maxvalue := value;
        mAXid := i;
    end;
    if i = 1 then
    begin
       Minvalue := value;
       minid := i;
    end
    else
      if value < MinValue then
      begin
         Minvalue := value;
       minid := i;
      end;
  end;
  StringGrid1.Cells[4,Minid] := '최소값';
  StringGrid1.Cells[4,Maxid] := '최대값';
end;



end.
