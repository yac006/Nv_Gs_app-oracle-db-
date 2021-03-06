unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ImgList, DBAccess, Uni, MemDS;

type
  TAchats = class(TForm)
    GroupBox8: TGroupBox;
    Button3: TButton;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Edit1: TEdit;
    GroupBox11: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox10: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox9: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    ImageList1: TImageList;
    Button7: TButton;
    ImageList2: TImageList;
    ImageList3: TImageList;
    GroupBox12: TGroupBox;
    Button2: TButton;
    Label1: TLabel;
    GroupBox13: TGroupBox;
    Button4: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox14: TGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniDataSource3: TUniDataSource;
    UniTable2: TUniTable;
    UniTable3: TUniTable;
    UniTable3ID_ACHATS: TFloatField;
    UniTable3ID_VEHICULE: TFloatField;
    UniTable3ID_FOURNISSEUR: TFloatField;
    UniTable3QTE_A: TFloatField;
    UniTable3DATE_A: TStringField;
    UniTable3PRIX_A: TFloatField;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    UniTable_test: TUniTable;
    DataSource_test: TDataSource;
    GroupBox15: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit_dat_src_qry01: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit_dat_src_qry02: TDBEdit;
    UniQuery1_get_id_veh: TUniQuery;
    UniQuery2_get_id_fourni: TUniQuery;
    UniDataSource_qry01: TUniDataSource;
    UniDataSource_qry02: TUniDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Achats: TAchats;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit7;

procedure TAchats.Button1Click(Sender: TObject);
begin
 Achats.Hide;
 Principale.Show;
end;

procedure TAchats.Button2Click(Sender: TObject);
begin
    Article.Show;
end;

procedure TAchats.Button3Click(Sender: TObject);
begin

    //CALCULE BENEFICE(PRIX DE VENTS - PRIX D ACHATS)
    Edit1.Text:='Bnf : ' + IntToStr(strtoint(Edit3.Text) - strtoint(Edit2.Text));




end;

procedure TAchats.Button4Click(Sender: TObject);
begin
     //Ajouter un recod en dbgrid
     UniTable3.Append;

     //ACTIVATION DES CHAMPS D ENTREE  (Dblookupcombobox , Dbedits ....)
     DBLookupComboBox1.Enabled:=true;
     DBLookupComboBox2.Enabled:=true;
     DBLookupComboBox3.Enabled:=true;

     DBEdit4.Enabled:=true;
    

     DateTimePicker1.Enabled:=true;

end;

procedure TAchats.Button5Click(Sender: TObject);
begin
     UniTable3.Edit;
end;

procedure TAchats.Button6Click(Sender: TObject);
begin
  UniTable3.Delete;
end;

procedure TAchats.Button7Click(Sender: TObject);
begin
   Client_fourniseur.Show;
end;

procedure TAchats.Button8Click(Sender: TObject);
begin
    UniTable1.Close;
    UniTable1.Open;

    UniTable2.Close;
    UniTable2.Open;

    UniTable3.Close;
    UniTable3.Open;

    UniTable_test.Close;
    UniTable_test.Open;

    UniQuery1_get_id_veh.Active := false;
    UniQuery1_get_id_veh.Active := true;

    UniQuery2_get_id_fourni.Active := false;
    UniQuery2_get_id_fourni.Active := true;
   
end;

procedure TAchats.Button9Click(Sender: TObject);
begin
    //Affecter des valeurs pour les param?tres des requetes sql
    UniQuery1_get_id_veh.Close;
    UniQuery1_get_id_veh.ParamByName('parm_01').AsString := DBLookupComboBox2.Text ;
    UniQuery1_get_id_veh.Open;

    UniQuery2_get_id_fourni.Close;
    UniQuery2_get_id_fourni.ParamByName('parm_02').AsString := DBLookupComboBox3.Text ;
    UniQuery2_get_id_fourni.Open;
    //Affecter les resultas des requetes sql pour les champs d'entr?e de la table(Achats)
    DBEdit6.text :=  DBEdit_dat_src_qry01.text ;
    DBEdit8.text :=  DBEdit_dat_src_qry02.text ;

    //Affecter la valeur de champ(prix d'achat) pour DBEdit2
     Edit2.Text := DBEdit7.Text;

    //AFFECTATION DU VALEUR DE DATETIMEPICKER1 AU champ d'entrer date table(Achats)
    DBEdit5.Text:= DateToStr(DateTimePicker1.Date);


    //SAVE DATA IN TABLE(Achats)
    UniTable3.Post;
    ShowMessage('Les donn?es a ?t? enregistr?es avec succ?s ');
end;

procedure TAchats.DBLookupComboBox1Click(Sender: TObject);
begin

    DBLookupComboBox1.Enabled:=false;
end;

procedure TAchats.DBLookupComboBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
       if DBLookupComboBox1.Enabled=false then
       ShowMessage('Il faut d''abord ajouter un  nouveau enregistrement<< clicer sur le boutton ajouter >> ');

end;

end.
