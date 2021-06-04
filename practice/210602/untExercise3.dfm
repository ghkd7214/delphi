object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'frmCalc'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 360
    Top = 192
    Width = 89
    Height = 33
    Caption = 'lblResult'
    Color = clGray
    ParentColor = False
    Transparent = False
  end
  object edtA: TEdit
    Left = 120
    Top = 96
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 304
    Top = 96
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object btnAdd: TButton
    Left = 144
    Top = 192
    Width = 81
    Height = 33
    Caption = '&btnAdd'
    TabOrder = 2
    OnClick = btnAddClick
  end
end
