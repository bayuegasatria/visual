object loginform: Tloginform
  Left = 240
  Top = 144
  Width = 252
  Height = 232
  Caption = 'LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object user: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object loginbtn: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = loginbtnClick
  end
end
