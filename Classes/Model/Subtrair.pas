unit Subtrair;

interface

uses System.Generics.Collections, Modelo.Calculadora.Interfaces;

type
  TSubtrair = class
  private
    FLista: TList<Variant>;
    FTotal: Variant;
  public
    constructor Create;
    function Executar: Variant;
    property ListaValores: TList<Variant> read FLista write FLista;
  end;

implementation

{ TSubtrair }

constructor TSubtrair.Create;
begin
  FLista := TList<Variant>.Create;
end;

function TSubtrair.Executar: Variant;
var
  idx: integer;
begin
  FTotal := 0;
  for idx := 0 to Pred(FLista.Count) do
    FTotal := FTotal - FLista[idx];

  result := FTotal;
end;

end.
