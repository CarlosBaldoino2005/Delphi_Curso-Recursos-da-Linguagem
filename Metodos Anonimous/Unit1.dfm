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
  object Edit1: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 240
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object ProgressBar1: TProgressBar
    Left = 56
    Top = 200
    Width = 305
    Height = 17
    TabOrder = 2
  end
  object Button1: TButton
    Left = 158
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 442
    Top = 8
    Width = 185
    Height = 283
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 286
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
end
