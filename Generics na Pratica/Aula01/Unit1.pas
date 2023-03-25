unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirResultado( aValue : String );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Generic.Classe.Pessoa, Generic.Classe.Empresa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TPessoa.New
    .Nome('Thulio')
    .Params
      .Telefone('21212121')
      .Endereco('121321321')
      .CEP('1232121')
      .Numero(12)
      .PlanoSaude('Unimed')
      .Display(ExibirResultado)
    .&End
  .Cadastro;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TEmpresa.New
    .RazaoSocial('Thulio Empresa')
    .Params
      .Telefone('123212321')
      .Endereco('1212313')
      .CEP('123213')
      .Numero(12)
      .PlanoSaude('Unimed')
      .Display(ExibirResultado)
    .&End
  .Cadastro;
end;

procedure TForm1.ExibirResultado(aValue: String);
begin
  ShowMessage(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
