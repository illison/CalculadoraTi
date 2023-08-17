unit Calculadora;

interface

uses Somar, Multiplicar, Modelo.Calculadora.Interfaces, System.Generics.Collections,
  Dividir, Subtrair;

type
  TCalculadora = class
  private
    FLista: TList<Variant>;
    FTotal: Variant;
    FSomar: TSomar;
    FDiv: TDividir;
    FSub: TSubtrair;
    FMult: TMultiplicar;
    //
  public
    constructor Create;
    destructor Destroy; override;
    //
    procedure Limpar;
    procedure Adicionar(Value: Variant);
    function Total: Variant;
    procedure Somar;
    procedure Multiplicar;
    procedure Dividir;
    procedure Subtrair;
  end;

implementation

{ TCalculadora }

procedure TCalculadora.Adicionar(Value: Variant);
begin
  FLista.Add(Value);
end;

constructor TCalculadora.Create;
begin
  FSomar := TSomar.Create;
  FMult := TMultiplicar.Create;
  FDiv := TDividir.Create;
  FSub := TSubtrair.Create;
  FLista := TList<Variant>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FSomar.DisposeOf;
  FMult.DisposeOf;
  FSub.DisposeOf;
  FDiv.DisposeOf;
end;

procedure TCalculadora.Dividir;
begin
  FDiv.ListaValores := FLista;
  FTotal := FDiv.Executar;
end;

procedure TCalculadora.Limpar;
begin
  FLista.Clear;
end;

procedure TCalculadora.Multiplicar;
begin
  FMult.ListaValores := FLista;
  FTotal := FMult.Executar;
end;

procedure TCalculadora.Somar;
begin
  FSomar.ListaValores := FLista;
  FTotal := FSomar.Executar;

end;

procedure TCalculadora.Subtrair;
begin
  FSub.ListaValores := FLista;
  FTotal := FSub.Executar;

end;

function TCalculadora.Total: Variant;
begin
  result := FTotal;
end;

end.
