object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object lblMy: TLabel
    Left = 88
    Top = 88
    Width = 81
    Height = 21
    Caption = 'label'
  end
  object editMy: TEdit
    Left = 304
    Top = 88
    Width = 153
    Height = 21
    TabOrder = 0
    Text = 'editMy'
  end
  object Button1: TButton
    Left = 168
    Top = 192
    Width = 129
    Height = 65
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
