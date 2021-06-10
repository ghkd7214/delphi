object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 435
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 256
    Width = 44
    Height = 13
    Caption = #49884#54744#54943#49688
  end
  object Label2: TLabel
    Left = 208
    Top = 312
    Width = 58
    Height = 13
    Caption = #49444#51221' '#44032#51473#52824
  end
  object StringGrid1: TStringGrid
    Left = 48
    Top = 32
    Width = 609
    Height = 185
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object edit_cnt: TEdit
    Left = 56
    Top = 253
    Width = 81
    Height = 21
    TabOrder = 1
    Text = 'edit_cnt'
  end
  object edit_value: TEdit
    Left = 56
    Top = 312
    Width = 81
    Height = 24
    TabOrder = 2
    Text = 'edit_value'
  end
  object Button1: TButton
    Left = 400
    Top = 256
    Width = 113
    Height = 24
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 312
    Width = 113
    Height = 24
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
end
