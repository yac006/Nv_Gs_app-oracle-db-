unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPrincipale = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel5MouseMoe(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseLeave(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseLeave(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseLeave(Sender: TObject);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseLeave(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseLeave(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Principale: TPrincipale;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit5, Unit4;

procedure TPrincipale.Panel1MouseLeave(Sender: TObject);
begin
  Panel1.Top:=148;
  Panel1.Left:=431;
  Panel1.Color:=clBtnFace;
end;

procedure TPrincipale.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel1.Top:=150;
  Panel1.Left:=433;
  Panel1.Color:=clInfoBk;
end;

procedure TPrincipale.Panel2Click(Sender: TObject);
begin
  { Article.Show;
   Principale.Hide; }
end;

procedure TPrincipale.Panel2MouseLeave(Sender: TObject);
begin
  Panel2.Top:=272;
  Panel2.Left:=288;
  Panel2.Color:=clBtnFace;
end;

procedure TPrincipale.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel2.Top:=274;
  Panel2.Left:=290;
  Panel2.Color:=clSilver;
end;

procedure TPrincipale.Panel3Click(Sender: TObject);
begin
  Client_fourniseur.Show;
  Principale.Hide;
end;

procedure TPrincipale.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Top:=272;
  Panel3.Left:=56;
  Panel3.Color:=clBtnFace;
end;

procedure TPrincipale.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Top:=274;
  Panel3.Left:=58;
  Panel3.Color:=clSilver;
end;

procedure TPrincipale.Panel4MouseLeave(Sender: TObject);
begin
  Panel4.Top:=148;
  Panel4.Left:=231;
  Panel4.Color:=clBtnFace;
end;

procedure TPrincipale.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel4.Top:=150;
  Panel4.Left:=234;
  Panel4.Color:=clSilver;
end;

procedure TPrincipale.Panel5MouseLeave(Sender: TObject);
begin
  Panel5.Top:=148;
  Panel5.Left:=56;
  Panel5.Color:=clBtnFace;
end;

procedure TPrincipale.Panel5MouseMoe(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Top:=152;
  Panel5.Left:=60;
  Panel5.Color:=clSilver;
end;

end.
