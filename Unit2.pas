unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWDBStdCtrls, Vcl.ExtCtrls,
  UniProvider, OracleUniProvider, DBAccess, Uni, MemDS;

type
  TArticle = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    GroupBox5: TGroupBox;
    Button5: TButton;
    Button4: TButton;
    GroupBox3: TGroupBox;
    DBNavigator1: TDBNavigator;
    Button6: TButton;
    UniConnection1: TUniConnection;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    OracleUniProvider1: TOracleUniProvider;
    UniTable1ID_VEHICULE: TFloatField;
    UniTable1FAMILLE_V: TStringField;
    UniTable1MODEL_V: TStringField;
    UniTable1CATEGORIE_V: TStringField;
    UniTable1COULEUR_V: TStringField;
    UniTable1P_U: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Article: TArticle;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit9;

procedure TArticle.Button1Click(Sender: TObject);
begin
     UniTable1.Post;
     ShowMessage('Les donn?es a ?t? enregistr?es avec succ?s ');
end;

procedure TArticle.Button2Click(Sender: TObject);
begin
   UniTable1.Edit;
end;

procedure TArticle.Button3Click(Sender: TObject);
begin
   UniTable1.Delete;
end;

procedure TArticle.Button4Click(Sender: TObject);
begin
 Article.Hide;
 Principale.Show;
end;

procedure TArticle.Button5Click(Sender: TObject);
begin
    UniTable1.Append ;
end;

procedure TArticle.Button6Click(Sender: TObject);
begin
   UniTable1.Close;
   UniTable1.Open;
end;

end.
