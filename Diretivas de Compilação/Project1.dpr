program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {uFrmCadastroProdutosNovo};

{$R *.res}

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFrmCadastroProdutosNovo, uFrmCadastroProdutosNovo);
  Application.Run;
end.
