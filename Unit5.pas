unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  frxClass, frxDBSet, Vcl.Buttons, DBAccess, Uni, MemDS;

type
  TVentes = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Button1: TButton;
    GroupBox8: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox9: TGroupBox;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button007: TButton;
    ImageList1: TImageList;
    Panel2: TPanel;
    Button5: TButton;
    Button7: TButton;
    Button8: TButton;
    Data_Src_qry_qte_achats: TDataSource;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Data_Src_qry_PU: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ImageList2: TImageList;
    Button2: TButton;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    UniTable1: TUniTable;
    UniTable2: TUniTable;
    UniTable3: TUniTable;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniDataSource3: TUniDataSource;
    UniTable4: TUniTable;
    UniDataSource4: TUniDataSource;
    DataSource_test: TDataSource;
    UniTable_test: TUniTable;
    UniQuery1_get_id_veh: TUniQuery;
    UniData_src_qry01: TUniDataSource;
    DBEdit_data_src_qry01: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit5: TDBEdit;
    UniQuery_get_Qte_achats: TUniQuery;
    UniQuery_get_PU: TUniQuery;
    UniTable1ID_VENTE: TFloatField;
    UniTable1ID_VEHICULE: TFloatField;
    UniTable1ID_CLIENT: TFloatField;
    UniTable1QTE_V: TFloatField;
    UniTable1DATE_V: TStringField;
    DBEdit2: TDBEdit;
    DBEdit_data_Sr5: TDBEdit;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    UniQuery2_get_id_clt: TUniQuery;
    UniData_src_qry02: TUniDataSource;
    DBEdit7: TDBEdit;
    DbEdit_Data_src_qry02: TDBEdit;
    Button9: TButton;
    UniTable1PRIX_V: TFloatField;
    procedure Button3Click(Sender: TObject);
    procedure Button007Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Ventes: TVentes;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit9;

procedure TVentes.BitBtn1Click(Sender: TObject);
begin
    frxReport1.ShowReport;
end;

procedure TVentes.Button007Click(Sender: TObject);
begin
     Client_fourniseur.Show;
end;

procedure TVentes.Button1Click(Sender: TObject);

begin
      //Affectation de la valeur du DBLookupComboBox2 pour Edit1
      Edit1.Text:= DBLookupComboBox2.Text;


      //------ Affectation de la valeur de Edit1(Model_vehicule) pour le parametre de la requette sql -----//
      UniQuery_get_Qte_achats.Close;
      UniQuery_get_Qte_achats.ParamByName('parm_03').AsString := Edit1.Text;
      UniQuery_get_Qte_achats.Open;

      //------ Affectation de la valeur de Edit1(Model_vehicule) pour le parametre de la requette sql -----//
      UniQuery_get_PU.Close;
      UniQuery_get_PU.ParamByName('parm_04').AsString := Edit1.Text;
      UniQuery_get_PU.Open;


end;

procedure TVentes.Button2Click(Sender: TObject);
begin
   UniTable1.Close;
   UniTable1.Open;

   UniTable2.Close;
   UniTable2.Open;

   UniTable3.Close;
   UniTable3.Open;

   UniTable4.Close;
   UniTable4.Open;

end;

procedure TVentes.Button3Click(Sender: TObject);
begin
   Ventes.Hide;
   Principale.Show;
end;

procedure TVentes.Button4Click(Sender: TObject);
begin
   //Changement du prix unitaire
     DBEdit_data_Sr5.Text:= Edit4.Text ;
end;

procedure TVentes.Button5Click(Sender: TObject);
begin

     UniTable1.Append;

    //D?verouiller les champs d'entr?es
    DBLookupComboBox1.Enabled:=true;
    DBLookupComboBox2.Enabled:=true;
    DBLookupComboBox3.Enabled:=true;
    DateTimePicker1.Enabled:=true;
    DBEdit5.Enabled:=true;
    Edit4.Enabled:=true;
    Button1.Enabled:=true;
    Button4.Enabled:=true;
    Button6.Enabled:=true;
    Button7.Enabled:=true;
    Button007.Enabled:=true;
    Button8.Enabled:=true;

end;

procedure TVentes.Button6Click(Sender: TObject);
begin

    //Affecter la valeur de DBLookupComboBox2 pour le param?tre de la requete sql(UniQuery1_get_id_veh)
    UniQuery1_get_id_veh.Close;
    UniQuery1_get_id_veh.ParamByName('parm_01').AsString := DBLookupComboBox2.Text;
    UniQuery1_get_id_veh.Open;

    DBEdit3.Text := DBEdit_data_src_qry01.Text;

    //Affecter la valeur de DBLookupComboBox3 pour le param?tre de la requete sql(UniQuery2_get_id_clt)
    UniQuery2_get_id_clt.Close;
    UniQuery2_get_id_clt.ParamByName('parm_02').AsString := DBLookupComboBox3.Text;
    UniQuery2_get_id_clt.Open;

    DBEdit7.Text := DbEdit_Data_src_qry02.Text;



    //AFFECTATION DU VALEUR DE DATETIMEPICKER1 POUR LE CHAMP Date_v de la table(VENTES)
    DBEdit4.Text:= DateToStr(DateTimePicker1.Date);
    //Affecter le p.u pour DbEdit2(champ d'entr?e de la table VENTES)
    DBEdit2.Text:= DBEdit_data_Sr5.Text ;
    //AFFICHAGE LE TOTAL EN "Label5"
    Label5.Caption:= DBEdit_data_Sr5.Text ;

    UniTable1.Post;

    ShowMessage('Les donn?es a ?t? enregistr?es avec succ?s ');

end;

procedure TVentes.Button7Click(Sender: TObject);
begin
     UniTable1.Edit;
end;

procedure TVentes.Button8Click(Sender: TObject);
begin
    UniTable1.Delete;
end;

procedure TVentes.Button9Click(Sender: TObject);
begin
   Principale.Show;
   Ventes.Hide;
end;

end.
