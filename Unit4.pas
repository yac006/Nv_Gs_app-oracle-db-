unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ImgList;

type
  TAchats = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    GroupBox8: TGroupBox;
    Button3: TButton;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Edit1: TEdit;
    GroupBox11: TGroupBox;
    DBGrid1: TDBGrid;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOTable2ID: TAutoIncField;
    ADOTable2Famille: TWideStringField;
    ADOTable2Model: TWideStringField;
    ADOTable2parixdachat: TWideStringField;
    ADOTable2prixdevente: TWideStringField;
    GroupBox10: TGroupBox;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox9: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    ImageList1: TImageList;
    Button7: TButton;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ADOTable3ID: TAutoIncField;
    ADOTable3Nom: TWideStringField;
    ADOTable3Prénom: TWideStringField;
    ADOTable3Address: TWideStringField;
    ADOTable3Télé: TIntegerField;
    ADOTable3Email: TWideStringField;
    ADOTable3NomComplet: TWideStringField;
    ADOTable1: TADOTable;
    GroupBox12: TGroupBox;
    Button2: TButton;
    Label1: TLabel;
    GroupBox13: TGroupBox;
    Button4: TButton;
    Button8: TButton;
    Button9: TButton;
    ADOTable1ID: TAutoIncField;
    ADOTable1Famille: TWideStringField;
    ADOTable1Model: TWideStringField;
    ADOTable1Fourniseur: TWideStringField;
    ADOTable1Qttacheter: TWideStringField;
    ADOTable1Datedacheter: TWideStringField;
    ADOTable1Prixachat: TWideStringField;
    ADOTable1PrixDeVente: TWideStringField;
    ADOTable1NomCmplFrs: TWideStringField;
    GroupBox14: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit1: TDBEdit;
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

procedure TAchats.Button2Click(Sender: TObject);
begin
    Article.Show;
end;

procedure TAchats.Button3Click(Sender: TObject);
begin

    //CALCULE BENEFICE(PRIX DE VENTS - PRIX D ACHATS)
    Edit1.Text:='Bnf : ' + IntToStr(strtoint(DBEdit3.Text) - strtoint(DBEdit2.Text));




end;

procedure TAchats.Button4Click(Sender: TObject);
begin
     //Ajouter un recod en dbgrid
     ADOTable1.Append;

     //ACTIVATION DES CHAMPS D ENTREE  (Dblookupcombobox , Dbedits ....)
     DBLookupComboBox1.Enabled:=true;
     DBLookupComboBox2.Enabled:=true;
     DBLookupComboBox3.Enabled:=true;

     DBEdit4.Enabled:=true;
     DBEdit1.Enabled:=true;
     DBEdit2.Enabled:=true;
     DBEdit3.Enabled:=true;

     DateTimePicker1.Enabled:=true;

end;

procedure TAchats.Button5Click(Sender: TObject);
begin
     ADOTable1.Edit;
end;

procedure TAchats.Button6Click(Sender: TObject);
begin
    ADOTable1.Delete;
end;

procedure TAchats.Button7Click(Sender: TObject);
begin
   Client_fourniseur.Show;
end;

procedure TAchats.Button8Click(Sender: TObject);
begin
    ADOTable1.Close;
    ADOTable1.Open;

    ADOTable2.Close;
    ADOTable2.Open;

    ADOTable3.Close;
    ADOTable3.Open;

end;

procedure TAchats.Button9Click(Sender: TObject);
begin
    //AFFECTATION DU VALEUR DE DATETIMEPICKER1 AU DBEDIT7
    DBEdit5.Text:= DateToStr(DateTimePicker1.Date);

     //////////
    DBEdit1.Text:= DBLookupComboBox3.Text;

    //SAVE DATA IN DBGRID
    ADOTable1.Post;
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
