unit Multiplicar;

interface

uses System.Generics.Collections, Modelo.Calculadora.Interfaces;

type
  TMultiplicar = class
  private
    FLista: TList<Variant>;
    FTotal: Variant;
  public
    constructor Create;
    function Executar: Variant;
    property ListaValores: TList<Variant> read FLista write FLista;
  end;

implementation

{ TMultiplicar }

constructor TMultiplicar.Create;
begin
  FLista := TList<Variant>.Create;
end;

function TMultiplicar.Executar: Variant;
var
  idx: integer;
begin
  FTotal := 1;
  for idx := 0 to Pred(FLista.Count) do
    FTotal := FTotal * FLista[idx];

  result := FTotal;
end;

end.
