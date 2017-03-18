program NumeroNatural;

uses
  Forms,
  UFPrincipal in 'UFPrincipal.pas' {frmPrincipal},
  UCNumeroNatural in 'UCNumeroNatural.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
