object kategoriform: Tkategoriform
  Left = 217
  Top = 168
  Width = 973
  Height = 471
  Caption = 'KATEGORI'
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
    Left = 88
    Top = 40
    Width = 121
    Height = 23
    Caption = 'NAMA          : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 360
    Width = 218
    Height = 23
    Caption = 'MASUKAN NAMA        : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object nmkategori: TEdit
    Left = 232
    Top = 40
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object insert: TButton
    Left = 232
    Top = 72
    Width = 83
    Height = 41
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = insertClick
  end
  object update: TButton
    Left = 328
    Top = 72
    Width = 75
    Height = 41
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = updateClick
  end
  object delete: TButton
    Left = 416
    Top = 72
    Width = 75
    Height = 41
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = deleteClick
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 144
    Width = 585
    Height = 201
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object innama: TEdit
    Left = 328
    Top = 360
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object cari: TButton
    Left = 512
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
  object home: TButton
    Left = 600
    Top = 360
    Width = 75
    Height = 25
    Caption = 'HOME'
    TabOrder = 7
    OnClick = homeClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
    Left = 608
    Top = 24
  end
  object query: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select*from kategori')
    Params = <>
    Left = 680
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 744
    Top = 24
  end
end
