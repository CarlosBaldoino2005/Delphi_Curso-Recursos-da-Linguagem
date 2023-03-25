unit View.Calculadora.Interfaces;

interface

uses
  System.SysUtils;

type

  iCalculadoraOperacoes = interface
    ['{8B99AB20-6CE2-44B7-A141-6506214B8633}']
    function Calcular ( A, B : Double ) : Double;
    function Display ( aValue : TProc<String> ) : iCalculadoraOperacoes;
  end;

implementation

end.
