unit View.Pessoa;

interface

uses
  System.Generics.Collections;

type
  TEndereco = class
    private
    FRua: String;
    procedure SetRua(const Value: String);
    public
      function Retorno<T> ( aValue : T ) : T;
      property Rua : String read FRua write SetRua;
  end;

  TPlanoSaude = class
    private
    FNumero: Integer;
    procedure SetNumero(const Value: Integer);
    public
      property Numero : Integer read FNumero write SetNumero;
  end;








  TPessoa<T> = class
    private
      FList : TList<T>;
    public
      constructor Create;
      destructor Destroy; override;
      function Add ( aValue : T ) : TPessoa<T>;
      function Tipo (aValue : T) : T;
      function Convert ( aValue : T ) : T;



  end;









implementation

{ TPlanoSaude }

procedure TPlanoSaude.SetNumero(const Value: Integer);
begin
  FNumero := Value;
end;

{ TEndereco }

function TEndereco.Retorno<T>(aValue: T): T;
begin
  Result := aValue;
end;

procedure TEndereco.SetRua(const Value: String);
begin
  FRua := Value;
end;

{ TPessoa<T> }

function TPessoa<T>.Add(aValue: T): TPessoa<T>;
begin
  Result := Self;
  FList.Add(aValue);
end;

function TPessoa<T>.Convert(aValue: T): T;
begin
  Result := aValue;
end;

constructor TPessoa<T>.Create;
begin
  FList := TList<T>.Create;
end;

destructor TPessoa<T>.Destroy;
begin
  FList.Free;
  inherited;
end;

function TPessoa<T>.Tipo(aValue: T): T;
begin
  Result := aValue;
end;

end.
