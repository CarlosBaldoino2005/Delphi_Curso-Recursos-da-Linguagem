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
  System.Generics.Collections;

type
  TPessoa = class
    private
    public
  end;


  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FList : TObjectList<TPessoa>;

    FDicList : TObjectDictionary<Integer, TPessoa>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to 100 do
    FList.Add(TPessoa.Create);

  ShowMessage(FList.Count.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to 100 do
    FDicList.Add(I, TPessoa.Create);

  ShowMessage(FDicList.Count.ToString);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  vPessoa : TPessoa;
begin
  FDicList.TryGetValue(4, vPessoa);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  FList := TObjectList<TPessoa>.Create;
  FDicList := TObjectDictionary<Integer, TPessoa>.Create([doOwnsValues]);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FList.Free;
  FDicList.DisposeOf;
end;

end.
