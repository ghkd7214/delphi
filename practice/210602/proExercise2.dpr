program proExercise2;

uses
  Vcl.Forms,
  untExercise2 in 'untExercise2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
