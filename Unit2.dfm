object Article: TArticle
  Left = 0
  Top = 0
  Caption = 'Article'
  ClientHeight = 541
  ClientWidth = 763
  Color = 44784
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
    Left = 8
    Top = 8
    Width = 289
    Height = 513
    Color = 900351
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 30
      Top = 372
      Width = 235
      Height = 120
      Caption = 'Controle'
      Color = 44784
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Button2: TButton
        Left = 27
        Top = 70
        Width = 81
        Height = 25
        Caption = 'Modify'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 120
        Top = 33
        Width = 80
        Height = 25
        Caption = 'Enregistrer'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 120
        Top = 70
        Width = 80
        Height = 25
        Caption = 'Supprimer'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button5: TButton
        Left = 27
        Top = 33
        Width = 81
        Height = 25
        Caption = 'Ajouter'
        TabOrder = 3
        OnClick = Button5Click
      end
    end
    object Button4: TButton
      Left = 5
      Top = 4
      Width = 19
      Height = 19
      Caption = '<'
      TabOrder = 1
      OnClick = Button4Click
    end
    object GroupBox3: TGroupBox
      Left = 30
      Top = 23
      Width = 235
      Height = 330
      Caption = 'Inputs'
      Color = 44784
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 37
        Width = 65
        Height = 13
        Caption = 'ID_VEHICULE'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 77
        Width = 53
        Height = 13
        Caption = 'FAMILLE_V'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 117
        Width = 46
        Height = 13
        Caption = 'MODEL_V'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 24
        Top = 157
        Width = 70
        Height = 13
        Caption = 'CATEGORIE_V'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 24
        Top = 197
        Width = 59
        Height = 13
        Caption = 'COULEUR_V'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 24
        Top = 237
        Width = 19
        Height = 13
        Caption = 'P_U'
        FocusControl = DBEdit7
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 53
        Width = 180
        Height = 21
        DataField = 'ID_VEHICULE'
        DataSource = UniDataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 93
        Width = 180
        Height = 21
        DataField = 'FAMILLE_V'
        DataSource = UniDataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 133
        Width = 180
        Height = 21
        DataField = 'MODEL_V'
        DataSource = UniDataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 173
        Width = 180
        Height = 21
        DataField = 'CATEGORIE_V'
        DataSource = UniDataSource1
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 213
        Width = 180
        Height = 21
        DataField = 'COULEUR_V'
        DataSource = UniDataSource1
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 253
        Width = 180
        Height = 21
        DataField = 'P_U'
        DataSource = UniDataSource1
        TabOrder = 5
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 8
    Width = 424
    Height = 364
    Color = 900351
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 12
      Top = 13
      Width = 403
      Height = 338
      DataSource = UniDataSource1
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
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAMILLE_V'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODEL_V'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATEGORIE_V'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COULEUR_V'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_U'
          Width = 77
          Visible = True
        end>
    end
  end
  object GroupBox5: TGroupBox
    Left = 320
    Top = 398
    Width = 423
    Height = 78
    Caption = 'DB-Controle'
    Color = 44784
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 19
      Top = 29
      Width = 310
      Height = 26
      DataSource = UniDataSource1
      TabOrder = 0
    end
    object Button6: TButton
      Left = 345
      Top = 29
      Width = 62
      Height = 25
      Caption = 'Actualiser'
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True')
    Username = 'yac_02'
    Server = 'localhost:1521:sn=XE'
    Connected = True
    Left = 447
    Top = 490
    EncryptedPassword = '9EFF9BFF92FF96FF91FFCFFFCFFFCEFF'
  end
  object UniTable1: TUniTable
    TableName = 'VEHICULE'
    Connection = UniConnection1
    Active = True
    Left = 514
    Top = 490
    object UniTable1ID_VEHICULE: TFloatField
      FieldName = 'ID_VEHICULE'
      Required = True
    end
    object UniTable1FAMILLE_V: TStringField
      FieldName = 'FAMILLE_V'
      Size = 30
    end
    object UniTable1MODEL_V: TStringField
      FieldName = 'MODEL_V'
      Size = 30
    end
    object UniTable1CATEGORIE_V: TStringField
      FieldName = 'CATEGORIE_V'
      Size = 30
    end
    object UniTable1COULEUR_V: TStringField
      FieldName = 'COULEUR_V'
    end
    object UniTable1P_U: TFloatField
      FieldName = 'P_U'
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 580
    Top = 490
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 355
    Top = 487
  end
end
