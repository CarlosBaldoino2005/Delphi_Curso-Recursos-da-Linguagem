unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  System.Messaging;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
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
        Memo1.Lines.Add((Msg as TMessage<String>).Value);
      end);
end;

end.
