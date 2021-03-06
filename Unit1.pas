unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.XPMan,
  Vcl.Imaging.pngimage, Vcl.ImgList, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  Data.Win.ADODB, Vcl.Imaging.jpeg;

type
  TPrincipale = class(TForm)
    Button1: TButton;
    Panel6: TPanel;
    Button2: TButton;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Button3: TButton;
    Panel7: TPanel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label2: TLabel;
    ImageList2: TImageList;
    Bevel2: TBevel;
    Button5: TButton;
    Button6: TButton;
    ImageList3: TImageList;
    Button7: TButton;
    ImageList4: TImageList;
    Button8: TButton;
    Button9: TButton;
    ImageList5: TImageList;
    ImageList6: TImageList;
    ImageList1: TImageList;
    RadioButton4: TRadioButton;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Button5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button5MouseLeave(Sender: TObject);
    procedure Button6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button6MouseLeave(Sender: TObject);
    procedure Button7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button7MouseLeave(Sender: TObject);
    procedure Button8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button8MouseLeave(Sender: TObject);
    procedure Button9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button9MouseLeave(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Principale: TPrincipale;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit5, Unit4, Unit6, Unit7, Unit8, Unit9, Unit10;

procedure TPrincipale.Button1Click(Sender: TObject);
begin
 Panel6.Visible:=true;
 Principale.Width:= 989;
end;

procedure TPrincipale.Button2Click(Sender: TObject);
begin
  Panel6.Visible:=False;
  Principale.Width:=774;
end;

procedure TPrincipale.Button3Click(Sender: TObject);
begin
   panel7.Visible := true;
end;

procedure TPrincipale.Button4Click(Sender: TObject);
begin
   Panel7.Visible:=False;
end;

procedure TPrincipale.Button5Click(Sender: TObject);
begin
   Achats.Show;
   Principale.Hide;
end;

procedure TPrincipale.Button5MouseLeave(Sender: TObject);
begin
   Button5.Height:= 76;
   Button5.Width:= 135;
end;

procedure TPrincipale.Button5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Button5.Height:= 79;
   Button5.Width:= 138;
end;

procedure TPrincipale.Button6Click(Sender: TObject);
begin
    Ventes.Show;
    Principale.Hide;
end;

procedure TPrincipale.Button6MouseLeave(Sender: TObject);
begin
   Button6.Height:= 76;
   Button6.Width:= 104;
end;

procedure TPrincipale.Button6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Button6.Height:= 79;
   Button6.Width:= 107;
end;

procedure TPrincipale.Button7Click(Sender: TObject);
begin
   Client_fourniseur.Show;
   Principale.Hide;
end;

procedure TPrincipale.Button7MouseLeave(Sender: TObject);
begin
   Button7.Height:= 76;
   Button7.Width:= 135;
end;

procedure TPrincipale.Button7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
      Button7.Height:= 79;
      Button7.Width:= 138;
end;

procedure TPrincipale.Button8Click(Sender: TObject);
begin
  Article.Show;
  Principale.Hide;
end;

procedure TPrincipale.Button8MouseLeave(Sender: TObject);
begin
    Button8.Height:= 76;
    Button8.Width:= 100;
end;

procedure TPrincipale.Button8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
      Button8.Height:= 79;
      Button8.Width:= 103;
end;

procedure TPrincipale.Button9Click(Sender: TObject);
begin
    Stock.Show;
    Principale.Hide;
end;

procedure TPrincipale.Button9MouseLeave(Sender: TObject);
begin
     Button9.Height:= 209;
     Button9.Width:= 93;

end;

procedure TPrincipale.Button9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     Button9.Height:= 212;
     Button9.Width:= 96;
end;

procedure TPrincipale.Label2MouseLeave(Sender: TObject);
begin
     Label2.Transparent:= true ;
end;

procedure TPrincipale.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    Label2.Transparent:= false ;
end;

procedure TPrincipale.Panel1Click(Sender: TObject);
begin
 stock.show;
 Principale.Hide;

end;

procedure TPrincipale.Panel2Click(Sender: TObject);
begin
  Article.Show;
  Principale.Hide;
end;

procedure TPrincipale.Panel3Click(Sender: TObject);
begin
  Client_fourniseur.Show;
  Principale.Hide;
end;

procedure TPrincipale.Panel4Click(Sender: TObject);
begin
 Achats.Show;
 Principale.Hide;
end;

procedure TPrincipale.Panel5Click(Sender: TObject);
begin
 Ventes.Show;
 Principale.Hide;
end;

procedure TPrincipale.RadioButton1Click(Sender: TObject);
begin
    Principale.Color:= $00B79220;
    Image1.Visible := false ;
end;

procedure TPrincipale.RadioButton2Click(Sender: TObject);
begin
    Principale.Color:= $000AB0FA ;
    Image1.Visible := false ;

end;

procedure TPrincipale.RadioButton3Click(Sender: TObject);
begin
     Principale.Color:= $00E77C6D ;
     Image1.Visible := false ;
end;

procedure TPrincipale.RadioButton4Click(Sender: TObject);
begin
   Image1.Visible := true;
end;

end.
