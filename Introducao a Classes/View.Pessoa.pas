unit View.Pessoa;

interface

type
  TPessoa = class
  private
    FNome : String;
    FSobrenome : String;
    FUltimoNome: String;
    procedure SetUltimoNome(const Value: String);
    function GetUltimoNome: String;
  public

    function Nome ( aValue : String ) : TPessoa; overload;
    function Nome : String; overload;
    function SobreNome ( aValue : String ) : TPessoa; overload;
    function SobreNome : String; overload;

    property UltimoNome : String read GetUltimoNome write SetUltimoNome;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.Nome(aValue: String): TPessoa;
begin
  Result := Self;

  if Trim(aValue) = '' then
    raise Exception.Create('Nome não pode ser vazio');

  FNome := aValue;
end;

function TPessoa.GetUltimoNome: String;
begin
  Result := FUltimoNome;
end;

function TPessoa.Nome: String;
begin
  Result := FNome;
end;

function TPessoa.SobreNome(aValue: String): TPessoa;
begin
  Result := Self;
  FSobrenome := aValue;
end;

procedure TPessoa.SetUltimoNome(const Value: String);
begin
  FUltimoNome := Value;
end;

function TPessoa.SobreNome: String;
begin
  Result := FSobrenome;
end;

end.
