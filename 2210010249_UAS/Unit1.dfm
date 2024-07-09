object kustomer: Tkustomer
  Left = 192
  Top = 123
  Width = 928
  Height = 482
  Caption = 'KUSTOMER'
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
    Top = 56
    Width = 171
    Height = 23
    Caption = 'NAMA                    : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 24
    Width = 167
    Height = 23
    Caption = 'NIK                        : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 168
    Height = 23
    Caption = 'TELEPON             : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 120
    Width = 168
    Height = 23
    Caption = 'EMAIL                   : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 152
    Width = 168
    Height = 23
    Caption = 'ALAMAT               : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 624
    Top = 24
    Width = 96
    Height = 23
    Caption = 'cari nama : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 184
    Width = 166
    Height = 23
    Caption = 'MEMBER             : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 216
    Width = 168
    Height = 23
    Caption = 'DISKON                : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object ldiskon: TLabel
    Left = 240
    Top = 216
    Width = 5
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object nama: TEdit
    Left = 240
    Top = 56
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object nik: TEdit
    Left = 240
    Top = 24
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object tlp: TEdit
    Left = 240
    Top = 88
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object email: TEdit
    Left = 240
    Top = 120
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object alamat: TEdit
    Left = 240
    Top = 152
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object insert: TButton
    Left = 520
    Top = 120
    Width = 89
    Height = 33
    Caption = 'INSERT'
    TabOrder = 5
    OnClick = insertClick
  end
  object update: TButton
    Left = 520
    Top = 168
    Width = 89
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 6
    OnClick = updateClick
  end
  object delete: TButton
    Left = 520
    Top = 216
    Width = 89
    Height = 33
    Caption = 'DELETE'
    TabOrder = 7
    OnClick = deleteClick
  end
  object cancel: TButton
    Left = 624
    Top = 216
    Width = 89
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 8
    OnClick = cancelClick
  end
  object new: TButton
    Left = 624
    Top = 168
    Width = 89
    Height = 33
    Caption = 'NEW'
    TabOrder = 9
    OnClick = newClick
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 264
    Width = 713
    Height = 177
    DataSource = datakustomer
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object cari: TEdit
    Left = 760
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 11
    OnChange = cariChange
  end
  object yes: TRadioButton
    Left = 240
    Top = 192
    Width = 113
    Height = 17
    Caption = 'Yes'
    TabOrder = 12
    OnClick = yesClick
  end
  object no: TRadioButton
    Left = 296
    Top = 192
    Width = 113
    Height = 17
    Caption = 'No'
    TabOrder = 13
    OnClick = noClick
  end
  object reportbtn: TButton
    Left = 728
    Top = 224
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 14
    OnClick = reportbtnClick
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
    Left = 528
    Top = 16
  end
  object querykustomer: TZQuery
    Connection = ZConnection1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'Select*from kustomer'
      ''
      '')
    Params = <>
    Left = 560
    Top = 16
  end
  object datakustomer: TDataSource
    DataSet = querykustomer
    Left = 536
    Top = 56
  end
  object kustomerdataset: TfrxDBDataset
    UserName = 'kustomerdataset'
    CloseDataSource = False
    DataSource = datakustomer
    Left = 576
    Top = 56
  end
  object report: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45482.683849664400000000
    ReportOptions.LastChange = 45482.689858831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 56
    Datasets = <
      item
        DataSet = kustomerdataset
        DataSetName = 'kustomerdataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 279.685220000000000000
          Top = 15.118120000000000000
          Width = 170.078850000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA KUSTOMER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 94.488250000000000000
        Width = 793.701300000000000000
        DataSet = kustomerdataset
        DataSetName = 'kustomerdataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."id"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."nik"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 170.078850000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."nama"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 279.685220000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."telp"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 408.189240000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."email"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.283860000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."alamat"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 744.567410000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = kustomerdataset
          DataSetName = 'kustomerdataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[kustomerdataset."member"]')
          ParentFont = False
        end
      end
    end
  end
end
