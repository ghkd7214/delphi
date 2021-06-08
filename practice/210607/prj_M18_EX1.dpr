program prj_M18_EX1;

uses
  Vcl.Forms,
  unt_M18_EX1_1 in 'unt_M18_EX1_1.pas' {Form1},
  unt_M18_EX1 in 'unt_M18_EX1.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
