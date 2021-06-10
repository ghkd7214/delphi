object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 466
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sgdMy: TStringGrid
    Left = 24
    Top = 24
    Width = 441
    Height = 177
    DrawingStyle = gdsClassic
    FixedCols = 0
    TabOrder = 0
  end
  object edtLine: TEdit
    Left = 576
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 1
    Text = 'edtLine'
  end
  object edtStolb: TEdit
    Left = 576
    Top = 88
    Width = 81
    Height = 21
    TabOrder = 2
    Text = 'edtStolb'
  end
  object edtFline: TEdit
    Left = 576
    Top = 136
    Width = 81
    Height = 21
    TabOrder = 3
    Text = 'edtFline'
  end
  object edtFstolb: TEdit
    Left = 576
    Top = 184
    Width = 81
    Height = 21
    TabOrder = 4
    Text = 'edtFstolb'
  end
  object btntab1: TButton
    Left = 104
    Top = 296
    Width = 113
    Height = 41
    Caption = 'btntab1'
    TabOrder = 5
    OnClick = btntab1Click
  end
  object btnCellRed: TButton
    Left = 264
    Top = 296
    Width = 121
    Height = 41
    Caption = 'btnCellRed'
    TabOrder = 6
    OnClick = btnCellRedClick
  end
  object btnFCGreen: TButton
    Left = 448
    Top = 296
    Width = 113
    Height = 41
    Caption = 'btnFCGreen'
    TabOrder = 7
    OnClick = btnFCGreenClick
  end
end
