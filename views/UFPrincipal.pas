unit UFPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UCNumeroNatural, Menus, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    ContarDigitos1: TMenuItem;
    invertir1: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    Salir1: TMenuItem;
    Salir2: TMenuItem;
    N1: TMenuItem;
    AdicionarDigitoalfinal1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    ObtenerDigitoMayor1: TMenuItem;
    ObtenerelPrimerDig1: TMenuItem;
    Eliminar1: TMenuItem;
    FuncionesEspc1: TMenuItem;
    ObservarDig1: TMenuItem;
    ObtenerDig1: TMenuItem;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Pos1: TEdit;
    Pos2: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Dig1: TEdit;
    Dig2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Modificar1: TMenuItem;
    PrimDig1: TMenuItem;
    UltimoDig1: TMenuItem;
    DigPos1: TMenuItem;
    DigPos2: TMenuItem;
    EliminarDigPrimos1: TMenuItem;
    Intercambiar1: TMenuItem;
    NrConsecPar1: TMenuItem;
    NumeroPerfecto1: TMenuItem;
    NumerosUnicos1: TMenuItem;
    NroDigjuntos1: TMenuItem;
    DosUltimDig1: TMenuItem;
    FuncionesExtras1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Posicion1: TMenuItem;
    NumaBinario1: TMenuItem;
    NumaHexadecimal1: TMenuItem;
    Pares1: TMenuItem;
    Impares1: TMenuItem;
    Button5: TButton;
    Igualdado1: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    adfasdf3: TMenuItem;
    adfasdf4: TMenuItem;
    N12: TMenuItem;
    Posicion2: TMenuItem;
    N19: TMenuItem;
    PosdeunDigitoDado1: TMenuItem;
    DigIguales2: TMenuItem;
    DigitosIguales1: TMenuItem;
    Unoposuno1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    EstaOrdenado1: TMenuItem;
    Esprimo1: TMenuItem;
    N5: TMenuItem;
    NroMayor1: TMenuItem;
    NumeroMarRepetido1: TMenuItem;
    N7: TMenuItem;
    UnnumeroenotroNum1: TMenuItem;
    Nroiguales1: TMenuItem;
    OrdenarAscendente1: TMenuItem;
    PosdelDigito1: TMenuItem;
    Power1: TMenuItem;
    SepararNumRepetidos1: TMenuItem;
    SumadeDigitos1: TMenuItem;
    Posicioninicial1: TMenuItem;
    N9: TMenuItem;
    burbuja1: TMenuItem;
    N6: TMenuItem;
    Conversiones1: TMenuItem;
    N10: TMenuItem;
    Natural1: TMenuItem;
    Romanos1: TMenuItem;
    Octal1: TMenuItem;
    AbaseN1: TMenuItem;
    EliminarCeros1: TMenuItem;
    NroRepetidos1: TMenuItem;
    MostraDigdeposInversa1: TMenuItem;
    SubMayordeDigitos1: TMenuItem;
    SegundoMayor1: TMenuItem;
    Freduencia1: TMenuItem;
    CantidaddenumerosIguales1: TMenuItem;
    CantidaddefrecuenciaMayor1: TMenuItem;
    Nrodefrecuecimsy1: TMenuItem;
    OrdenarPorfrecuencia1: TMenuItem;
    CantidaddeDigitosIguales1: TMenuItem;
    Solopares1: TMenuItem;
    NuevoNumero1: TMenuItem;
    invertirParm1: TMenuItem;
    Binario1: TMenuItem;
    Hexad1: TMenuItem;
    CantdeDig1: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    Digitos1: TMenuItem;
    N14: TMenuItem;
    Numeros1: TMenuItem;
    N15: TMenuItem;
    EsDigPrimo1: TMenuItem;
    Dignd1: TMenuItem;
    Posnpos1: TMenuItem;
    Digito1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Posicion3: TMenuItem;
    N18: TMenuItem;
    Otros1: TMenuItem;
    N20: TMenuItem;
    NrosUnicosn1: TMenuItem;
    PosdeDignd1: TMenuItem;
    NumeroPar1: TMenuItem;
    NumeroImpar1: TMenuItem;
    Probando1: TMenuItem;
    ParesimparesSeparados1: TMenuItem;
    Mul111: TMenuItem;
    Unnumeroenotro1: TMenuItem;
    Soniguales1: TMenuItem;
    Secuencia1: TMenuItem;
    Potenciabp1: TMenuItem;
    BinarioDecimal1: TMenuItem;
    Decimalbinario1: TMenuItem;
    ConvaBaseN1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure AsignarValor1Click(Sender: TObject);
    procedure ObtenerValor1Click(Sender: TObject);
    procedure ContarDigitos1Click(Sender: TObject);
    procedure invertir1Click(Sender: TObject);
    procedure ObtenerDigitoMayor1Click(Sender: TObject);
    procedure AdicionarDigitoalfinal1Click(Sender: TObject);
    procedure UltimoDigito1Click(Sender: TObject);
    procedure PrimDig1Click(Sender: TObject);
    procedure UltimoDig1Click(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
    procedure DigPos1Click(Sender: TObject);
    procedure DigPos2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure EliminarDigPrimos1Click(Sender: TObject);
    procedure Intercambiar1Click(Sender: TObject);
    procedure UnNumenotro1Click(Sender: TObject);
    procedure NrConsecPar1Click(Sender: TObject);
    procedure DigParesSepa1Click(Sender: TObject);
    procedure NumeroPerfecto1Click(Sender: TObject);
    procedure NumerosUnicos1Click(Sender: TObject);
    procedure NroDigjuntos1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PowerdeNum1Click(Sender: TObject);
    procedure OrdenAscendente1Click(Sender: TObject);
    procedure Posicion1Click(Sender: TObject);
    procedure NumaBinario1Click(Sender: TObject);
    procedure NumaHexadecimal1Click(Sender: TObject);
    procedure Nroconsecutivospares1Click(Sender: TObject);
    procedure Numeroenotro1Click(Sender: TObject);
    procedure Pares1Click(Sender: TObject);
    procedure Impares1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Igualdado1Click(Sender: TObject);
    procedure sisoniguales1Click(Sender: TObject);
    procedure siestaordenado1Click(Sender: TObject);
    procedure Sumardig1Click(Sender: TObject);
    procedure DigIguales2Click(Sender: TObject);
    procedure ContarDig2For1Click(Sender: TObject);
    procedure DigitosIguales1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure EstaOrdenado1Click(Sender: TObject);
    procedure Esprimo1Click(Sender: TObject);
    procedure NroMayor1Click(Sender: TObject);
    procedure NumeroMarRepetido1Click(Sender: TObject);
    procedure UnnumeroenotroNum1Click(Sender: TObject);
    procedure Nroiguales1Click(Sender: TObject);
    procedure OrdenarAscendente1Click(Sender: TObject);
    procedure PosdelDigito1Click(Sender: TObject);
    procedure Power1Click(Sender: TObject);
    procedure SepararNumRepetidos1Click(Sender: TObject);
    procedure SumadeDigitos1Click(Sender: TObject);
    procedure Posicioninicial1Click(Sender: TObject);
    procedure burbuja1Click(Sender: TObject);
    procedure Natural1Click(Sender: TObject);
    procedure Romanos1Click(Sender: TObject);
    procedure AbaseN1Click(Sender: TObject);
    procedure Octal1Click(Sender: TObject);
    procedure NroRepetidos1Click(Sender: TObject);
    procedure MostraDigdeposInversa1Click(Sender: TObject);
    procedure SubMayordeDigitos1Click(Sender: TObject);
    procedure SegundoMayor1Click(Sender: TObject);
    procedure Freduencia1Click(Sender: TObject);
    procedure CantidaddenumerosIguales1Click(Sender: TObject);
    procedure CantidaddefrecuenciaMayor1Click(Sender: TObject);
    procedure Nrodefrecuecimsy1Click(Sender: TObject);
    procedure OrdenarPorfrecuencia1Click(Sender: TObject);
    procedure CantidaddeDigitosIguales1Click(Sender: TObject);
    procedure Solopares1Click(Sender: TObject);
    procedure NuevoNumero1Click(Sender: TObject);
    procedure invertirParm1Click(Sender: TObject);
    procedure Binario1Click(Sender: TObject);
    procedure Hexad1Click(Sender: TObject);
    procedure CantdeDig1Click(Sender: TObject);
    procedure Dignd1Click(Sender: TObject);
    procedure Posnpos1Click(Sender: TObject);
    procedure NrosUnicosn1Click(Sender: TObject);
    procedure NumeroPar1Click(Sender: TObject);
    procedure NumeroImpar1Click(Sender: TObject);
    procedure ParesimparesSeparados1Click(Sender: TObject);
    procedure Mul111Click(Sender: TObject);
    procedure Unnumeroenotro1Click(Sender: TObject);
    procedure Soniguales1Click(Sender: TObject);
    procedure Secuencia1Click(Sender: TObject);
    procedure Potenciabp1Click(Sender: TObject);
    procedure BinarioDecimal1Click(Sender: TObject);
    procedure Decimalbinario1Click(Sender: TObject);
    procedure ConvaBaseN1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    N : NumeroNatural;
  public
    { Public declarations }
  end;
var
  frmPrincipal: TfrmPrincipal;
implementation
{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
N:=NumeroNatural.Create;
end;

procedure TfrmPrincipal.AsignarValor1Click(Sender: TObject);
begin
     N.Cambiar_Valor(StrToInt(Edit1.Text));
end;

procedure TfrmPrincipal.ObtenerValor1Click(Sender: TObject);
begin
      Label1.Caption:=IntToStr(N.Obtener_Valor);
end;

procedure TfrmPrincipal.ContarDigitos1Click(Sender: TObject);
begin
Label1.Caption:=IntToStr(N.getCantidad_Dig_Ps);
end;

procedure TfrmPrincipal.invertir1Click(Sender: TObject);
begin
N.invertir;
end;

procedure TfrmPrincipal.ObtenerDigitoMayor1Click(Sender: TObject);
begin
Label1.Caption:=IntToStr(N.getDig_May);
end;

procedure TfrmPrincipal.AdicionarDigitoalfinal1Click(Sender: TObject);
begin
N.setDig_final(StrToInt(Dig1.Text));
end;


procedure TfrmPrincipal.UltimoDigito1Click(Sender: TObject);
begin
// Label1.Caption:= IntToStr(UltimoDigito1);//
end;

procedure TfrmPrincipal.PrimDig1Click(Sender: TObject);
begin
 Label1.Caption:= IntToStr (N.getPrimer_Dig);
end;

procedure TfrmPrincipal.UltimoDig1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr (N.getUltimo_Dig);
end;

procedure TfrmPrincipal.Salir2Click(Sender: TObject);
begin
N.setDig_inicio(StrToInt(Dig1.Text));
end;

procedure TfrmPrincipal.DigPos1Click(Sender: TObject);
begin
N.setDig_pos(StrToInt(Dig1.Text),StrToInt(Pos1.Text));
end;

procedure TfrmPrincipal.DigPos2Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getPos_dig(StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.N1Click(Sender: TObject);
begin
N.setDig_pos(StrToInt(Dig1.Text),StrToInt (Pos1.Text));
end;

procedure TfrmPrincipal.EliminarDigPrimos1Click(Sender: TObject);
begin
N.Eliminar_Num_Primos;
end;


procedure TfrmPrincipal.Intercambiar1Click(Sender: TObject);
begin
N.intercambiar_2pos(StrToInt(Pos1.Text),StrToInt (Pos2.Text));
end;

procedure TfrmPrincipal.UnNumenotro1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.un_Nro_en_otro(StrToInt(Dig1.Text)));
end;

procedure TfrmPrincipal.NrConsecPar1Click(Sender: TObject);
begin
label1.Caption:= inttostr(N.cant_Consec_Par);
end;

procedure TfrmPrincipal.DigParesSepa1Click(Sender: TObject);
begin
N.separar_nro_rep;
end;

procedure TfrmPrincipal.NumeroPerfecto1Click(Sender: TObject);
var s:string;
begin
if N.nro_perfecto= true then
s:= 'No'
else
s:= 'Si';
Label1.Caption:= s;
end;

procedure TfrmPrincipal.NumerosUnicos1Click(Sender: TObject);
begin
N.nro_unicos;
end;

procedure TfrmPrincipal.NroDigjuntos1Click(Sender: TObject);
begin
label1.Caption:= IntToStr (N.cant_Dig_igual_juntos);
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
 N.Cambiar_Valor(StrToInt(Edit1.Text));
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
      Label1.Caption:=IntToStr(N.Obtener_Valor);
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
frmPrincipal.Close;
end;

procedure TfrmPrincipal.PowerdeNum1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.power_Create);
end;

procedure TfrmPrincipal.OrdenAscendente1Click(Sender: TObject);
begin
N.ordenar_Asc;
end;

procedure TfrmPrincipal.Posicion1Click(Sender: TObject);
begin
N.eliminar_Dig_pos (StrToInt(Pos1.Text));
end;

procedure TfrmPrincipal.NumaBinario1Click(Sender: TObject);
begin
Label1.Caption:=N.a_binario;
end;

procedure TfrmPrincipal.NumaHexadecimal1Click(Sender: TObject);
begin
 Label1.Caption:=N.a_hexadec;
end;

procedure TfrmPrincipal.Nroconsecutivospares1Click(Sender: TObject);
begin
label1.Caption:= inttostr(N.cant_Consec_Par);
end;

procedure TfrmPrincipal.Numeroenotro1Click(Sender: TObject);
begin
label1.Caption:= IntToStr(N.un_Nro_en_otro(StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.Pares1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr( N.getgetDig_pares_P(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.Impares1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr( N.getgetDig_impares_P(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
Pos1.Clear; Pos2.Clear; Dig1.Clear; Dig2.Clear;
end;

procedure TfrmPrincipal.Igualdado1Click(Sender: TObject);
begin
N.eliminar_Dig(StrToInt(Dig1.Text));
end;

procedure TfrmPrincipal.sisoniguales1Click(Sender: TObject);
begin
      label1.Caption:= booltostr(N.nro_iguales_P(strtoint(Pos1.Text)));
end;

procedure TfrmPrincipal.siestaordenado1Click(Sender: TObject);
begin
label1.Caption:= booltostr(N.ordenado);
end;

procedure TfrmPrincipal.Sumardig1Click(Sender: TObject);
begin
label1.Caption:= inttostr(N.getSuma_dig);
end;

procedure TfrmPrincipal.DigIguales2Click(Sender: TObject);
begin
if N.iguales = True  then
  Label1.Caption:='Son Iguales'
else
Label1.Caption:= 'No son Iguales' ;
end;


procedure TfrmPrincipal.ContarDig2For1Click(Sender: TObject);
var s:String;
begin
if (N.ordenado = True ) then
s:= 'Si'
else
s:= 'No';
Label1.Caption:= s ;
end;



procedure TfrmPrincipal.DigitosIguales1Click(Sender: TObject);
var s: string;
begin
if N.iguales = true then
s:= 'Si'
else
s:= 'No';
Label1.Caption:= s;
end;

procedure TfrmPrincipal.N2Click(Sender: TObject);
begin
N.Eliminar_Pos(StrToInt(Pos1.Text));
end;

procedure TfrmPrincipal.EstaOrdenado1Click(Sender: TObject);
begin
 if N.ordenado = true then
   ShowMessage('Si')
 else
 ShowMessage('No') ;
end;

procedure TfrmPrincipal.Esprimo1Click(Sender: TObject);
var s: string;
begin
if N.isPrimo(StrToInt(Edit1.Text)) = true then
s:='Si'
else
s:= 'No' ;
Label1.Caption:= s;
end;
procedure TfrmPrincipal.NroMayor1Click(Sender: TObject);
begin
Label1.Caption:=  IntToStr(N.getDig_May_P(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.NumeroMarRepetido1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.mayor_frec);
end;


procedure TfrmPrincipal.UnnumeroenotroNum1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.un_Nro_en_otro(StrToInt(Dig1.Text)));
end;

procedure TfrmPrincipal.Nroiguales1Click(Sender: TObject);
var s: string;
begin
if N.nro_iguales_P(StrToInt(Edit1.Text)) = true then
s:='Si'
else
s:= 'No' ;
Label1.Caption:= s;
end;

procedure TfrmPrincipal.OrdenarAscendente1Click(Sender: TObject);
begin
N.ordenar_Asc;
end;

procedure TfrmPrincipal.PosdelDigito1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getPos_nro(StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.Power1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.power_Create);
end;

procedure TfrmPrincipal.SepararNumRepetidos1Click(Sender: TObject);
begin
N.separar_nro_rep;
end;

procedure TfrmPrincipal.SumadeDigitos1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getSuma_dig);
end;

procedure TfrmPrincipal.Posicioninicial1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getPos_inicial(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.burbuja1Click(Sender: TObject);
begin
N.burbuja;
end;
procedure TfrmPrincipal.Natural1Click(Sender: TObject);
begin
Label1.Caption:= N.a_literal;
end;

procedure TfrmPrincipal.Romanos1Click(Sender: TObject);
begin
Label1.Caption:= N.a_literal_Romano;
end;

procedure TfrmPrincipal.AbaseN1Click(Sender: TObject);
begin
Label1.Caption:= N.a_baseN(StrToInt(Edit1.Text));
end;

procedure TfrmPrincipal.Octal1Click(Sender: TObject);
begin
Label1.Caption:= N.a_octal;
end;

procedure TfrmPrincipal.NroRepetidos1Click(Sender: TObject);
begin
N.nro_repetidos;
end;

procedure TfrmPrincipal.MostraDigdeposInversa1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getPos_dig_invertido(StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.SubMayordeDigitos1Click(Sender: TObject);
begin
Label1.Caption:= N.Sub_Nro_Mayor(StrToInt(Dig1.text));
end;

procedure TfrmPrincipal.SegundoMayor1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.segundo_May(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.Freduencia1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr( n.frecuencia(StrToInt(Dig1.Text)));
end;

procedure TfrmPrincipal.CantidaddenumerosIguales1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr( N.cant_dig_iguales_P(StrToInt(Edit1.Text),StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.CantidaddefrecuenciaMayor1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.cant_frec_may(StrToInt( Edit1.Text)));
end;

procedure TfrmPrincipal.Nrodefrecuecimsy1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.dig_may_frec(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.OrdenarPorfrecuencia1Click(Sender: TObject);
begin
N.ordenar_frecuencia;
end;

procedure TfrmPrincipal.CantidaddeDigitosIguales1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.cant_digIguales_juntos);
end;

procedure TfrmPrincipal.Solopares1Click(Sender: TObject);
begin
N.pares;
end;

procedure TfrmPrincipal.NuevoNumero1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.obtener_nro_nuevo(StrToInt(Edit1.Text),StrToInt(Dig1.Text)));
end;

procedure TfrmPrincipal.invertirParm1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.reconstruir(StrToInt( Edit1.text)));
end;

procedure TfrmPrincipal.Binario1Click(Sender: TObject);
begin
Label1.Caption:= N.a_Binario_P(StrToInt(Edit1.Text));
end;

procedure TfrmPrincipal.Hexad1Click(Sender: TObject);
begin
Label1.Caption:= N.a_hexadec_P(StrToInt( Edit1.text));
end;

procedure TfrmPrincipal.CantdeDig1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.getCantidad_Dig_P(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.Dignd1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.eliminar_dig_P(StrToInt(Edit1.Text),StrToInt(Dig1.Text)));
end;

procedure TfrmPrincipal.Posnpos1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.eliminar_pos_P(StrToInt(Edit1.Text),StrToInt(Pos1.Text)));
end;

procedure TfrmPrincipal.NrosUnicosn1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.nro_unicos_P(StrToInt(Edit1.Text)));
end;

procedure TfrmPrincipal.NumeroPar1Click(Sender: TObject);
begin
N.getDig_par;
end;

procedure TfrmPrincipal.NumeroImpar1Click(Sender: TObject);
begin
N.getDig_impar;
end;

procedure TfrmPrincipal.ParesimparesSeparados1Click(Sender: TObject);
begin
 Label1.Caption:= N.Paris_Impares;
end;

procedure TfrmPrincipal.Mul111Click(Sender: TObject);
begin
 Label1.Caption:= IntToStr(n.Multiplicar_por_11(StrToInt( Dig1.Text),StrToInt(Dig2.Text)));
end;

procedure TfrmPrincipal.Unnumeroenotro1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.un_Nro_en_otro(StrToInt( Dig1.Text)));
end;

procedure TfrmPrincipal.Soniguales1Click(Sender: TObject);
begin
if N.Son_Iguales(StrToInt(Edit1.Text), StrToInt (Dig1.text)) = true then
Label1.Caption:= 'Son iguales '
else
Label1.Caption:= 'NO Son iguales ' ;
end;

procedure TfrmPrincipal.Secuencia1Click(Sender: TObject);
begin
Label1.Caption:= N.Secuencia(StrToInt( Edit1.Text));
end;

procedure TfrmPrincipal.Potenciabp1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.potencia(StrToInt(Dig1.Text), StrToInt(Dig2.Text)));
end;

procedure TfrmPrincipal.BinarioDecimal1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(N.Binario_Decimal(Edit1.Text));
end;

procedure TfrmPrincipal.Decimalbinario1Click(Sender: TObject);
begin
Label1.Caption:= N.Decimal_Binario(Edit1.Text);
end;

procedure TfrmPrincipal.ConvaBaseN1Click(Sender: TObject);
begin
Label1.Caption:= N.a_baseN(StrToInt(Dig1.Text));
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
  Label1.Caption:= IntToStr(N.getgetDig_impares_P(StrToInt(Edit1.Text)));
end;

end.
