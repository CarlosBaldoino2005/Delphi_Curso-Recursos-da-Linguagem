program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  View.Calculadora in 'View.Calculadora.pas',
  View.Calculadora.Somas in 'View.Calculadora.Somas.pas',
  View.Calculadora.Interfaces in 'View.Calculadora.Interfaces.pas',
  View.Calculadora.Multiplicar in 'View.Calculadora.Multiplicar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
