object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 566
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 24
  object Button1: TButton
    Left = 72
    Top = 208
    Width = 91
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 170
    Width = 185
    Height = 32
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 536
    Top = 504
    Width = 281
    Height = 41
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 536
    Top = 24
    Width = 281
    Height = 474
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button3: TButton
    Left = 72
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
    OnClick = Button3Click
  end
end
