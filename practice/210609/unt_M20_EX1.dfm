object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 96
    Top = 56
    Width = 385
    Height = 193
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 88
    Top = 286
    Width = 73
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 88
    Top = 344
    Width = 73
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 536
    Top = 56
    Width = 89
    Height = 193
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 360
    Top = 276
    Width = 121
    Height = 41
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 334
    Width = 121
    Height = 41
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
end
