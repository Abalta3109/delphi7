object Form1: TForm1
  Left = 523
  Top = 354
  Width = 1044
  Height = 540
  Caption = 'AL'#304
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 456
    Top = 16
    Width = 553
    Height = 192
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ADI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KULUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OYNANAN_BAHIS'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 64
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 64
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 64
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 240
    Top = 72
    Width = 105
    Height = 25
    Caption = #304'S'#304'MLER'#304' KAYDET'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 304
    Width = 289
    Height = 169
    Caption = 'EKLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 880
    Top = 232
    Width = 115
    Height = 25
    Caption = 'SE'#199#304'LEN'#304' S'#304'L'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit5: TEdit
    Left = 472
    Top = 224
    Width = 73
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 904
    Top = 176
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\futbol.accdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TABLO1')
    Left = 936
    Top = 176
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'iddaa.rav'
    Left = 280
    Top = 320
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 232
    Top = 320
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 176
    Top = 320
  end
end
