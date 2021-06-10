unit unt_M19_EX1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtLine: TEdit;
    edtStolb: TEdit;
    edtFline: TEdit;
    edtFstolb: TEdit;
    sgdMy: TStringGrid;
    btnCellRed: TButton;
    btnFCGreen: TButton;
    procedure btntab1Click(Sender: TObject);
    procedure btnCellRedClick(Sender: TObject);
    procedure btnFCGreenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure getGridParam(var n1, n2, n3, n4 : integer);
begin
  n1 := StrToInt(form1.edtLine.Text);
  n2 := StrToInt(form1.edtStolb.Text);
  n3 := StrToInt(form1.edtFline.Text);
  n4 := StrToInt(form1.edtFstolb.Text);
end;


procedure CreateGrid(n1, n2, n3, n4 : integer);
begin
  form1.sgdMy.RowCount := n2;
  form1.sgdMy.ColCount := n1;
  form1.sgdMy.FixedCols := n4;
  form1.sgdMy.fixedRows := n3;
end;


procedure TForm1.btnTab1Click(Sender: TObject);
var
  n1, ns, nfl, nfs : integer;
begin
  getGridParam(n1, ns, nfl, nfs);
  CreateGrid(n1, ns, nfl, nfs);
end;


procedure TForm1.btnCellRedClick(Sender: TObject);
begin
  form1.sgdMy.Color := clRed;
end;


procedure TForm1.btnFCGreenClick(Sender: TObject);
begin
  sgdMy.cells[0,0] := 'ǥ';

//  form1.sgdMy.FixedColor := clGreen;

end;


end.
