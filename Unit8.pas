unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  Vcl.Buttons, FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.jpeg, DBAccess, Uni, MemDS;

type
  TArticles_en_stock = class(TForm)
    Button_rt: TButton;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Panel2: TPanel;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Image1: TImage;
    CategoryPanelGroup1: TCategoryPanelGroup;
    UniTable_vehicule: TUniTable;
    UniDataSrc_table_vehicule: TUniDataSource;
    UniTable_vehiculeID_VEHICULE: TFloatField;
    UniTable_vehiculeFAMILLE_V: TStringField;
    UniTable_vehiculeMODEL_V: TStringField;
    UniTable_vehiculeCATEGORIE_V: TStringField;
    UniTable_vehiculeCOULEUR_V: TStringField;
    UniTable_vehiculeP_U: TFloatField;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    UniQuery4: TUniQuery;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn002: TBitBtn;
    Label1: TLabel;
    procedure Button_rtClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn002Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Articles_en_stock: TArticles_en_stock;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit2;

procedure TArticles_en_stock.BitBtn002Click(Sender: TObject);
begin
    UniTable_vehicule.Close;
    UniTable_vehicule.open;

end;

procedure TArticles_en_stock.BitBtn1Click(Sender: TObject);
begin
    //Affecter la valeur de DBLookupComboBox1 pour le paramétre(paramt01) de FDQuery1
    UniQuery1.Close;
    UniQuery1.ParamByName('paramt01').AsString:= DBLookupComboBox1.Text;
    UniQuery1.Open;

    //Affecter la valeur de DBLookupComboBox1 pour le paramétre(paramt02) de FDQuery2
    UniQuery2.Close;
    UniQuery2.ParamByName('paramt02').AsString:= DBLookupComboBox1.Text;
    UniQuery2.Open;

    //Affecter la valeur de DBLookupComboBox1 pour le paramétre(paramt03) de FDQuery3
    UniQuery3.Close;
    UniQuery3.ParamByName('paramt03').AsString:= DBLookupComboBox1.Text;
    UniQuery3.Open;

    //Affecter la valeur de DBLookupComboBox1 pour le paramétre(paramt04) de FDQuery4
    UniQuery4.Close;
    UniQuery4.ParamByName('paramt04').AsString:= DBLookupComboBox1.Text;
    UniQuery4.Open;

    ///
    DBEdit3.Text:= DBLookupComboBox1.Text;
    //Si la requete en FDQuery1 retourné une valeur Null Afficher le MSG
    if DBEdit1.Text = '' then
    begin
        DbEdit3.Clear;
        ShowMessage('Ce model de voiture n''pas disponible dans votre stock');
    end;
end;

procedure TArticles_en_stock.Button_rtClick(Sender: TObject);
begin
     Articles_en_stock.Hide;
     Stock.Show;
end;

end.
