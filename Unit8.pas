unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  Tarticles_achats = class(TForm)
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOTable1ID: TAutoIncField;
    ADOTable1nom_article: TWideStringField;
    ADOTable1Model: TWideStringField;
    ADOTable1Années: TWideStringField;
    ADOTable1Fourniseur: TWideStringField;
    ADOTable1Qteacheter: TWideStringField;
    ADOTable1Datedacheter: TWideStringField;
    ADOTable1Prixdachat: TWideStringField;
    ADOTable1Prixdevente: TWideStringField;
    Label1: TLabel;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  articles_achats: Tarticles_achats;

implementation

{$R *.dfm}

uses Unit6;

procedure Tarticles_achats.Button1Click(Sender: TObject);
begin
      articles_achats.Hide;
      Stock.Show;
end;

end.
