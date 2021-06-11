object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 567
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 632
    Top = 152
    Width = 9
    Height = 13
    Caption = '   '
  end
  object Label2: TLabel
    Left = 632
    Top = 216
    Width = 6
    Height = 13
    Caption = '  '
  end
  object Label3: TLabel
    Left = 632
    Top = 272
    Width = 6
    Height = 13
    Caption = '  '
  end
  object Label4: TLabel
    Left = 632
    Top = 336
    Width = 6
    Height = 13
    Caption = '  '
  end
  object Label5: TLabel
    Left = 632
    Top = 400
    Width = 6
    Height = 13
    Caption = '  '
  end
  object Label6: TLabel
    Left = 584
    Top = 152
    Width = 22
    Height = 13
    Caption = #51228#47785
  end
  object Label7: TLabel
    Left = 584
    Top = 216
    Width = 22
    Height = 13
    Caption = #51200#51088
  end
  object Label8: TLabel
    Left = 584
    Top = 272
    Width = 33
    Height = 13
    Caption = #52636#54032#49324
  end
  object Label9: TLabel
    Left = 584
    Top = 336
    Width = 22
    Height = 13
    Caption = #44032#44201
  end
  object Label10: TLabel
    Left = 584
    Top = 400
    Width = 33
    Height = 13
    Caption = #51116#44256#47049
  end
  object Edit1: TEdit
    Left = 8
    Top = 71
    Width = 209
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = #52293' '#51228#47785#51012' '#51077#47141#54616#49464#50836'.'
  end
  object Button1: TButton
    Left = 328
    Top = 71
    Width = 81
    Height = 24
    Caption = #44160#49353
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 152
    Width = 561
    Height = 265
    FixedCols = 0
    TabOrder = 2
    OnClick = StringGrid1Click
    ColWidths = (
      204
      87
      87
      91
      66)
  end
  object Button3: TButton
    Left = 488
    Top = 71
    Width = 81
    Height = 24
    Caption = #51204#52404#51312#54924
    TabOrder = 3
    OnClick = Button3Click
  end
end
