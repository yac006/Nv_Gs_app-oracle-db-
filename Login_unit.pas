unit Login_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Mask;

type
  TLogin_form = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Edit1: TEdit;
    Image2: TImage;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Login_form: TLogin_form;

implementation

{$R *.dfm}

uses Unit10;

procedure TLogin_form.Button1Click(Sender: TObject);
begin

    if (Edit1.Text = 'yacine') and (Edit2.Text = '0000') then
    begin
        Form10.Show;
        Login_form.Hide;

        Form10.Timer1.Enabled := true ;
    end
    else
       ShowMessage('Le Nom ou mot de pass Inccorect !!');

end;

end.
