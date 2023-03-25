unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

  //http://docwiki.embarcadero.com/RADStudio/Sydney/en/Operator_Overloading_(Delphi)

  TNotaItem = record
    Total : Currency;
  end;


  TNota = record
    FTotal : Currency;

    class operator Add(aValueA : TNota; aValueB : TNota ) : TNota;
    class operator Implicit ( aValue : Integer ) : TNota;
    class operator Implicit ( aValue : TNotaItem ) : TNota;
  end;


  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  rNotaA, rNotaB, rNotaC : TNota;
  aNotaItem : TNotaItem;
begin
  rNotaA := 10;
  rNotaB := 30;

  rNotaC := rNotaA + rNotaB;

  aNotaItem.Total := 100;

  rNotaC := aNotaItem;

  ShowMessage(CurrToStr(rNotaC.FTotal));

end;

{ TNota }

class operator TNota.Add(aValueA, aValueB: TNota): TNota;
begin
  Result.FTotal := aValueA.FTotal + aValueB.FTotal;
end;

class operator TNota.Implicit(aValue: Integer): TNota;
begin
  Result.FTotal := aValue;
end;

class operator TNota.Implicit(aValue: TNotaItem): TNota;
begin
  Result.FTotal := Result.FTotal + aValue.Total;
end;

end.
