unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TAchats = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1ID: TAutoIncField;
    ADOTable1Socité: TWideStringField;
    ADOTable1Model: TWideStringField;
    ADOTable1Années: TWideStringField;
    ADOTable1Fourniseur: TWideStringField;
    ADOTable1Qteacheter: TWideStringField;
    ADOTable1Datedacheter: TWideStringField;
    ADOTable1Prixdachat: TWideStringField;
    ADOTable1Prixdevente: TWideStringField;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox8: TGroupBox;
    Button3: TButton;
    GroupBox6: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit9: TDBEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Achats: TAchats;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5;

procedure TAchats.Button1Click(Sender: TObject);
begin
 Achats.Hide;
 Principale.Show;
end;

end.
