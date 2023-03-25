unit Generic.Classe.Interfaces;

interface

uses
  Generic.Classe.Pessoa.Params;

type

  iPessoa<T : class> = interface
    ['{4C205206-2B4B-4655-B062-87090072E88E}']
    function Nome ( aValue : String ) : iPessoa<T>;
    function Params : TPessoaParams<T>;
    function Cadastro : String;
  end;

  iEmpresa<T : class> = interface
    ['{7F1C5786-410D-4EB8-893C-B938B99C7340}']
    function RazaoSocial ( aValue : String ) : iEmpresa<T>;
    function Params : TPessoaParams<T>;
    function Cadastro : String;
  end;

implementation

end.
