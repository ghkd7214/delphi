program proExercise3;

uses
  Vcl.Forms,
  untExercise3 in 'untExercise3.pas' {frmCalc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalc, frmCalc);
  Application.Run;
end.
