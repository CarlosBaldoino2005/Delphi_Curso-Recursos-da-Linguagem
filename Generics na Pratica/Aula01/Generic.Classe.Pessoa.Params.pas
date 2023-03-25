unit Generic.Classe.Pessoa.Params;

interface

uses
  System.SysUtils;

type
  TPessoaParams<T : class> = class
    private
      FTelefone : String;
      FEndereco : String;
      FCEP : String;
      FNumero : Integer;
      FPlanoSaude : String;
      FParent : T;
      FDisplay : TProc<String>;
    public
      constructor Create( aParent : T );
      destructor Destroy; override;
      function &End : T;
      function Telefone ( aValue : String ) : TPessoaParams<T>; overload;
      function Telefone : String; overload;
      function Endereco ( aValue : String ) : TPessoaParams<T>; overload;
      function Endereco : String; overload;
      function CEP ( aValue : String ) : TPessoaParams<T>; overload;
      function CEP : String; overload;
      function Numero ( aValue : Integer ) : TPessoaParams<T>; overload;
      function Numero : Integer; overload;
      function PlanoSaude ( aValue : String ) : TPessoaParams<T>; overload;
      function PlanoSaude : String; overload;
      function Display ( aValue : TProc<String> ) : TPessoaParams<T>; overload;
      function Display : TProc<String>; overload;

  end;

implementation

{ TPessoaParams }

function TPessoaParams<T>.CEP(aValue: String): TPessoaParams<T>;
begin
  Result := Self;
  FCEP := aValue;
end;

function TPessoaParams<T>.Endereco(aValue: String): TPessoaParams<T>;
begin
  Result := Self;
  FEndereco := aValue;
end;

function TPessoaParams<T>.Numero(aValue: Integer): TPessoaParams<T>;
begin
  Result := Self;
  FNumero := aValue;
end;

function TPessoaParams<T>.PlanoSaude(aValue: String): TPessoaParams<T>;
begin
  Result := Self;
  FPlanoSaude := aValue;
end;

function TPessoaParams<T>.Telefone(aValue: String): TPessoaParams<T>;
begin
  Result := Self;
  FTelefone := aValue;
end;

function TPessoaParams<T>.&End: T;
begin
  Result := FParent;
end;

function TPessoaParams<T>.CEP: String;
begin
  Result := FCEP;
end;

constructor TPessoaParams<T>.Create(aParent: T);
begin
  FParent := aParent;
end;

destructor TPessoaParams<T>.Destroy;
begin

  inherited;
end;

function TPessoaParams<T>.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TPessoaParams<T>.Display(aValue: TProc<String>): TPessoaParams<T>;
begin
  Result := Self;
  FDisplay := aValue;
end;

function TPessoaParams<T>.Endereco: String;
begin
  Result := FEndereco;
end;

function TPessoaParams<T>.Numero: Integer;
begin
  Result := FNumero;
end;

function TPessoaParams<T>.PlanoSaude: String;
begin
  Result := FPlanoSaude;
end;

function TPessoaParams<T>.Telefone: String;
begin
  Result := FTelefone;
end;

end.
