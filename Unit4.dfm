﻿object Achats: TAchats
  Left = 0
  Top = 0
  Caption = 'Achats'
  ClientHeight = 528
  ClientWidth = 751
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 393
    Top = 180
    Width = 49
    Height = 25
    Caption = 'Retour'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 281
    Top = 175
    Width = 82
    Height = 35
    Caption = 'Ajouter article'
    TabOrder = 1
  end
  object Button4: TButton
    Left = 448
    Top = 180
    Width = 51
    Height = 25
    Caption = 'Button4'
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 256
    Width = 705
    Height = 264
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Socit'#233
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Model'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ann'#233'es'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fourniseur'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qte acheter'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date d acheter'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prix d'#39'achat'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prix de vente'
        Width = 80
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 19
    Width = 161
    Height = 49
    Caption = 'Socit'#233
    TabOrder = 4
    object DBEdit2: TDBEdit
      Left = 10
      Top = 17
      Width = 140
      Height = 21
      DataField = 'Socit'#233
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 74
    Width = 161
    Height = 50
    Caption = 'Model'
    TabOrder = 5
    object DBEdit3: TDBEdit
      Left = 11
      Top = 19
      Width = 138
      Height = 21
      DataField = 'Model'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 380
    Top = 16
    Width = 173
    Height = 49
    Caption = 'Ann'#233'e'
    TabOrder = 6
  end
  object GroupBox3: TGroupBox
    Left = 200
    Top = 16
    Width = 163
    Height = 51
    Caption = 'Fourniseur'
    TabOrder = 7
    object DBEdit5: TDBEdit
      Left = 8
      Top = 17
      Width = 143
      Height = 21
      DataField = 'Fourniseur'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 200
    Top = 73
    Width = 163
    Height = 47
    Caption = 'Qte acheter'
    TabOrder = 8
    object DBEdit6: TDBEdit
      Left = 11
      Top = 15
      Width = 140
      Height = 21
      DataField = 'Qte acheter'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 380
    Top = 69
    Width = 173
    Height = 52
    Caption = 'Date d'#39'acheter'
    TabOrder = 9
    object DBEdit7: TDBEdit
      Left = 13
      Top = 18
      Width = 148
      Height = 21
      DataField = 'Date d acheter'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DBEdit4: TDBEdit
    Left = 393
    Top = 33
    Width = 146
    Height = 21
    DataField = 'Ann'#233'es'
    DataSource = DataSource1
    TabOrder = 10
  end
  object GroupBox8: TGroupBox
    Left = 576
    Top = 8
    Width = 153
    Height = 212
    Caption = 'GroupBox8'
    TabOrder = 11
    object Button3: TButton
      Left = 16
      Top = 140
      Width = 121
      Height = 22
      Caption = 'Ajouter'
      TabOrder = 0
    end
    object GroupBox6: TGroupBox
      Left = 16
      Top = 32
      Width = 121
      Height = 49
      Caption = 'Prix d'#39'achat'
      TabOrder = 1
      object DBEdit8: TDBEdit
        Left = 11
        Top = 17
        Width = 100
        Height = 21
        DataField = 'Prix d'#39'achat'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object GroupBox7: TGroupBox
      Left = 16
      Top = 87
      Width = 121
      Height = 47
      Caption = 'Prix de vente'
      TabOrder = 2
      object DBEdit9: TDBEdit
        Left = 10
        Top = 15
        Width = 100
        Height = 21
        DataField = 'Prix de vente'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object Edit1: TEdit
      Left = 16
      Top = 172
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'Total : '
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\App G.Stocks\Dat' +
      'abase1.mdb;Persist Security Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 176
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Achats'
    Left = 96
    Top = 176
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Socité: TWideStringField
      FieldName = 'Socit'#233
      Size = 255
    end
    object ADOTable1Model: TWideStringField
      FieldName = 'Model'
      Size = 255
    end
    object ADOTable1Années: TWideStringField
      FieldName = 'Ann'#233'es'
      Size = 255
    end
    object ADOTable1Fourniseur: TWideStringField
      FieldName = 'Fourniseur'
      Size = 255
    end
    object ADOTable1Qteacheter: TWideStringField
      FieldName = 'Qte acheter'
      Size = 255
    end
    object ADOTable1Datedacheter: TWideStringField
      FieldName = 'Date d acheter'
      Size = 255
    end
    object ADOTable1Prixdachat: TWideStringField
      FieldName = 'Prix d'#39'achat'
      Size = 255
    end
    object ADOTable1Prixdevente: TWideStringField
      FieldName = 'Prix de vente'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 160
    Top = 176
  end
end