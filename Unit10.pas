unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls;

const
    PBM_SETBARCOLOR = WM_USER + 9;
type
  TForm10 = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit1, Login_unit;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
    ProgressBar1.Position := ProgressBar1.Position+10 ;

    if ProgressBar1.Position = 100 then
    begin
        Timer1.Enabled := False ;

        Form10.Hide;
        Principale.Show ;
    end;
end;

end.
