object Achats: TAchats
  Left = 0
  Top = 154
  Caption = 'Achats'
  ClientHeight = 528
  ClientWidth = 750
  Color = 49087
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox8: TGroupBox
    Left = 576
    Top = 8
    Width = 153
    Height = 225
    TabOrder = 0
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
  object GroupBox10: TGroupBox
    Left = 8
    Top = 8
    Width = 553
    Height = 227
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 20
      Width = 161
      Height = 54
      Caption = 'Socit'#233
      TabOrder = 0
      object DBEdit2: TDBEdit
        Left = 10
        Top = 21
        Width = 140
        Height = 21
        DataField = 'Socit'#233
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 89
      Width = 161
      Height = 50
      Caption = 'Model'
      TabOrder = 1
      object DBEdit3: TDBEdit
        Left = 12
        Top = 19
        Width = 138
        Height = 21
        DataField = 'Model'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 364
      Top = 24
      Width = 173
      Height = 49
      Caption = 'Ann'#233'e'
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      Left = 184
      Top = 24
      Width = 163
      Height = 51
      Caption = 'Fourniseur'
      TabOrder = 3
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
      Left = 184
      Top = 89
      Width = 163
      Height = 47
      Caption = 'Qte acheter'
      TabOrder = 4
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
      Left = 364
      Top = 85
      Width = 173
      Height = 52
      Caption = 'Date d'#39'acheter'
      TabOrder = 5
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
      Left = 377
      Top = 41
      Width = 146
      Height = 21
      DataField = 'Ann'#233'es'
      DataSource = DataSource1
      TabOrder = 6
    end
    object GroupBox9: TGroupBox
      Left = 12
      Top = 151
      Width = 286
      Height = 63
      TabOrder = 7
      object Button2: TButton
        Left = 16
        Top = 22
        Width = 82
        Height = 25
        Caption = 'Ajouter article'
        TabOrder = 0
      end
      object Button4: TButton
        Left = 105
        Top = 23
        Width = 79
        Height = 23
        Caption = 'Button4'
        TabOrder = 1
      end
      object Button1: TButton
        Left = 191
        Top = 22
        Width = 80
        Height = 25
        Caption = 'Retour'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object GroupBox11: TGroupBox
    Left = 8
    Top = 248
    Width = 721
    Height = 264
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 12
      Top = 22
      Width = 696
      Height = 243
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
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\App G.Stocks\Del' +
      'phi-project\Database1.mdb;Persist Security Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 512
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Achats'
    Left = 88
    Top = 520
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
    Left = 136
    Top = 512
  end
end
