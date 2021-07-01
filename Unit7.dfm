object Journal_achats: TJournal_achats
  Left = 0
  Top = 0
  Caption = 'Journal_achats'
  ClientHeight = 526
  ClientWidth = 683
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
    Left = 226
    Top = 13
    Width = 441
    Height = 249
    Caption = 'Les bons'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 16
      Top = 20
      Width = 409
      Height = 213
      DataSource = DataSource_de_table_achats
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ACHATS'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FOURNISSEUR'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_A'
          Width = 100
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 226
    Top = 268
    Width = 441
    Height = 241
    Caption = 'Les articles'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 409
      Height = 200
      DataSource = DataSource_de_table_achats
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
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTE_A'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIX_A'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 12
    Top = 18
    Width = 203
    Height = 492
    Caption = 'Panel1'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 13
      Top = 24
      Width = 176
      Height = 78
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 145
        Height = 22
        Caption = 'Journal d'#39'achats'
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
      Width = 176
      Height = 223
      Caption = 'Fourniseur'
      TabOrder = 1
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 50
        Width = 145
        Height = 21
        KeyField = 'NOM_F'
        ListField = 'NOM_F'
        ListSource = DataSource_de_table_fourni
        TabOrder = 0
      end
      object Button3: TButton
        Left = 36
        Top = 92
        Width = 96
        Height = 25
        Caption = 'Filtrer'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object Button2: TButton
      Left = 6
      Top = 468
      Width = 42
      Height = 17
      Caption = '<--'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DataSource_de_table_achats: TDataSource
    DataSet = Achats.UniTable3
    Left = 680
    Top = 88
  end
  object DataSource_de_table_fourni: TDataSource
    DataSet = Client_fourniseur.UniTable2
    Left = 680
    Top = 169
  end
  object UniQuery1: TUniQuery
    Connection = Article.UniConnection1
    SQL.Strings = (
      'select id_fournisseur from fournisseur where nom_f =:prm ')
    Active = True
    Left = 44
    Top = 386
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm'
        ParamType = ptInputOutput
        Value = Null
      end>
  end
end
