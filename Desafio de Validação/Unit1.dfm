object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 389
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 48
    Top = 94
    Width = 59
    Height = 24
    Caption = 'Label1'
    Visible = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 32
    TabOrder = 0
    OnChange = Edit1Change
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 175
    Top = 56
    Width = 121
    Height = 32
    TabOrder = 1
  end
end
