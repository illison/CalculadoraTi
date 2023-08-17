unit Somar;

interface

uses System.Generics.Collections, Modelo.Calculadora.Interfaces;

type
  TSomar = class
  private
    FLista: TList<Variant>;
    FTotal: Variant;
  public
    constructor Create;
    function Executar: Variant;
    property ListaValores: TList<Variant> read FLista write FLista;
  end;

implementation

{ TSomar }

constructor TSomar.Create;
begin
  FLista := TList<Variant>.Create;
end;

function TSomar.Executar: Variant;
var
  idx: integer;
begin
  FTotal := 0;
  for idx := 0 to Pred(FLista.Count) do
    FTotal := FTotal + FLista[idx];

  result := FTotal;
end;

end.
