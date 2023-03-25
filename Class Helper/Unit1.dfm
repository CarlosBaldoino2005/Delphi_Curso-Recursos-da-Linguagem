object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 524
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Edit1: TEdit
    Left = 120
    Top = 144
    Width = 121
    Height = 32
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 110
    Top = 208
    Width = 99
    Height = 65
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 247
    Top = 144
    Width = 121
    Height = 32
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 504
    Top = 144
    Width = 121
    Height = 32
    TabOrder = 3
    Text = 'Edit3'
  end
  object Button2: TButton
    Left = 272
    Top = 228
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 352
    Width = 121
    Height = 65
    Caption = 'Button3'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 392
    Top = 312
    Width = 145
    Height = 32
    ItemIndex = 0
    TabOrder = 6
    Text = 'Fisica'
    Items.Strings = (
      'Fisica'
      'Juridica')
  end
end
