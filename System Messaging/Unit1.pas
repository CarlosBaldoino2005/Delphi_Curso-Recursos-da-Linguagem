unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2, Unit3;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Messaging;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  MsgManager : TMessageManager;
  FIdMsg : Integer;
begin
  MsgManager := TMessageManager.DefaultManager;
  FIdMsg :=
    MsgManager.SubscribeToMessage(
      TMessage<String>,
      procedure (const Sender : TObject; const Msg : TMessage)
      begin
        Label1.Caption := (Msg as TMessage<String>).Value;
      end);
end;

end.
