unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, DBAccess, Uni, MemDS;

type
  TClient_fourniseur = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    GroupBox5: TGroupBox;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button5: TButton;
    Button4: TButton;
    Button6: TButton;
    UniTable1: TUniTable;
    UniTable2: TUniTable;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniTable1ID_CLIENT: TFloatField;
    UniTable1NOM_C: TStringField;
    UniTable1PRENOM_C: TStringField;
    UniTable1ADRESS_C: TStringField;
    UniTable1EMAIL_C: TStringField;
    Label2: TLabel;
    DBEdit2_c: TDBEdit;
    Label3: TLabel;
    DBEdit3_c: TDBEdit;
    Label4: TLabel;
    DBEdit4_c: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit7_c: TDBEdit;
    UniTable2ID_FOURNISSEUR: TFloatField;
    UniTable2NOM_F: TStringField;
    UniTable2PRENOM_F: TStringField;
    UniTable2ADRESS_F: TStringField;
    UniTable2EMAIL_F: TStringField;
    DBEdit1_f: TDBEdit;
    DBEdit8_f: TDBEdit;
    DBEdit9_f: TDBEdit;
    DBEdit11_f: TDBEdit;
    UniTable1TELE_C: TStringField;
    Label1: TLabel;
    DBEdit5_c: TDBEdit;
    UniTable2TELE_F: TStringField;
    DBEdit10_f: TDBEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Client_fourniseur: TClient_fourniseur;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit7, Unit9;

procedure TClient_fourniseur.Button1Click(Sender: TObject);
begin
   if RadioButton1.Checked=True then
        UniTable1.Append;

   if RadioButton2.Checked=True then
        UniTable2.Append;
end;

procedure TClient_fourniseur.Button2Click(Sender: TObject);
begin
     if RadioButton1.Checked=True then
        UniTable1.Edit;

     if RadioButton2.Checked=True then
        UniTable2.Edit;
end;

procedure TClient_fourniseur.Button3Click(Sender: TObject);
begin
   if RadioButton1.Checked=True then
        UniTable1.Delete;

   if RadioButton2.Checked=True then
        UniTable2.Delete;
end;

procedure TClient_fourniseur.Button4Click(Sender: TObject);
begin
  Client_fourniseur.Hide;
  Principale.Show;
end;

procedure TClient_fourniseur.Button5Click(Sender: TObject);
begin
     if RadioButton1.Checked=True then
        UniTable1.Post;


   if RadioButton2.Checked=True then
        UniTable2.post;

   ShowMessage('Les données a été enregistrées avec succès ');
end;

procedure TClient_fourniseur.Button6Click(Sender: TObject);
begin
    UniTable1.Close;
    UniTable1.Open;

    UniTable2.Close;
    UniTable2.Open;
end;

procedure TClient_fourniseur.RadioButton1Click(Sender: TObject);
begin
     if RadioButton1.Checked=true then
    begin
    DBEdit2_c.enabled:=true;
    DBEdit3_c.enabled:=true;
    DBEdit4_c.enabled:=true;
    DBEdit5_c.enabled:=true;
    DBEdit7_c.enabled:=true;

    DBEdit2_c.Visible:=true;
    DBEdit3_c.Visible:=true;
    DBEdit4_c.Visible:=true;
    DBEdit5_c.Visible:=true;
    DBEdit7_c.Visible:=true;
    //------------------------------//

    DBEdit1_f.Visible:=False;
    DBEdit8_f.Visible:=False;
    DBEdit9_f.Visible:=False;
    DBEdit10_f.Visible:=False;
    DBEdit11_f.Visible:=False;
    end;
end;

procedure TClient_fourniseur.RadioButton2Click(Sender: TObject);
begin
    if RadioButton2.Checked=true then
    begin
    DBEdit1_f.enabled:=true;
    DBEdit8_f.enabled:=true;
    DBEdit9_f.enabled:=true;
    DBEdit10_f.enabled:=true;
    DBEdit11_f.enabled:=true;

    DBEdit1_f.Visible:=true;
    DBEdit8_f.Visible:=true;
    DBEdit9_f.Visible:=true;
    DBEdit10_f.Visible:=true;
    DBEdit11_f.Visible:=true;
    //-----------------------------//
    DBEdit2_c.Visible:=False;
    DBEdit3_c.Visible:=False;
    DBEdit4_c.Visible:=False;
    DBEdit5_c.Visible:=False;
    DBEdit7_c.Visible:=False;
    end;
end;

end.
