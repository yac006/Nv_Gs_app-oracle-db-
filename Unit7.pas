unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB, Vcl.DBCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, MemDS, DBAccess, Uni;

type
  TJournal_achats = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource_de_table_achats: TDataSource;
    DBGrid2: TDBGrid;
    DataSource_de_table_fourni: TDataSource;
    Button3: TButton;
    UniQuery1: TUniQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Journal_achats: TJournal_achats;

implementation

{$R *.dfm}

uses Unit6, Unit4, Unit3, Unit1, Unit2;

procedure TJournal_achats.Button1Click(Sender: TObject);
begin

    Achats.UniTable3.Close;
    Achats.UniTable3.Open;

end;

procedure TJournal_achats.Button2Click(Sender: TObject);
begin
Journal_achats.Hide;
Stock.Show;
end;

procedure TJournal_achats.Button3Click(Sender: TObject);
begin

    UniQuery1.Close;
    UniQuery1.ParamByName('prm').AsString := DBLookupComboBox1.Text;
    UniQuery1.Open;



    ////////////////////////////////////

   if DBLookupComboBox1.Text ='' then
        Achats.UniTable3.Filtered:= false
   else
   begin
   Achats.UniTable3.Filter:= 'ID_FOURNISSEUR LIKE '+
   QuotedStr(UniQuery1.Fields.FieldByName('Id_fournisseur').AsString +'*');

   Achats.UniTable3.Filtered:= true  ;
   end;
end;

end.
