object Client_fourniseur: TClient_fourniseur
  Left = 0
  Top = 0
  Caption = 'Client_fourniseur'
  ClientHeight = 554
  ClientWidth = 852
  Color = 6579200
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
    Left = 18
    Top = 18
    Width = 826
    Height = 223
    Color = 6579200
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 44
      Top = 16
      Width = 33
      Height = 13
      Caption = 'NOM : '
      FocusControl = DBEdit2_c
    end
    object Label3: TLabel
      Left = 44
      Top = 65
      Width = 49
      Height = 13
      Caption = 'PRENOM :'
      FocusControl = DBEdit3_c
    end
    object Label4: TLabel
      Left = 243
      Top = 16
      Width = 46
      Height = 13
      Caption = 'ADRESS :'
      FocusControl = DBEdit4_c
    end
    object Label5: TLabel
      Left = 433
      Top = 16
      Width = 30
      Height = 13
      Caption = 'TELE :'
    end
    object Label7: TLabel
      Left = 644
      Top = 16
      Width = 37
      Height = 13
      Caption = 'EMAIL :'
      FocusControl = DBEdit7_c
    end
    object Label1: TLabel
      Left = 440
      Top = 32
      Width = 36
      Height = 13
      Caption = 'TELE_C'
      FocusControl = DBEdit5_c
    end
    object GroupBox4: TGroupBox
      Left = 44
      Top = 141
      Width = 234
      Height = 57
      Caption = 'Choix '
      TabOrder = 0
      object RadioButton2: TRadioButton
        Left = 118
        Top = 18
        Width = 79
        Height = 33
        Caption = 'Fourniseur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RadioButton2Click
      end
      object RadioButton1: TRadioButton
        Left = 31
        Top = 15
        Width = 55
        Height = 38
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton1Click
      end
    end
    object GroupBox5: TGroupBox
      Left = 376
      Top = 128
      Width = 436
      Height = 70
      Caption = 'Controle '
      TabOrder = 1
      object Button3: TButton
        Left = 265
        Top = 26
        Width = 75
        Height = 25
        Caption = 'supprimer'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 182
        Top = 26
        Width = 75
        Height = 25
        Caption = 'Modify'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 18
        Top = 26
        Width = 75
        Height = 25
        Caption = 'Ajouter'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button5: TButton
        Left = 99
        Top = 26
        Width = 75
        Height = 25
        Caption = 'Enregistrer'
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 346
        Top = 26
        Width = 75
        Height = 25
        Caption = 'Actualiser'
        TabOrder = 4
        OnClick = Button6Click
      end
    end
    object DBEdit2_c: TDBEdit
      Left = 44
      Top = 32
      Width = 150
      Height = 21
      DataField = 'NOM_C'
      DataSource = UniDataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit3_c: TDBEdit
      Left = 44
      Top = 81
      Width = 150
      Height = 21
      DataField = 'PRENOM_C'
      DataSource = UniDataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit4_c: TDBEdit
      Left = 243
      Top = 32
      Width = 150
      Height = 21
      DataField = 'ADRESS_C'
      DataSource = UniDataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit7_c: TDBEdit
      Left = 630
      Top = 32
      Width = 150
      Height = 21
      DataField = 'EMAIL_C'
      DataSource = UniDataSource1
      Enabled = False
      TabOrder = 5
    end
    object DBEdit1_f: TDBEdit
      Left = 44
      Top = 32
      Width = 150
      Height = 21
      DataField = 'NOM_F'
      DataSource = UniDataSource2
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object DBEdit8_f: TDBEdit
      Left = 44
      Top = 81
      Width = 150
      Height = 21
      DataField = 'PRENOM_F'
      DataSource = UniDataSource2
      Enabled = False
      TabOrder = 7
      Visible = False
    end
    object DBEdit9_f: TDBEdit
      Left = 243
      Top = 32
      Width = 150
      Height = 21
      DataField = 'ADRESS_F'
      DataSource = UniDataSource2
      Enabled = False
      TabOrder = 8
      Visible = False
    end
    object DBEdit11_f: TDBEdit
      Left = 630
      Top = 32
      Width = 150
      Height = 21
      DataField = 'EMAIL_F'
      DataSource = UniDataSource2
      Enabled = False
      TabOrder = 9
      Visible = False
    end
    object DBEdit5_c: TDBEdit
      Left = 433
      Top = 32
      Width = 150
      Height = 21
      DataField = 'TELE_C'
      DataSource = UniDataSource1
      TabOrder = 10
    end
    object DBEdit10_f: TDBEdit
      Left = 433
      Top = 32
      Width = 150
      Height = 21
      DataField = 'TELE_F'
      DataSource = UniDataSource2
      TabOrder = 11
    end
  end
  object GroupBox2: TGroupBox
    Left = 18
    Top = 251
    Width = 415
    Height = 265
    Caption = 'Liste des clients '
    Color = 6579200
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 381
      Height = 225
      DataSource = UniDataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_CLIENT'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_C'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRENOM_C'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRESS_C'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELE_C'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL_C'
          Width = 65
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 452
    Top = 251
    Width = 392
    Height = 265
    Caption = 'Liste des fourniseur '
    Color = 6579200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 16
      Top = 24
      Width = 361
      Height = 225
      DataSource = UniDataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_FOURNISSEUR'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_F'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRENOM_F'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRESS_F'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELE_F'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL_F'
          Width = 65
          Visible = True
        end>
    end
  end
  object Button4: TButton
    Left = 18
    Top = 522
    Width = 39
    Height = 15
    Caption = '<--'
    TabOrder = 3
    OnClick = Button4Click
  end
  object UniTable1: TUniTable
    TableName = 'CLIENTS'
    Connection = Article.UniConnection1
    Active = True
    Left = 80
    Top = 528
    object UniTable1ID_CLIENT: TFloatField
      FieldName = 'ID_CLIENT'
      Required = True
    end
    object UniTable1NOM_C: TStringField
      FieldName = 'NOM_C'
      Required = True
      Size = 30
    end
    object UniTable1PRENOM_C: TStringField
      FieldName = 'PRENOM_C'
      Required = True
      Size = 30
    end
    object UniTable1ADRESS_C: TStringField
      FieldName = 'ADRESS_C'
      Size = 50
    end
    object UniTable1EMAIL_C: TStringField
      FieldName = 'EMAIL_C'
    end
    object UniTable1TELE_C: TStringField
      FieldName = 'TELE_C'
    end
  end
  object UniTable2: TUniTable
    TableName = 'FOURNISSEUR'
    Connection = Article.UniConnection1
    Active = True
    Left = 144
    Top = 528
    object UniTable2ID_FOURNISSEUR: TFloatField
      FieldName = 'ID_FOURNISSEUR'
      Required = True
    end
    object UniTable2NOM_F: TStringField
      FieldName = 'NOM_F'
      Required = True
      Size = 30
    end
    object UniTable2PRENOM_F: TStringField
      FieldName = 'PRENOM_F'
      Required = True
      Size = 30
    end
    object UniTable2ADRESS_F: TStringField
      FieldName = 'ADRESS_F'
      Size = 50
    end
    object UniTable2TELE_F: TStringField
      FieldName = 'TELE_F'
    end
    object UniTable2EMAIL_F: TStringField
      FieldName = 'EMAIL_F'
      Size = 30
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 224
    Top = 528
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniTable2
    Left = 304
    Top = 528
  end
end
