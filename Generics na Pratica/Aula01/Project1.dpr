program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Generic.Classe.Pessoa in 'Generic.Classe.Pessoa.pas',
  Generic.Classe.Empresa in 'Generic.Classe.Empresa.pas',
  Generic.Classe.Pessoa.Params in 'Generic.Classe.Pessoa.Params.pas',
  Generic.Classe.Interfaces in 'Generic.Classe.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
