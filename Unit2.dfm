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
      Top = 360
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
      Top = 22
      Width = 235
      Height = 309
      Caption = 'Inputs'
      Color = 44784
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label1: TLabel
        Left = 23
        Top = 43
        Width = 42
        Height = 13
        Caption = 'Famille : '
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 23
        Top = 89
        Width = 35
        Height = 13
        Caption = 'Model :'
        FocusControl = DBEdit4
      end
      object Label2: TLabel
        Left = 23
        Top = 130
        Width = 73
        Height = 13
        Caption = 'parix d achat : '
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 23
        Top = 171
        Width = 71
        Height = 13
        Caption = 'prix de vente :'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 23
        Top = 62
        Width = 180
        Height = 21
        DataField = 'Famille'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 23
        Top = 102
        Width = 180
        Height = 21
        DataField = 'Model'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 23
        Top = 146
        Width = 180
        Height = 21
        DataField = 'parix d achat'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 23
        Top = 187
        Width = 180
        Height = 21
        DataField = 'prix de vente'
        DataSource = DataSource1
        TabOrder = 3
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
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Famille'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Model'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parix d achat'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prix de vente'
          Width = 70
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
      DataSource = DataSource1
      TabOrder = 0
    end
    object Button6: TButton
      Left = 345
      Top = 29
      Width = 62
      Height = 25
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 472
    Top = 488
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Article'
    Left = 408
    Top = 488
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Famille: TWideStringField
      FieldName = 'Famille'
      Size = 255
    end
    object ADOTable1Model: TWideStringField
      FieldName = 'Model'
      Size = 255
    end
    object ADOTable1parixdachat: TWideStringField
      FieldName = 'parix d achat'
      Size = 255
    end
    object ADOTable1prixdevente: TWideStringField
      FieldName = 'prix de vente'
      Size = 255
    end
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
    Left = 336
    Top = 488
  end
end
