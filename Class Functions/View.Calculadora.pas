unit View.Calculadora;

interface

uses
  View.Calculadora.Somas, View.Calculadora.Interfaces;

type
  TCalculadora = class
    private
    public
      class function Somar : iCalculadoraOperacoes;
      class function Multiplicar : iCalculadoraOperacoes;
  end;

implementation

uses
  View.Calculadora.Multiplicar;

{ TCalculador }

class function TCalculadora.Multiplicar: iCalculadoraOperacoes;
begin
  Result := TCalculadoraMultiplicar.New;
end;

class function TCalculadora.Somar : iCalculadoraOperacoes;
begin
  Result := TCalculadoraSomas.New;
end;

end.
