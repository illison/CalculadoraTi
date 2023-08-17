unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Calculadora;

type
  TFPrincipal = class(TForm)
    btnSomar: TButton;
    Label1: TLabel;
    btnMult: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    edtValorA: TEdit;
    edtValorB: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarValores;
    procedure MostrarTotal;
  public
    { Public declarations }
    calc: TCalculadora;
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.btnDividirClick(Sender: TObject);
begin
  CarregarValores;
  calc.Dividir;
  MostrarTotal;
end;

procedure TFPrincipal.btnMultClick(Sender: TObject);
begin
  CarregarValores;
  calc.Multiplicar;
  MostrarTotal;
end;

procedure TFPrincipal.btnSomarClick(Sender: TObject);
begin
  CarregarValores;
  calc.Somar;
  MostrarTotal;
end;

procedure TFPrincipal.btnSubtrairClick(Sender: TObject);
begin
  CarregarValores;
  calc.Subtrair;
  MostrarTotal;
end;

procedure TFPrincipal.CarregarValores;
begin
  calc.Limpar;
  calc.Adicionar(edtValorA.Text);
  calc.Adicionar(edtValorB.Text);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  if calc = nil then
    calc := TCalculadora.Create;
end;

procedure TFPrincipal.MostrarTotal;
begin
  Label1.Caption := FormatFloat('#,####0.0000',  calc.Total);
end;

end.
