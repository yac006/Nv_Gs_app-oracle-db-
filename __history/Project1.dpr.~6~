program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Principale},
  Unit2 in 'Unit2.pas' {Article},
  Unit3 in 'Unit3.pas' {Client_fourniseur},
  Unit4 in 'Unit4.pas' {Achats},
  Unit5 in 'Unit5.pas' {Ventes},
  Unit6 in 'Unit6.pas' {Stock};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipale, Principale);
  Application.CreateForm(TArticle, Article);
  Application.CreateForm(TClient_fourniseur, Client_fourniseur);
  Application.CreateForm(TAchats, Achats);
  Application.CreateForm(TVentes, Ventes);
  Application.CreateForm(TStock, Stock);
  Application.Run;
end.
