program NDEF;





uses
  System.StartUpCopy,
  FMX.Forms,
  uFRNDEF in 'uFRNDEF.pas' {Form1},
  uFCoder in 'uFCoder.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
