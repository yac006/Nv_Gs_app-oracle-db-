unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TJournal_ventes = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1_ventes: TADOTable;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Journal_ventes: TJournal_ventes;

implementation

{$R *.dfm}

uses Unit6;

procedure TJournal_ventes.Button1Click(Sender: TObject);
begin
    ADOTable1_ventes.Close;
    ADOTable1_ventes.Open;
end;

procedure TJournal_ventes.Button2Click(Sender: TObject);
begin
   Journal_ventes.Hide;
   Stock.Show;
end;

end.

