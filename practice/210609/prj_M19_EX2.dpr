program prj_M19_EX2;

uses
  Vcl.Forms,
  unt_M19_EX2 in 'unt_M19_EX2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
