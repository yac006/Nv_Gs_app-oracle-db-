﻿object Client_fourniseur: TClient_fourniseur
  Left = 0
  Top = 0
  Caption = 'Client_fourniseur'
  ClientHeight = 520
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
    Height = 183
    Color = 6579200
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 22
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nom :'
      FocusControl = DBEdit_Client01
    end
    object Label3: TLabel
      Left = 8
      Top = 54
      Width = 43
      Height = 13
      Caption = 'Pr'#233'nom :'
      FocusControl = DBEdit_Client04
    end
    object Label4: TLabel
      Left = 434
      Top = 25
      Width = 49
      Height = 13
      Caption = 'Address : '
      FocusControl = DBEdit_Client02
    end
    object Label5: TLabel
      Left = 640
      Top = 25
      Width = 27
      Height = 13
      Caption = 'T'#233'l'#233' :'
      FocusControl = DBEdit_Client03
    end
    object Label6: TLabel
      Left = 184
      Top = 248
      Width = 24
      Height = 13
      Caption = 'Email'
      FocusControl = DBEdit6
    end
    object Label1: TLabel
      Left = 212
      Top = 25
      Width = 70
      Height = 13
      Caption = 'NomComplet : '
      FocusControl = DBEdit1_frns
    end
    object DBEdit_Client01: TDBEdit
      Left = 55
      Top = 22
      Width = 150
      Height = 21
      DataField = 'Nom'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
      Visible = False
    end
    object DBEdit_Client04: TDBEdit
      Left = 55
      Top = 51
      Width = 150
      Height = 21
      DataField = 'Pr'#233'nom'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
      Visible = False
    end
    object DBEdit_Client02: TDBEdit
      Left = 484
      Top = 22
      Width = 150
      Height = 21
      DataField = 'address'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
      Visible = False
    end
    object DBEdit_Client03: TDBEdit
      Left = 673
      Top = 21
      Width = 133
      Height = 21
      DataField = 'T'#233'l'#233
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
      Visible = False
    end
    object DBEdit6: TDBEdit
      Left = 184
      Top = 264
      Width = 3319
      Height = 21
      DataField = 'Email'
      DataSource = DataSource1
      TabOrder = 4
    end
    object GroupBox4: TGroupBox
      Left = 22
      Top = 108
      Width = 229
      Height = 57
      Caption = 'choix'
      TabOrder = 5
      object RadioButton2: TRadioButton
        Left = 96
        Top = 19
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
        Left = 19
        Top = 16
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
      Left = 370
      Top = 95
      Width = 436
      Height = 70
      Caption = 'controle'
      TabOrder = 6
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
        Caption = 'Refresh'
        TabOrder = 4
        OnClick = Button6Click
      end
    end
    object DBEdit_Frnis03: TDBEdit
      Left = 55
      Top = 51
      Width = 150
      Height = 21
      DataField = 'Pr'#233'nom'
      DataSource = DataSource2
      Enabled = False
      TabOrder = 7
    end
    object DBEdit_Frnis02: TDBEdit
      Left = 55
      Top = 22
      Width = 150
      Height = 21
      DataField = 'Nom'
      DataSource = DataSource2
      Enabled = False
      TabOrder = 8
    end
    object DBEdit1_frns: TDBEdit
      Left = 283
      Top = 22
      Width = 140
      Height = 21
      DataField = 'NomComplet'
      DataSource = DataSource2
      Enabled = False
      TabOrder = 9
    end
    object DBEdit2_clt: TDBEdit
      Left = 283
      Top = 22
      Width = 140
      Height = 21
      DataField = 'NomComplet'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 18
    Top = 222
    Width = 415
    Height = 265
    Caption = 'Liste des clients'
    Color = 6579200
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 381
      Height = 225
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr'#233'nom'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomComplet'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T'#233'l'#233
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 50
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 452
    Top = 222
    Width = 392
    Height = 265
    Caption = 'Liste des fourniseur'
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
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr'#233'nom'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomComplet'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T'#233'l'#233
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 50
          Visible = True
        end>
    end
  end
  object DBEdit_Frnis04: TDBEdit
    Left = 502
    Top = 40
    Width = 150
    Height = 21
    DataField = 'Address'
    DataSource = DataSource2
    Enabled = False
    TabOrder = 3
  end
  object DBEdit_Frnis05: TDBEdit
    Left = 691
    Top = 39
    Width = 133
    Height = 21
    DataField = 'T'#233'l'#233
    DataSource = DataSource2
    Enabled = False
    TabOrder = 4
  end
  object Button4: TButton
    Left = 20
    Top = 496
    Width = 31
    Height = 15
    Caption = '<--'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 505
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Gs' +
      '_app\Database1.mdb;Mode=Share Deny None;Persist Security Info=Fa' +
      'lse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet ' +
      'OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Dat' +
      'abase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLE' +
      'DB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=""' +
      ';Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Databa' +
      'se=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:' +
      'Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 505
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clients'
    Left = 144
    Top = 505
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Nom: TWideStringField
      FieldName = 'Nom'
      Size = 255
    end
    object ADOTable1Prénom: TWideStringField
      FieldName = 'Pr'#233'nom'
      Size = 255
    end
    object ADOTable1NomComplet: TWideStringField
      FieldName = 'NomComplet'
      Size = 255
    end
    object ADOTable1address: TWideStringField
      FieldName = 'address'
      Size = 255
    end
    object ADOTable1Télé: TIntegerField
      FieldName = 'T'#233'l'#233
    end
    object ADOTable1Email: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Fourniseurs'
    Left = 200
    Top = 505
    object ADOTable2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable2Nom: TWideStringField
      FieldName = 'Nom'
      Size = 255
    end
    object ADOTable2Prénom: TWideStringField
      FieldName = 'Pr'#233'nom'
      Size = 255
    end
    object ADOTable2NomComplet: TWideStringField
      FieldName = 'NomComplet'
      Size = 255
    end
    object ADOTable2Address: TWideStringField
      FieldName = 'Address'
      Size = 255
    end
    object ADOTable2Télé: TIntegerField
      FieldName = 'T'#233'l'#233
    end
    object ADOTable2Email: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 328
    Top = 505
  end
end
