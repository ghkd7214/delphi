program prj_M13_EX1;

uses
  Vcl.Forms,
  unt_M13_EX1 in 'unt_M13_EX1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
