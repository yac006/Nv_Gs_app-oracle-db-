unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TClient_fourniseur = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable1ID: TAutoIncField;
    ADOTable1Nom: TWideStringField;
    ADOTable1Prénom: TWideStringField;
    ADOTable1address: TWideStringField;
    ADOTable1Télé: TIntegerField;
    ADOTable1Email: TWideStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox5: TGroupBox;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Client_fourniseur: TClient_fourniseur;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5;

end.
