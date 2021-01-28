object Principale: TPrincipale
  Left = 0
  Top = 0
  Caption = 'Principale'
  ClientHeight = 492
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 24
    Width = 250
    Height = 74
    Caption = 'Gestion-stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Chiller'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 431
    Top = 148
    Width = 127
    Height = 249
    Caption = 'Stock'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
    OnMouseLeave = Panel1MouseLeave
    OnMouseMove = Panel1MouseMove
  end
  object Panel2: TPanel
    Left = 288
    Top = 272
    Width = 129
    Height = 125
    Caption = 'Article'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnClick = Panel2Click
    OnMouseLeave = Panel2MouseLeave
    OnMouseMove = Panel2MouseMove
  end
  object Panel3: TPanel
    Left = 56
    Top = 272
    Width = 217
    Height = 125
    Caption = 'Client / Fourisseur'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = Panel3Click
    OnMouseLeave = Panel3MouseLeave
    OnMouseMove = Panel3MouseMove
  end
  object Panel4: TPanel
    Left = 231
    Top = 148
    Width = 186
    Height = 113
    Caption = 'Achats'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnClick = Panel4Click
    OnMouseLeave = Panel4MouseLeave
    OnMouseMove = Panel4MouseMove
  end
  object Panel5: TPanel
    Left = 56
    Top = 148
    Width = 161
    Height = 113
    Caption = 'Ventes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    Padding.Bottom = 100
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    OnClick = Panel5Click
    OnMouseLeave = Panel5MouseLeave
    OnMouseMove = Panel5MouseMoe
  end
end
