object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 156
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 32
    Width = 5
    Height = 13
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Valor A'
  end
  object Label3: TLabel
    Left = 152
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor B'
  end
  object Label4: TLabel
    Left = 288
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object btnSomar: TButton
    Left = 16
    Top = 64
    Width = 73
    Height = 65
    Caption = '+'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object btnMult: TButton
    Left = 96
    Top = 64
    Width = 75
    Height = 65
    Caption = '*'
    TabOrder = 1
    OnClick = btnMultClick
  end
  object btnSubtrair: TButton
    Left = 176
    Top = 64
    Width = 75
    Height = 65
    Caption = '-'
    TabOrder = 2
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 256
    Top = 64
    Width = 75
    Height = 65
    Caption = '/'
    TabOrder = 3
    OnClick = btnDividirClick
  end
  object edtValorA: TEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '34'
  end
  object edtValorB: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '45'
  end
end
