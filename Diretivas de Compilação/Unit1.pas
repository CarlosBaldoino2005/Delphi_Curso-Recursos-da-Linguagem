unit Unit1;

{$I diretivas.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TuFrmCadastroProdutosNovo = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroProdutosNovo: TuFrmCadastroProdutosNovo;

implementation

{$R *.dfm}

procedure TuFrmCadastroProdutosNovo.FormCreate(Sender: TObject);
begin
  {$IFDEF DEBUG}
    Label1.Visible := True;
    Label1.Caption := 'Sistema em modo debug';
  {$ELSE}
    Label1.Visible := False;
  {$ENDIF}

  {$IFDEF SKIN_BLACK}
    Self.Color := clBlack;
  {$ENDIF}

  {$IFDEF SKIN_RED}
    Self.Color := clRed;
  {$ENDIF}

  {$IFDEF SKIN_BLUE}
    Self.Color := clBlue;
  {$ENDIF}

  {$IFDEF MODODEV}
    {$IFDEF RELEASE}
      //{$MESSAGE Fatal 'Sistema Rodando no Modo Dev não pode ser liberado em Release'}
    {$ENDIF}
    Self.Caption := Self.Caption + ' - ' + Self.Name;
  {$ENDIF}
end;

end.
