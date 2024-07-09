object satuan: Tsatuan
  Left = 359
  Top = 118
  Width = 928
  Height = 480
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 166
    Height = 23
    Caption = 'NAMA                   : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 164
    Height = 23
    Caption = 'DESKRIPSI          : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 408
    Width = 169
    Height = 23
    Caption = 'CARI                      : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object nama: TEdit
    Left = 240
    Top = 40
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object desk: TEdit
    Left = 240
    Top = 88
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 208
    Width = 713
    Height = 177
    DataSource = datasatuan
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object insert: TButton
    Left = 240
    Top = 136
    Width = 89
    Height = 41
    Caption = 'INSERT'
    TabOrder = 3
    OnClick = insertClick
  end
  object update: TButton
    Left = 344
    Top = 136
    Width = 89
    Height = 41
    Caption = 'UPDATE'
    TabOrder = 4
    OnClick = updateClick
  end
  object delete: TButton
    Left = 448
    Top = 136
    Width = 89
    Height = 41
    Caption = 'DELETE'
    TabOrder = 5
    OnClick = deleteClick
  end
  object cancel: TButton
    Left = 552
    Top = 160
    Width = 89
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 6
    OnClick = cancelClick
  end
  object new: TButton
    Left = 552
    Top = 112
    Width = 89
    Height = 33
    Caption = 'NEW'
    TabOrder = 7
    OnClick = newClick
  end
  object cari: TEdit
    Left = 248
    Top = 408
    Width = 281
    Height = 21
    TabOrder = 8
    OnChange = cariChange
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
    Left = 728
    Top = 16
  end
  object querysatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select*from satuan'
      'i')
    Params = <>
    Left = 768
    Top = 16
  end
  object datasatuan: TDataSource
    DataSet = querysatuan
    Left = 808
    Top = 16
  end
end
