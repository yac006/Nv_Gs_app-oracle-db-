object Article: TArticle
  Left = 0
  Top = 0
  Caption = 'Article'
  ClientHeight = 539
  ClientWidth = 577
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 529
    Height = 145
    Caption = 'GroupBox1'
    TabOrder = 0
    object Edit1: TEdit
      Left = 24
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 24
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 168
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 168
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 320
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'Edit5'
    end
    object Button1: TButton
      Left = 320
      Top = 88
      Width = 57
      Height = 25
      Caption = 'Ajouter'
      TabOrder = 5
    end
    object Button2: TButton
      Left = 383
      Top = 88
      Width = 57
      Height = 25
      Caption = 'Modify'
      TabOrder = 6
    end
    object Button3: TButton
      Left = 446
      Top = 88
      Width = 57
      Height = 25
      Caption = 'Supprimer'
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 184
    Width = 529
    Height = 283
    Caption = 'GroupBox2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 497
      Height = 241
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
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bar-code'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_artcl'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'catigorie'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parix d achat'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prix de vente'
          Width = 80
          Visible = True
        end>
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Ap' +
      'p G.Stocks\Database1.mdb;Mode=Share Deny None;Persist Security I' +
      'nfo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="' +
      '";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLE' +
      'DB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;J' +
      'et OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passw' +
      'ord="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt ' +
      'Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet ' +
      'OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 488
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Article'
    Left = 120
    Top = 488
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 176
    Top = 488
  end
end