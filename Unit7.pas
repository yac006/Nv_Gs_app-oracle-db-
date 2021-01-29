unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TJournal_achats = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Journal_achats: TJournal_achats;

implementation

{$R *.dfm}

uses Unit6;

procedure TJournal_achats.Button2Click(Sender: TObject);
begin
Journal_achats.Hide;
Stock.Show;
end;

end.
