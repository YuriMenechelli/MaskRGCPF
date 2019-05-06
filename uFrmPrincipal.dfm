object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 185
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbTeste: TGroupBox
    Left = 8
    Top = 8
    Width = 417
    Height = 169
    Caption = 'Teste:'
    TabOrder = 0
    object lblGeral: TLabel
      Left = 176
      Top = 43
      Width = 35
      Height = 13
      Caption = 'lblGeral'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 56
      Width = 113
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'CPF'
      OnSelect = ComboBox1Select
      Items.Strings = (
        'CPF'
        'RG'
        'CNPJ'
        'Telefone'
        'Celular')
    end
    object edtGeral: TEdit
      Left = 176
      Top = 56
      Width = 177
      Height = 21
      TabOrder = 1
      OnChange = edtGeralChange
    end
  end
end
