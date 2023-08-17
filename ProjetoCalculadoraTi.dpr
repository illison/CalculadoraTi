program ProjetoCalculadoraTi;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {FPrincipal},
  Somar in 'Classes\Model\Somar.pas',
  Modelo.Calculadora.Interfaces in 'Classes\Interfaces\Modelo.Calculadora.Interfaces.pas',
  Multiplicar in 'Classes\Model\Multiplicar.pas',
  Calculadora in 'Classes\Calculadora.pas',
  Dividir in 'Classes\Model\Dividir.pas',
  Subtrair in 'Classes\Model\Subtrair.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
