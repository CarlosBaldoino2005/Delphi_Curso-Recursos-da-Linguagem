unit Pessoa;

interface


type
  iPessoa = interface
    function Nome : String;
  end;

  TPessoaFisica = class(TInterfacedObject, iPessoa)
  public
    function Nome : String;
  end;

  TPessoaJuridica = class(TInterfacedObject, iPessoa)
  private
  public
    function Nome : String;
  end;

implementation

{ TPessoaFisica }

function TPessoaFisica.Nome: String;
begin
  Result := 'Pessoa Fisica';
end;

{ TPessoaJuridica }

function TPessoaJuridica.Nome: String;
begin
  Result := 'Pessoa Juridica';
end;

end.
