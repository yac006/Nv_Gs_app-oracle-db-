object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 547
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 264
    Width = 521
    Height = 257
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 616
    Top = 8
    Width = 181
    Height = 185
    Caption = 'Panel1'
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 585
    Height = 185
    Caption = 'G'
    TabOrder = 2
    object Button1: TButton
      Left = 440
      Top = 144
      Width = 129
      Height = 25
      Caption = 'V'#233'rifier la disponibilit'#233
      TabOrder = 0
    end
  end
  object Button2: TButton
    Left = 384
    Top = 217
    Width = 121
    Height = 25
    Caption = 'Ajout'#233' aux factures'
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\App G.Stocks\Dat' +
      'abase1.mdb;Persist Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 208
  end
  object ADOTable1: TADOTable
    Left = 104
    Top = 208
  end
  object DataSource1: TDataSource
    Left = 168
    Top = 208
  end
end
