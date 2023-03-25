unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Consts.Messages;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
  private
    { Private declarations }
    procedure MyMsgs ( var Message : TMessage ); message MYMSG_DIRECT;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.MyMsgs(var Message: TMessage);
var
  vParam : String;
  vValue : String;
begin
  SetLength(vParam, 255);
  SetLength(vValue, 255);
  SetLength(vParam, GlobalGetAtomName(Message.WParam, PChar(vParam), 255));
  SetLength(vValue, GlobalGetAtomName(Message.LParam, PChar(vValue), 255));
  Memo1.Lines.Add(Format('%s - %s', [vParam, vValue]));
end;

end.
