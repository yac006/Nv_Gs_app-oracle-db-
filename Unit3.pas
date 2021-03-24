unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TClient_fourniseur = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBEdit_Client01: TDBEdit;
    Label3: TLabel;
    DBEdit_Client04: TDBEdit;
    Label4: TLabel;
    DBEdit_Client02: TDBEdit;
    Label5: TLabel;
    DBEdit_Client03: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox4: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    GroupBox5: TGroupBox;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button5: TButton;
    DBEdit_Frnis03: TDBEdit;
    DBEdit_Frnis02: TDBEdit;
    DBEdit_Frnis04: TDBEdit;
    DBEdit_Frnis05: TDBEdit;
    ADOTable2ID: TAutoIncField;
    ADOTable2Nom: TWideStringField;
    ADOTable2Prénom: TWideStringField;
    ADOTable2Address: TWideStringField;
    ADOTable2Télé: TIntegerField;
    ADOTable2Email: TWideStringField;
    ADOTable2NomComplet: TWideStringField;
    Label1: TLabel;
    DBEdit1_frns: TDBEdit;
    ADOTable1ID: TAutoIncField;
    ADOTable1Nom: TWideStringField;
    ADOTable1Prénom: TWideStringField;
    ADOTable1address: TWideStringField;
    ADOTable1Télé: TIntegerField;
    ADOTable1Email: TWideStringField;
    ADOTable1NomComplet: TWideStringField;
    DBEdit2_clt: TDBEdit;
    Button4: TButton;
    Button6: TButton;
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

uses Unit1, Unit2, Unit4, Unit5;

procedure TClient_fourniseur.Button1Click(Sender: TObject);
begin
   if RadioButton1.Checked=True then
        ADOTable1.Append;

   if RadioButton2.Checked=True then
        ADOTable2.Append;
end;

procedure TClient_fourniseur.Button2Click(Sender: TObject);
begin
     if RadioButton1.Checked=True then
        ADOTable1.Edit;

     if RadioButton2.Checked=True then
        ADOTable2.Edit;
end;

procedure TClient_fourniseur.Button3Click(Sender: TObject);
begin
   if RadioButton1.Checked=True then
        ADOTable1.Delete;

   if RadioButton2.Checked=True then
        ADOTable2.Delete;
end;

procedure TClient_fourniseur.Button4Click(Sender: TObject);
begin
  Client_fourniseur.Hide;
  Principale.Show;
end;

procedure TClient_fourniseur.Button5Click(Sender: TObject);
begin
     if RadioButton1.Checked=True then
        ADOTable1.Post;


   if RadioButton2.Checked=True then
        ADOTable2.post;

   ShowMessage('Les données a été enregistrées avec succès ');
end;

procedure TClient_fourniseur.Button6Click(Sender: TObject);
begin
    ADOTable1.Close;
    ADOTable1.Open;

    ADOTable2.Close;
    ADOTable2.Open;
end;

procedure TClient_fourniseur.RadioButton1Click(Sender: TObject);
begin
     if RadioButton1.Checked=true then
    begin
    DBEdit_Client01.enabled:=true;
    DBEdit_Client02.enabled:=true;
    DBEdit_Client03.enabled:=true;
    DBEdit_Client04.enabled:=true;
    DBEdit2_clt.enabled:=true;

    DBEdit_Client01.Visible:=true;
    DBEdit_Client02.Visible:=true;
    DBEdit_Client03.Visible:=true;
    DBEdit_Client04.Visible:=true;
    DBEdit2_clt.Visible:=true;
    //------------------------------//

    DBEdit_Frnis02.Visible:=False;
    DBEdit_Frnis03.Visible:=False;
    DBEdit_Frnis04.Visible:=False;
    DBEdit_Frnis05.Visible:=False;
    end;
end;

procedure TClient_fourniseur.RadioButton2Click(Sender: TObject);
begin
    if RadioButton2.Checked=true then
    begin
    DBEdit_Frnis02.enabled:=true;
    DBEdit_Frnis03.enabled:=true;
    DBEdit_Frnis04.enabled:=true;
    DBEdit_Frnis05.enabled:=true;
    DBEdit1_frns.enabled:=true;

    DBEdit_Frnis02.Visible:=true;
    DBEdit_Frnis03.Visible:=true;
    DBEdit_Frnis04.Visible:=true;
    DBEdit_Frnis05.Visible:=true;
    DBEdit1_frns.Visible:=true; {new (Nomcomplet)}
    //-----------------------------//
    DBEdit_Client01.Visible:=False;
    DBEdit_Client02.Visible:=False;
    DBEdit_Client03.Visible:=False;
    DBEdit_Client04.Visible:=False;
    DBEdit2_clt.Visible:=False;{new (Nomcomplet)}
    end;
end;

end.
