unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, Uni;

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
    Button2: TButton;
    DataSrc_table_clients: TDataSource;
    Button3: TButton;
    DataSrc_tab_ventes: TDataSource;
    UniQuery1: TUniQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Journal_ventes: TJournal_ventes;

implementation

{$R *.dfm}

uses Unit6, Unit3, Unit5, Unit1, Unit2;

procedure TJournal_ventes.Button1Click(Sender: TObject);
begin
    Client_fourniseur.UniTable1.Close;
    Client_fourniseur.UniTable1.Open;
end;

procedure TJournal_ventes.Button2Click(Sender: TObject);
begin
   Journal_ventes.Hide;
   Stock.Show;
end;

procedure TJournal_ventes.Button3Click(Sender: TObject);
begin
      UniQuery1.Close;

        UniQuery1.ParamByName('prm').AsString := DBLookupComboBox1.Text ;

      UniQuery1.open;

      ///////////////////////////////////

   if DBLookupComboBox1.Text ='' then
        Ventes.UniTable1.Filtered:= false
   else
   begin
   Ventes.UniTable1.Filter:= 'ID_CLIENT LIKE '+
   QuotedStr(UniQuery1.Fields.FieldByName('Id_client').AsString +'*');

   Ventes.UniTable1.Filtered:= true  ;
   end;
end;

end.

