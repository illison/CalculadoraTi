unit Modelo.Calculadora.Interfaces;

interface

type
  iModeloCalculadora = interface
    ['{75F1EBCD-9EB9-48E0-9EA5-18A299569843}']
    procedure Executar;
    procedure Limpar;
    procedure Adicionar(value : Variant);
    function Total : Variant;
  end;

implementation

end.
