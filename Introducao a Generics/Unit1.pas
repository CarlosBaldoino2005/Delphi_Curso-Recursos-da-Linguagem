unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.Generics.Collections, View.Pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FList : TList<String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FList.Add(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to Pred(FList.Count) do
    Memo1.Lines.Add(FList[I])
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //TPessoa<TEndereco>.Create.Tipo(TEndereco.Create).Rua;
  //TPessoa<TPlanoSaude>.Create.Tipo(TPlanoSaude.Create).Numero;
  //TPessoa<Integer>.Create.Convert(12);
  //TPessoa<TEndereco>.Create.Tipo(TEndereco.Create).Retorno<string>('teste');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FList := TList<String>.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FList.Free;
end;

end.
