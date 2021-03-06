unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TStock = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseLeave(Sender: TObject);
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
  Stock: TStock;

implementation

{$R *.dfm}

uses Unit1, Unit7, Unit8, Unit9;

procedure TStock.Button1Click(Sender: TObject);
begin
   stock.Hide;
   Principale.Show;
end;

procedure TStock.Panel2Click(Sender: TObject);
begin
Journal_achats.Show;
Stock.Hide;
end;

procedure TStock.Panel2MouseLeave(Sender: TObject);
begin
     Panel2.Left:= 256;
     Panel2.Top:= 415;
     panel2.Color:= clBtnFace;
end;

procedure TStock.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     Panel2.Left:= 257;
     Panel2.Top:= 414;
     panel2.Color:= clGray;
end;

procedure TStock.Panel3Click(Sender: TObject);
begin
    Journal_ventes.Show;
    Stock.Hide;
end;

procedure TStock.Panel3MouseLeave(Sender: TObject);
begin
     Panel3.Left:= 439;
     Panel3.Top:= 415;
     panel3.Color:= clBtnFace;
end;

procedure TStock.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     Panel3.Left:= 438;
     Panel3.Top:= 414;
     panel3.Color:= clGray;
end;

procedure TStock.Panel4Click(Sender: TObject);
begin
Stock.Hide;
Articles_en_stock.Show;
end;

procedure TStock.Panel4MouseLeave(Sender: TObject);
begin
     Panel4.width:= 360;
     Panel4.Height:= 57;
     panel4.Color:= clBtnFace;
end;

procedure TStock.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     Panel4.width:= 363;
     Panel4.Height:= 60;
     panel4.Color:=$00C7C7C7;
end;

end.
