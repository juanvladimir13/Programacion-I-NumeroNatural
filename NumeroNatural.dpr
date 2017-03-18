program NumeroNatural;

uses
  Forms,
  UCNumeroNatural in 'models\UCNumeroNatural.pas',
  UFPrincipal in 'views\UFPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
