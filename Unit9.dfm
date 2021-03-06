object Journal_ventes: TJournal_ventes
  Left = 0
  Top = 0
  Caption = 'Journal_ventes'
  ClientHeight = 536
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 230
    Top = 8
    Width = 441
    Height = 247
    Caption = 'Les Bons'
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 16
      Top = 19
      Width = 409
      Height = 213
      DataSource = DataSrc_tab_ventes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ID_VENTE'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ID_CLIENT'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'DATE_V'
          Width = 120
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 230
    Top = 261
    Width = 439
    Height = 265
    Caption = 'Les Articles'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 14
      Top = 20
      Width = 409
      Height = 225
      DataSource = DataSrc_tab_ventes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_VEHICULE'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTE_V'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIX_V'
          Width = 120
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 216
    Height = 517
    Caption = 'Panel1'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 13
      Top = 23
      Width = 190
      Height = 78
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 161
        Height = 22
        Caption = 'Journal de ventes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Maiandra GD'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 13
      Top = 120
      Width = 190
      Height = 225
      Caption = 'Clients'
      TabOrder = 1
      object Button3: TButton
        Left = 42
        Top = 102
        Width = 95
        Height = 25
        Caption = 'Filtrer'
        TabOrder = 0
        OnClick = Button3Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 56
        Width = 161
        Height = 21
        KeyField = 'NOM_C'
        ListField = 'NOM_C'
        ListSource = DataSrc_table_clients
        TabOrder = 1
      end
    end
    object Button2: TButton
      Left = 13
      Top = 484
      Width = 44
      Height = 17
      Caption = '<--'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DataSrc_table_clients: TDataSource
    DataSet = Client_fourniseur.UniTable1
    Left = 140
    Top = 398
  end
  object DataSrc_tab_ventes: TDataSource
    DataSet = Ventes.UniTable1
    Left = 696
    Top = 72
  end
  object UniQuery1: TUniQuery
    Connection = Article.UniConnection1
    SQL.Strings = (
      'select id_client from clients where Nom_c =:prm ;')
    Active = True
    Left = 40
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm'
        Value = Null
      end>
  end
end
