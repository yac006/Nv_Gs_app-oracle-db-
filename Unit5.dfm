object Ventes: TVentes
  Left = 0
  Top = 0
  Caption = 'Ventes'
  ClientHeight = 675
  ClientWidth = 886
  Color = 2134015
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 632
    Top = 16
    Width = 233
    Height = 249
    Caption = 'Panel1'
    Color = clSilver
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 35
      Height = 19
      Caption = 'Code : '
    end
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Qte : '
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 24
      Height = 13
      Caption = 'P.U :'
    end
    object Button4: TButton
      Left = 16
      Top = 99
      Width = 89
      Height = 25
      Caption = 'Change le p.u : '
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 130
      Width = 201
      Height = 105
      Caption = 'TOTAL :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 57
      Top = 10
      Width = 158
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 56
      Top = 37
      Width = 161
      Height = 21
      TabOrder = 3
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 56
      Top = 64
      Width = 161
      Height = 21
      TabOrder = 4
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 111
      Top = 101
      Width = 106
      Height = 21
      TabOrder = 5
      Text = 'Edit4'
    end
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 592
    Height = 249
    Caption = 'C'
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 23
      Top = 16
      Width = 203
      Height = 53
      Caption = 'Model :'
      TabOrder = 0
      object DBEdit2: TDBEdit
        Left = 11
        Top = 19
        Width = 180
        Height = 21
        DataField = 'Model'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object GroupBox6: TGroupBox
      Left = 295
      Top = 84
      Width = 203
      Height = 56
      Caption = 'Qt : '
      TabOrder = 1
      object DBEdit5: TDBEdit
        Left = 14
        Top = 20
        Width = 180
        Height = 21
        DataField = 'Qt'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object GroupBox7: TGroupBox
      Left = 24
      Top = 168
      Width = 379
      Height = 55
      Caption = 'b'
      TabOrder = 2
      object Button2: TButton
        Left = 15
        Top = 16
        Width = 121
        Height = 25
        Caption = 'Ajout'#233' aux factures'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 144
        Top = 15
        Width = 129
        Height = 25
        Caption = 'V'#233'rifier la disponibilit'#233
        TabOrder = 1
      end
      object Button3: TButton
        Left = 287
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Retour'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 48
    Top = 91
    Width = 202
    Height = 54
    Caption = 'Client :'
    TabOrder = 2
    object DBEdit3: TDBEdit
      Left = 10
      Top = 20
      Width = 179
      Height = 21
      DataField = 'Client'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 319
    Top = 32
    Width = 203
    Height = 53
    Caption = 'Date de vente : '
    TabOrder = 3
    object DBEdit4: TDBEdit
      Left = 9
      Top = 20
      Width = 180
      Height = 21
      DataField = 'Date de vente'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox8: TGroupBox
    Left = 24
    Top = 279
    Width = 841
    Height = 354
    Caption = 'GroupBox8'
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 23
      Top = 25
      Width = 800
      Height = 312
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\work__space_gs\D' +
      'elphi-project\Database1.mdb;Persist Security Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 280
    Top = 640
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Ventes'
    Left = 328
    Top = 640
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Model: TWideStringField
      FieldName = 'Model'
      Size = 255
    end
    object ADOTable1Client: TWideStringField
      FieldName = 'Client'
      Size = 255
    end
    object ADOTable1Datedevente: TWideStringField
      FieldName = 'Date de vente'
      Size = 255
    end
    object ADOTable1Qt: TWideStringField
      FieldName = 'Qt'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 384
    Top = 640
  end
end
