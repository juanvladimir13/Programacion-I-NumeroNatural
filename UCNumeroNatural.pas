unit UCNumeroNatural;

interface
  type
      NumeroNatural = Class
    Private
      Valor : Cardinal;
    Public
        Constructor Create;
        Function getCantidad_Dig_Ps : Byte;
        Procedure eliminar_Ult_dig;
        Function Obtener_Valor : Cardinal;
//------------------------------------------------------------------------------
        function a_binario:string;
        function a_binario_P(N:Cardinal):String;
        function a_hexadec():string;
        Function a_hexadec_P(N:Cardinal):String;
        function getDig_menor(N:Cardinal):Byte;
        function getDig_pos (p:Byte): Byte;
        function getCantidad_Dig_P (x: Cardinal): Byte;
        function iguales:Boolean;
        function getgetDig_impares_P (N:Cardinal):Cardinal;
        function getgetDig_pares_P (N:Cardinal):Cardinal;
        Procedure getDig_impar;
        Procedure getDig_par;
        function eliminar_dig_P (x: cardinal; d: byte): cardinal;  // f
        Function eliminar_pos_P (x: cardinal;p:byte): cardinal;         // f
        Function isPrimo(N: Cardinal): Boolean;
        function ordenado: Boolean;
        function reconstruir (X: cardinal):cardinal;
        function getDig_May_P (x:cardinal):byte;
        function getPos_dig(d:byte): byte;
        Function mayor_frec:byte;
        Function cant_Consec_Par: byte;             // aqui
        Function cant_Dig_igual_juntos: byte;        //??
        Function nro_perfecto: boolean;
        Function nro_iguales_P (n:cardinal): boolean; //  ???
        function nro_unicos_P (n:cardinal):cardinal;
        function getDig_May:Cardinal;
        Function getPrimer_Dig: Byte;  // ??
        Function getUltimo_Dig : Cardinal;  //??
        Function getPos_dig_P (x: cardinal; d: byte): byte;
        function getPos_nro (P: byte): byte;
        function power_Create:Cardinal;
        function getSuma_dig :byte;
        Function un_Nro_en_otro(n:cardinal):byte;      //-----------------------
        function getPos_inicial (n: cardinal): byte;
        procedure setDig_final (N: Cardinal);
        procedure setDig_inicio (p:byte);
        Procedure Cambiar_Valor( N : Cardinal);
        procedure eliminar_Dig_pos (d:byte);
        procedure eliminar_Dig (d:byte);
        Procedure Eliminar_Num_Primos;  //
        procedure Eliminar_Pos(p: byte); //
        procedure setDig_pos (d:byte;p:byte);
        procedure intercambiar_2pos (p1:byte;p2:byte);
        Procedure invertir;
        Procedure nro_unicos;
        Procedure ordenar_Asc;
        Procedure ordenar_frecuencia;    //
        Procedure separar_nro_rep;
        Procedure burbuja;
        // ...................conversiones........................
         function  unidades(n:integer):string;
         function  decenas(n:integer):string;
         function  Decimales(n:integer):string;
         function  centenas(n:integer):string;
         function  mil(n:integer):string;
         function  a_literal:string;
         function  unidades_Romanos(u:integer):string;
         function  decenas_Romanos(dl:integer):string;
         function  decenas_Romanos2(d:integer):string;
         function  centenas_Romanos(c:integer):string;
         function  mil_romanos(m:integer):string;
         function  a_literal_Romano:string;
         function  a_octal():string;
         function  a_baseN(n:integer):string;
         //......................Pruebas..........................
         Procedure eliminar_ceros;
         Procedure nro_repetidos;
         function getPos_dig_invertido(p:byte): byte;
         Function Sub_Nro_Mayor(d:Byte):String;
         Function getDig_men_P(x:Integer):Byte;
         Function segundo_May (a:Integer):Integer;
         Function menor_de_2Nro(a,b:Integer):Integer;
         Function mayor_de_2Nro (a,b:Integer):Integer;
         Function menor_de_3 (a,b,c:Integer):Integer;
         Function mayor_de_3(a,b,c:Integer):Integer;
         Function is_Par(a:Integer):Boolean;
         Function is_Impar (a:Integer):Boolean;
         Function frecuencia(nr:Integer):Word;
         Function cant_dig_iguales_P(n, c:Integer):Integer;
         Function cant_frec_may (N:Integer):Integer;
         Function dig_may_frec (N:Integer):Byte;
         Function cant_digIguales_juntos:Word;
         Function obtener_nro_nuevo(N,d:Integer):Integer;
         Procedure pares;
         function multiplos(m, n: Integer): Boolean;
         function cant_dig_Reales (x: Real): byte;
         //---------------------------------------------------------------------
         Function Paris_Impares:string;
         Function Multiplicar_por_11(d,n:Word):Cardinal;
         Function Son_Iguales(a,b:Word):Boolean;
         Function Secuencia (d:Word): string;
         Function Ecuacion_2_Grado (a,b,c:Real):String;
         function potencia(b,p : Byte):Cardinal;
         function Binario_Decimal(cadbin : string):Cardinal;
         function Decimal_Binario(caddiez : string): string;
         Function Base_N (base:Word):String;

    end;

implementation
uses SysUtils, Math;
{ NumeroNatural }

procedure NumeroNatural.setDig_final(N: Cardinal);
begin
end;

procedure NumeroNatural.setDig_inicio(p: byte);
var N,a,c: Cardinal;
begin
N:= Valor;
a:= trunc (power (10,getCantidad_Dig_Ps));
c:= a * p;
Valor:= c + N;
end;

function NumeroNatural.getPos_Dig(d: Byte): Byte;
var r,c: Byte;  N: Cardinal;
begin
c:= 0;
N:= Valor;
 while (N > 0)do
  begin
  r:= N mod 10;
  N:= N div 10;
  inc(c);
   if (d = r) then
    begin
      N:= 0;
    end;
   end;
Result:= c;
end;

function NumeroNatural.a_binario: string;
var cad:String; dig:Byte; N : Cardinal;
begin
   cad:='';
   N:= Valor;
   while(N<> 0)do
    begin
      dig:= N mod 2;
      N:= N div 2;
      cad:=Char(48 + dig)+ cad;
    end;
   result:=cad;
end;

function NumeroNatural.a_hexadec: string;
var  dig:Byte;   cad:string; N:Cardinal;
begin
    cad:='';
    N:= Valor;

    while(N<>0)do
      begin
        dig:= N mod 16;
        N:= N div 16;
        case(dig)of
            1..9:
                cad:=char(48+dig)+cad;
            10..15:
                cad:=char(55+dig)+cad;
         end;
      end;
    result:=cad;
end;

procedure NumeroNatural.Cambiar_Valor(N: Cardinal);
begin
    Valor:=N;
end;

function NumeroNatural.getCantidad_Dig_P(x: Cardinal): Byte;
var c: Byte;
begin
  c:= 0;
   while x > 0 do
    begin
     x:= x div 10;
     inc(c);
    end;
  result:= c;
end;

function NumeroNatural.getCantidad_Dig_Ps: Byte;
var   C : Byte;    N : Cardinal;
begin
     N:=Valor; C:=0;
     While N> 0 Do
     Begin
          N:=N Div 10;
          C:=C+1;
     end;
     Result:=C;
end;

constructor NumeroNatural.Create;
begin
 Valor:=0;
end;

procedure NumeroNatural.eliminar_Dig_pos(d: byte);
var x: cardinal; z: cardinal; i,p,r: byte;
begin
z:= 0; p:= d;
x:= reconstruir(Valor);
 while x > 0 do
  begin
   for i:= 1 to p-1 do
    begin
      r:= x mod 10;
      x:= x div 10;
      z:= z * 10 + r;
     end;
     x:= x div 10;
    while x > 0 do
     begin
      r:= x mod 10;
      x:= x div 10;
      z:= z * 10 + r;
     end;
    end;
  Valor:= (z);
end;

function NumeroNatural.getDig_menor(N:Cardinal): byte;
var m,r: byte;
begin
  m:=10;
    while N > 0 do
     begin
      r:= N mod 10;
      N:= N div 10;
       if r < m then
        m:= r;
       end;
  Result:= m;
end;

function NumeroNatural.iguales: Boolean;
var N:Cardinal; res,res1: Byte; sw:Boolean;
begin
 N:= Valor;
 sw:= true;
 res1:= 0;
if (N > 9) then
begin
  while (N > 0) do
  begin
    res := N mod 10;
    N := N div 10;
      if ( N > 0) then begin
          res1 := N mod 10;
          // N := N div 10;
      end;
      if (res <> res1) then begin
          sw:= False;
          N:= 0;
      end;
  end;
end;
Result:= sw;
end;

function NumeroNatural.getgetDig_impares_P(N: Cardinal): Cardinal;
var r,d,res:Byte;
begin
res:=0;
d:= getCantidad_Dig_P(N)-1;
     while N > 0 do
      begin
        r:= N div (potencia(10,d));
        N:= N mod (potencia(10,d));
        dec(d);
          if (r mod 2 <> 0) then begin
            res:= res *10 + r;
          end;
      end;
    Result:= res;
end;

function NumeroNatural.getgetDig_pares_P(N: Cardinal): Cardinal;
var d:Byte; res,r:Cardinal;
begin
res:= 0;
d:= getCantidad_Dig_P(N)-1;
 while N > 0 do
 begin
   r := N div (potencia(10,d));
   N := N mod (potencia(10,d));
   dec(d);
  if (r mod 2 = 0) then
   res:= res * 10 + r;
  end;
Result:= res;
end;


procedure NumeroNatural.eliminar_Dig(d: byte);
var r: byte;  z: cardinal;
begin
z:= 0;
  while Valor > 0 do
    begin
     r:= Valor mod 10;
     Valor:= Valor div 10;
      if d <> r then
       z:= z * 10 + r;
      end;
  valor:= reconstruir (z);
end;

function NumeroNatural.eliminar_dig_P (x: cardinal;d: byte): cardinal;
var   r: byte;  z: cardinal;
begin
z:= 0;
 begin
  while x > 0 do
  begin
   r:= x mod 10;
   x:= x div 10;
    if d <> r then
    z:= z * 10 + r;
    end;
  result:= reconstruir(z);
end;
end;

procedure NumeroNatural.Eliminar_Pos(p: byte);
var  z: cardinal; i,r: byte;
begin
z:= 0;
while Valor > 0 do
begin
  for i:= 1 to p-1 do
   begin
    r:= Valor mod 10;
    Valor:= Valor div 10;
    z:= z * 10 + r;
   end;
Valor:= Valor div 10;
  while Valor > 0 do
    begin
     r:= Valor mod 10;
     Valor:= valor div 10;
     z:= z * 10 + r;
    end;
  end;
Valor:= reconstruir (z);
end;

function NumeroNatural.eliminar_pos_P (x: cardinal; p: byte): cardinal;
var z: cardinal; i,r: byte;
begin
z:= 0;
if ((p <= getCantidad_Dig_P(x)) and (p > 0)) then begin
 while x > 0 do
  begin
   for i:= 1 to p-1 do
    begin
      r:= x mod 10;
      x:= x div 10;
      z:= z * 10 + r;
     end;
     x:= x div 10;
    while x > 0 do
     begin
      r:= x mod 10;
      x:= x div 10;
      z:= z * 10 + r;
     end;
    end;
  result:= reconstruir (z);
end else raise Exception.Create('Posicion Fuera de rango');
end;

procedure NumeroNatural.Eliminar_Num_Primos;
var N,d,a: Cardinal;
begin
 N:= Valor;   a:=0;
 while N > 0  do
  begin
   d:= N mod 10;
   N:= N div 10;
   if d in [4,6,8,9,0] then
     a:= a * 10 ;
     a:= a + d;
   end;
 Valor:= reconstruir(a);
 end;




procedure NumeroNatural.setDig_pos(d, p: byte);
var z: cardinal; i,r: byte;
begin
z:= 0;
 for i:= 1 to p-1 do
  begin
    Valor:= reconstruir(Valor);
    r:= valor mod 10;
    valor:= valor div 10;
    z:= z * 10 + r;
  end;
   z:= z * 10 +d;
    while Valor > 0 do
     begin
      r:= valor mod 10;
      valor:= valor div 10;
      z:=  z * 10 + r;
     end;
  valor:= (z);
end;

procedure NumeroNatural.intercambiar_2pos(p1, p2: byte);
var  x,z: cardinal;  i,d,d2,r,c: byte;
begin
z:= 0;
x:= reconstruir (valor);
c:= getCantidad_Dig_Ps;
  if (p1 <  p2) and( p2 <= c) then
    begin
     d:= getPos_dig (p1);
     d2:= getPos_dig (p2);
  for i:= 1 to c do
   begin
    r:= x mod 10;
    x:= x div 10;
      if i <> p1 then
       z:= z * 10 +r;
        if i = p1 then
         begin
          z:= z * 10 + d2;
          p1:= p2;
          d2:= d;
         end;
        end;
      valor:=(z);
  end;
end;

function NumeroNatural.reconstruir(X: cardinal): cardinal;
var z: cardinal;  r: byte;
begin
 z:= 0;
  while x > 0 do
   begin
    r:= x mod 10;
    x:= x div 10;
    z:= z * 10 + r;
   end;
  result:= z;
end;

procedure NumeroNatural.invertir;
var   N,C : Cardinal;   d   : Byte;
begin
   N:=Valor;C:=0;
     While N> 0 Do
       Begin
          d:= N Mod 10;
          C:=C*10+d;
          N:=N Div 10;
       End;
     Valor:=C;
end;

function NumeroNatural.getDig_May_P(x: cardinal): byte;
var m,r: byte;
begin
 m:= 0;
  while x > 0 do
   begin
    r:= x mod 10;
    x:= x div 10;
     if r > m then
      m:= r;
     end;
  result:= m;
end;

function NumeroNatural.getDig_pos(p: Byte): Byte;
var i,r,c: byte; x: cardinal;
begin
c:= getCantidad_Dig_Ps; r:= 0; // x:= reconstruir(Valor);
x:= Valor;
 if c >= p then
  begin
   for i:= 1 to p do
    begin
     r:= x mod 10;
     x:= x div 10;
    end;
    result:= r ;
    end else raise Exception.Create('Posicion fuera de rango');
end;

function NumeroNatural.mayor_frec: byte;
var N,d,c,r:Cardinal;  frec:Byte;
begin
 N:= Valor;  c:=0; r:=0;
 while N > 0 do
 begin
  d:= N mod 10;
  N:= N div 10;
  frec:= frecuencia(d);
   if (frec > c) then begin
      c:= frec; r:= d;
   end;
 end;
 Result:= r;
end;

function NumeroNatural.cant_Consec_Par: byte;
var d,r,c : byte; x: cardinal;
begin
x:= Valor; c:= 0;
r:= x mod 10; x:= x div 10;
  while x > 0 do
   begin
    d:= x mod 10;
     if (r mod 2 = 0)and(d mod 2 = 0)then
      c:= c + 1; r:= d;
      x:= x div 10;
     end;
  result:= c;
end;

function NumeroNatural.cant_Dig_igual_juntos: byte;
var r,c,d: byte;  x: cardinal;
begin
x:= Valor;
r:= x mod 10; x:= x div 10;
c:= 0;
 while x > 0 do
  begin
   d:= x mod 10;
    if r = d then
      begin
      inc(c);
      while r = d do
        begin
         x:= x div 10;  d:= x mod 10;
        end;
       end;
        r:= d;
        x:= x div 10;
     end;
  result:= c;
end;


function NumeroNatural.nro_perfecto: boolean;
var r,i,x: cardinal;  c: boolean;
begin
x:= Valor;
c:= False;
r:= 0;
 for i:= 1 to x-1 do
  begin
   if x mod i = 0 then
    r:= r + i;
   end;
    if r <> x then
      c:= True;
      result:= c;
end;

procedure NumeroNatural.nro_unicos;
var N,z,f: cardinal;  r: byte;
begin
z:= 0;  N:= reconstruir(Valor);
  while N > 0 do
   begin
    r:= N mod 10;
    N:= N div 10;
    f:=frecuencia(r);
    if (f=1) then
    begin
     z:= obtener_nro_nuevo(z,r);
    end;
    N:= eliminar_dig_P (N,r);
   end;
  Valor:= z;
end;

function NumeroNatural.nro_unicos_P(n: cardinal): cardinal;
var z: cardinal;  r: byte;
begin
z:= 0;
  while n > 0 do
   begin
    r:= n mod 10; n:= n div 10;
    z:= z * 10 + r;
    n:= eliminar_dig_P(n,r);
   end;
  result := reconstruir (z);
end;

function NumeroNatural.getDig_May: Cardinal;
var  aux,may,dig:integer;
begin
aux:=Valor;
may:=0;
 while(aux<>0)do
  begin
   dig:=aux mod 10;
   aux:=aux div 10;
    if(may<dig)then
     may:=dig ;
    end;
 result:=may;
end;

function NumeroNatural.Obtener_Valor: Cardinal;
begin
     Result:=Valor;
end;

procedure NumeroNatural.ordenar_Asc;
var s:String; N:Cardinal;
begin
{c:= Cadena.Create;
N:= Valor;
s:= IntToStr(N);
c.Cargar(s);
c.burbuja ;
c.invertir_Caracteres;
s:= c.Obtener_Cadena;
Valor:= StrToInt(s);    }
end;

procedure NumeroNatural.ordenar_frecuencia;
begin

end;

function NumeroNatural.getPos_nro(P: byte): byte;
var m, d: Cardinal; c: byte;
begin
c:= 0 ;   d:= 0;
m:= reconstruir(Valor);
if (P <= getCantidad_Dig_Ps) then
 begin
   while p <> c do
    begin
     d:= m mod 10;
     m:= m div 10;
     inc (c);
   end;
  Result:= d
end else
Result:= 0;
end;

function NumeroNatural.getPos_dig_P(x: cardinal; d: byte): byte;
var r,c: byte;
begin
c:= 0;  valor:= x;
if (frecuencia(d)> 0) then
 begin
  while x > 0 do
   begin
    r:= x mod 10;
    x:= x div 10;
    c:= c + 1;
     if r = d then
      x:= 0;
     end;
 end;
  Result:= c;
end;

function NumeroNatural.power_Create: Cardinal;
var a,b,i,s,j,u: Cardinal;
begin
    repeat
    a:= getCantidad_Dig_Ps;
    b:= 10;
    until a > 0 ;
    i:= 2;
    u:= b;
    while i <= a do
      begin
      s:= 0;
      j:= 1;
        while j<= b do
          begin
          s:= s + u;
          j:= j + 1;
          end;
          u:= s;
          i:= i + 1;
        end;
        Result:= u div 10 ;

end;

function NumeroNatural.getPrimer_Dig: Byte;
var d: cardinal;
begin
    if  Valor > 9 then
     d:= Valor mod 10
    else raise Exception.Create ('Cantidad de dig ');
     Result := d;
end;

function NumeroNatural.ordenado: Boolean;
var N: Cardinal; d,e:Byte; sw:Boolean;
begin
  N:= Valor;
  sw:= True;
  while (N > 0) do
  begin
    d:= N mod 10;
    N:= N div 10;
    if (N > 0) then
    begin
      e:= N mod 10;
        if (d < e) then begin
          sw:= false;
          N:= 0;
        end;
    end;
  end;
Result:= sw;
end;

function NumeroNatural.isPrimo(N:Cardinal): Boolean;
var i: byte;  sw: boolean;
begin
    sw:= True;
    for i:= 2 to (N div 2) do
     begin
      if (N mod i = 0) then
        sw:= False;
      end;
  result:= sw;
end;


procedure NumeroNatural.separar_nro_rep;
var z,x: cardinal;  c,r: byte;
begin
z:= 0;
x:=  Valor;
while x > 0 do
 begin
  r:= x mod 10;
  x:= x div 10;
  c:= getCantidad_Dig_P (r);
    if c = 1 then
     begin
      z:= z * 10 + r;
      eliminar_Dig_pos (r);
     end;
    end;
end;

function NumeroNatural.nro_iguales_P(n: cardinal): boolean;
var r2,x:cardinal;   c: boolean;
begin
c:= true;
nro_unicos;
 x:= valor;
  r2:= nro_unicos_P (n);
  if (x = r2)or(x = reconstruir (r2)) then
   c:= false;
   result:= c;
  end;

function NumeroNatural.getSuma_dig: byte;
var x,c: cardinal;  r: byte;
begin
c:= 0;
x:= Valor;
 while x > 0 do
  begin
    r:= x mod 10;
    x:= x div 10;
    c:= c + r;
  end;
result:= c;
end;

function NumeroNatural.getUltimo_Dig: Cardinal;
var N: Cardinal;
begin
   N:= Valor;
   N:= N mod 10;
   Result:= N;
end;

function NumeroNatural.un_Nro_en_otro(n: cardinal): byte;
var c,c2,g: byte; r,x: cardinal;
begin
c:= getCantidad_Dig_Ps;
c2:= getCantidad_Dig_P (n);
g:= 0; x:= Valor;
if c2 <= c then
 begin
   while x > 0 do
    begin
      r:= x mod trunc(power(10,c2));
      x:= x div 10;
        if r = n then
          g:=  g + 1;
        end;
    end;
result:= g;
end;

function NumeroNatural.getPos_inicial(n: cardinal): byte;
var x,r: cardinal;  c,cn,g,j:byte;
begin
x:= Valor;
c:= getCantidad_Dig_P (x);
cn:= getCantidad_Dig_P (n);
r:= 0; g:= 0; j:= 0;
while (c >= cn) and (r <> n) do
  begin
    r := x mod trunc(power(10,cn));
    g:= g +1;
    x:= x div 10;
    c:= c -1;
     if r= n then
      j:= g;
     end;
   result:= j;
 end;

procedure NumeroNatural.burbuja;
var  N: Integer;  s: string;
begin
{c:= Cadena.Create;
N:= Valor;
s:= IntToStr(N);
c.Cargar(s);
c.burbuja;
s:= c.Obtener_Cadena;
Valor:= StrToInt(s);}
end;

procedure NumeroNatural.eliminar_ceros;
var N,a:Cardinal; d:Byte;
begin
a:= 0;
N:= reconstruir(Valor);
while N > 0 do
 begin
  d:= N mod 10;
  N:= N div 10;
if d <> 0 then
  a:= a * 10 + d;
end;
  Valor:=a;
end;


procedure NumeroNatural.nro_repetidos;
var c,a,i,N,d: Cardinal;
begin
a:= 0;
N:= Valor;
 While (N > 0) do
  begin
   c:= getCantidad_Dig_P(N);
   d:= N mod 10;
    begin
     i:= 2;
    while i <= c do
     begin
      a := getPos_dig_invertido(i);
      i:= i + 1;
      if a = d then
       a:= a * 10 + d
      end;
     N:= N div 10;
    end;
   end;
Valor:= a;
end;


function NumeroNatural.getPos_dig_invertido(p: byte): byte;
var i,r,c: byte; x: cardinal;
begin
c:= getCantidad_Dig_Ps; r:= 0;
x:= Valor;
 if c >= p then
  begin
   for i:= 1 to p do
    begin
     r:= x mod 10;
     x:= x div 10;
    end;
    result:= r ;
    end
  else
  result:= 0;
end;

function NumeroNatural.Sub_Nro_Mayor(d:Byte): String;
var  r,N, a,m: Cardinal;
begin
N:= Valor; m:= 0;
a:= trunc (power (10,d));
if (d = 2) then
  begin
  while (N > 0) do
   begin
   r:= N mod a;
   N:= N div a;
   if r > m then
   m:= r;
   end;
   Result:= IntToStr(m);
   end
else
  N:= N div d * 10 ;
  while N > 0 do
   begin
   r:= N mod a;
   N:= N div a;
   if r > m then
   m:= r;
   end;
   Result:= IntToStr(m);
end;

function NumeroNatural.segundo_May(a: Integer): Integer;
var b,c,x,y:Integer;
begin
x:=0; y:=0;
 c:= getDig_May_P(a);
 while a > 0 do
 begin
  b:= a mod 10;
  a:= a div 10;
   if b <> c then
    begin
    x:= x * 10 + b;
    end;
  y:= reconstruir(x);
 end;
Result:= getDig_May_P(y);
end;

function NumeroNatural.getDig_men_P(x: Integer): Byte;
var m,r: byte;
begin
 m:= 9;
  while x < 0 do
   begin
    r:= x mod 10;
    x:= x div 10;
     if r <= m then
      m:= r;
     end;
  result:= m;
end;

function NumeroNatural.menor_de_2Nro(a, b: Integer): Integer;
begin
 if a < b then
 begin
 Result:= a
 end
 else
 begin
 Result:= b;
 end;
end;

function NumeroNatural.mayor_de_2Nro(a, b: Integer):Integer;
begin
 if a > b then begin
 Result:= a;
 end  else begin
 Result:= b;
 end;
end;

function NumeroNatural.menor_de_3(a, b, c:Integer): Integer;
begin
Result:= menor_de_2Nro(menor_de_2Nro(a,b),c);
end;

function NumeroNatural.mayor_de_3(a, b, c: Integer): Integer;
begin
Result:= mayor_de_2Nro(mayor_de_2Nro(a,b),c);
end;

function NumeroNatural.is_Impar(a: Integer): Boolean;
var sw:Boolean;
begin
 if not is_Par(a) then
 begin
 sw:= True;
 end
 else
 begin
  sw:= False;
 end;
Result:= sw;
end;

function NumeroNatural.is_Par(a: Integer): Boolean;
var sw:Boolean;
begin
 if abs(a) mod 2 = 0  then
  sw:= True
 else
  sw:= False;
Result:= sw;
end;
function NumeroNatural.frecuencia(nr: Integer): Word;
var d,cont:Word; N:Cardinal;
begin
N:= Valor;  cont:=0;
 while (N > 0)  do
 begin
  d:= N mod 10;
  N:= N div 10;
  if d = nr  then
  begin
   inc(cont);
  end;
 end;
Result:= cont;
end;

Function  NumeroNatural.cant_dig_iguales_P(n, c:Integer):Integer;
var  i: Word; d,b:Integer;
begin
if c > 1 then
 begin
 i:= 1; d:= n;
  while i<= c-1 do
   begin
   b:= trunc (power(10,i));
   d:= b * n + d;
   inc(i);
  end;
 Result:=d;
 end
 else begin
Result:= n;
end;
end;

function NumeroNatural.cant_frec_may(N: Integer): Integer;
var may, f,d: Integer;
begin
N:= Valor; may:= 0;
 while N > 0 do
 begin
  d:= N mod 10;  N:= N div 10;
  f:= frecuencia(d);
  if f> may then
  begin
    may := f;
  end;
 end;
Result:= may;
end;

function NumeroNatural.dig_may_frec(N: Integer): Byte;
var   may, f,d: Integer;   p,q: Byte;
begin
N:= Valor; may:= 0;  p:=0;  q:=0;
 while N > 0 do
 begin
  d:= N mod 10;  N:= N div 10;
  f:= frecuencia(d);
  inc(p);
  if f > may then
  begin
    may := f;
   q:= getPos_dig_invertido(p);
  end;
 end;
Result:= q;
end;

function NumeroNatural.cant_digIguales_juntos: Word;
var i,a,d:Word; s: string;   N:Integer;
begin
{i:=0; s:= '00';
cad:= Cadena.Create;
cad.Cargar(IntToStr(Valor));
cad.burbuja;
N:= Valor;
while N > 0 do
 begin
  d:= N mod 10;
  a:= frecuencia(d);
   if (cad.una_en_otra(s) = true) then
    begin
     inc(i);
    end;
     if a > 1 then begin
       s:= IntToStr( cant_dig_iguales_P(d,a));
     end;
     N:= eliminar_dig_P(N,d);
   end;}
Result:= 2; //i
end;

function NumeroNatural.obtener_nro_nuevo(N, d: Integer): Integer;
var x:Integer; s: string;
begin
 if (N > 0) and (d > 0)then
 begin
  Result:= N * 10 + d;
 end
 else
 begin
  s:= IntToStr(N);
  x:= StrToInt( s+'0');
  Result:= x;
 end;
end;

procedure NumeroNatural.pares;
var N,m,d:Integer;
begin
 N:= reconstruir(Valor); m:=0;
 while N > 0 do
  begin
    d:= N mod 10;
    N:= N Div 10;
    if ( d mod 2 = 0 )then
    begin
     m:= obtener_nro_nuevo(m,d);
    end;
  end;
Valor:= m;
end;

procedure NumeroNatural.eliminar_Ult_dig;
begin
 if (Valor > 9) then
    Valor:= Valor div 10
 else
    Valor:=0;
end;

//------------------------------CONVERSIONES------------------------------------
function NumeroNatural.a_literal:string;         //a literal
var
    cad:string;
begin
    cad:='';
   if(valor In[20,30,40,50,60,70,80,90])then begin
     cad:=Decimales(valor div 10);
   end else begin
    case(valor)of
        0:cad:='cero';
        1..9:cad:=unidades(valor);
        10..19:cad:=decenas(valor);
        20..99:cad:=Decimales(valor div 10)+' y '+ unidades(valor mod 10);
        100..999:cad:=centenas(valor);
        1000..9999:cad:=mil(valor);
    else
    cad:='fuera de rango';
    end;
    end;
    result:=cad;
end;

function NumeroNatural.unidades(n:integer):string;      //unidades
var cad:string;
begin
    //n:=valor;
    cad:='';
    case(n)of
1:cad:='uno';    2:cad:='dos';   3:cad:='tres';
4:cad:='cuatro'; 5:cad:='cinco'; 6:cad:='seis';
7:cad:='siete';  8:cad:='ocho';  9:cad:='nueve';
    end;
    result:=cad;
end;

function NumeroNatural.Decimales(n:integer):string;    //decenas
var    cad:string;
begin
    cad:='';
    case(n )of
            2:cad:='veinte';
            3:cad:='treinta';
            4:cad:='cuarenta';
            5:cad:='cincuemta';
            6:cad:='sesenta';
            7:cad:='setenta';
            8:cad:='ochenta';
            9:cad:='noventa';
     end;
     result:=cad;
 end;

function NumeroNatural.decenas(n:integer):string;   //decenas
var     cad,cad1,cad2:string;
begin
    cad:='';
    cad1:=unidades(n mod 10);
    cad2:=Decimales(n div 10);
    case(n)of
      0..9:cad:=cad1;
        10:cad:='diez';
        11:cad:='once';
        12:cad:='doce';
        13:cad:='trece';
        14:cad:='catorce';
        15:cad:='quince';
    16..19:cad:='dieci'+ cad1;
        20:cad:=cad2;
    21..29:cad:='veinti'+cad1;
    30..99:cad:=cad2+' y '+cad1;
    end;
    result:=cad;
end;

function NumeroNatural.centenas(n:integer):string; //centenas
var    cad,cad1:string;
begin
     cad:='';
     cad1:=Decimales(n mod 100);
     case(n div 100)of
        1:cad:='ciento';
        2:cad:='doscientos ';
        3:cad:='trescientos ';
        4:cad:='cuatrocientos ';
        5:cad:='quinientos ';
        6:cad:='seiscientos ';
        7:cad:='setecientos ';
        8:cad:='ochocientos ';
        9:cad:='novecientos ';
    end;
      if(n = 100)then
      cad:='cien';
    result:=cad + cad1;
end;

function NumeroNatural.mil(n:integer):string;  //mil
var     cad,cad1:string;
begin
    cad:='';
    cad1:=centenas(n mod 1000);
    case(n div 1000)of
        1:cad:='unmil';
        2:cad:='dosmil';
        3:cad:='tresmil';
        4:cad:='cuatromil';
        5:cad:='cincomil';
        6:cad:='seismil';
        7:cad:='sietemil';
        8:cad:='ochomil';
        9:cad:='nuevemil';
    end;
    result:=cad + cad1;
end;

//Romanos
Function NumeroNatural.unidades_Romanos(u:integer):string;   //unidades romanos
Var     cad:string;
Begin
      cad:='';
      Case( u )of
           1: cad := 'I';
           2: cad := 'II';
           3: cad := 'III';
           4: cad := 'IV';
           5: cad := 'V';
           6: cad := 'VI';
           7: cad := 'VII';
           8: cad := 'VIII';
           9: cad := 'IX';
      end;
    Result:=cad;
end;

Function NumeroNatural.decenas_Romanos(dl:integer):string; //decenas romanos
Var    cad:string;
Begin
      Case( dl )of
           1: cad := 'X';
           2: cad := 'XX';
           3: cad := 'XXX';
           4: cad := 'XL';
           5: cad := 'L';
           6: cad := 'LX';
           7: cad := 'LXX';
           8: cad := 'LXXX';
           9: cad := 'XC';
      end;
      Result:=cad;
end;

function NumeroNatural.decenas_Romanos2(d:integer):string;
var     cad,cad1,cad2 : string;
begin
      cad1:= unidades_Romanos( d mod 10 );
      cad2:= decenas_Romanos( d div 10 );
      case( d )of
           0..9   : cad := cad1;
           10..99 : cad := cad2 + cad1;
      end;
      Result:=cad;
end;

function NumeroNatural.centenas_Romanos(c:integer):string;  //sentenas romanos
var  cad,cad1:string;
begin
      cad1:=decenas_Romanos2( c mod 100 );
      Case ( c div 100 ) of
           1: cad := 'C';
           2: cad := 'CC';
           3: cad := 'CCC';
           4: cad := 'CD';
           5: cad := 'D';
           6: cad := 'DC';
           7: cad := 'DCC';
           8: cad := 'DCCC';
           9: cad := 'CM';
      end;
      If(c = 100)Then
         cad:='C';
      Result := cad + cad1;
end;

function NumeroNatural.mil_romanos(m:integer):string;      //mil romanos
var    cad,cad1:string;    Mi:integer;
begin
      cad1:=centenas_Romanos( m mod 1000 );
      Mi:=( m div 1000 );
         Case( Mi )of
                 1: cad := 'M';
                 2: cad := 'MM';
                 3: cad := 'MMM';
      end;
      Result:=cad + cad1;
end;
function  NumeroNatural.a_literal_Romano:String;        //a literal romanos
var  Letra : string;
begin
    if valor<=65356 then begin
      Case(Valor)of
                      0: Letra:='Cero';
                   1..9: Letra:=unidades_Romanos(Valor);
                 10..99: Letra:=decenas_Romanos2(Valor);
               100..999: Letra:=centenas_Romanos(Valor);
            1000..65356: Letra:=mil_romanos(Valor);
      end;
     end else begin letra:='fuera de rango';end;
     result:=Letra;
end;

function NumeroNatural.a_octal():string;    //convercion a octal
var    aux,dig:integer;    cad:string;
begin
   cad:='';
   aux:=valor;
   while(aux<>0)do
   begin
       dig:=aux mod 8;
       aux:=aux div 8;
       cad:=char(48+dig)+cad;
   end;
   result:=cad;
end;

function NumeroNatural.a_baseN(n:integer):String;   //convercion a base N
var      aux,dig:integer;      cad:String;
begin
    cad:='';
    aux:=valor;
    while(aux<>0)do
    begin
        dig:=aux mod n;
        aux:=aux div n;
        case(dig)of
        0..9:
            cad:=char(48+dig)+cad;
        10..35:
            cad:=char(55+dig)+cad;
        36..61:
            cad:=char(62+dig)+cad;
        end;
    end;
    result:=cad;
end;

function NumeroNatural.a_hexadec_P(N: Cardinal): String;
var  dig:Byte;   cad:string;
begin
    cad:='';
    while(N<>0)do
      begin
        dig:=N mod 16;
        N:=N div 16;
        case(dig)of
            1..9:
                cad:=char(48+dig)+cad;
            10..15:
                cad:=char(55+dig)+cad;
         end;
      end;
    result:=cad;
end;

function NumeroNatural.a_binario_P(N: Cardinal): String;
var cad:String; dig:Byte;
begin
   cad:='';
   while(N<> 0)do
    begin
      dig:= N mod 2;
      N:= N div 2;
      cad:= Char(48 + dig)+ cad;
    end;
    Result:= cad;
end;

procedure NumeroNatural.getDig_par;
var r,d,res:Byte;
begin
res:=0;
d:= getCantidad_Dig_P(Valor)-1;
     while Valor > 0 do
      begin
        r:= Valor div (potencia(10,d));
        Valor:= Valor mod (potencia(10,d));
        dec(d);
          if (r mod 2 = 0) then begin
            res:= res *10 + r;
          end;
      end;
   Valor:= res;
end;

procedure NumeroNatural.getDig_impar;
var r,d,res:Byte;
begin
res:=0;
d:= getCantidad_Dig_P(Valor)-1;
     while Valor > 0 do
      begin
        r:= Valor div (potencia(10,d));
        Valor:= Valor mod (potencia(10,d));
        dec(d);
          if (r mod 2 = 1) then begin
            res:= res *10 + r;
          end;
      end;
   Valor:= res;
end;

function NumeroNatural.multiplos(m, n: Integer): Boolean;
var  p,q:Integer;sw:Boolean;
begin
  p:= m div n ;
  q:= m mod n;
  if  (q = 0) and ((p*n) = m) then begin
  sw:= true
  end else begin
   sw:= false;
  end;
 Result:=sw;
end;


function NumeroNatural.cant_dig_Reales(x: Real): byte;
var c: byte;  s:String;
begin
{cad:= Cadena.Create;
s:=  FloatToStr(x);
c:= cad.Cantidad_D_Char(s);
result:= c;}
end;

function NumeroNatural.Paris_Impares: string;
var N,d,rep,uni,a: Cardinal; x,y:string;
begin
N:= reconstruir( Valor);  uni:= 0;  x:=''; y:='';
 while N > 0 do
 begin
  d:= N mod 10; N:= N div 10;
  if frecuencia(d) > 1 then begin
    a:= frecuencia(d);
    rep:= Multiplicar_por_11(d,a);
    x:= x + IntToStr(rep);
    N:= eliminar_dig_P(N,d);
  end else begin
    uni:= uni * 10 + d;
  end;
 end;
Result:= 'rep'+'__'+ x + 'uni'+ '__'+ IntToStr(uni);
end;

function NumeroNatural.Multiplicar_por_11(d, n: Word): Cardinal;
var i,p:Word;
begin
i:=1; p:=0;
 while i <= n  do
 begin
     p:= p * 10 + d;
     inc(i);
 end;
 Result:= p;
end;

   //* falta la operacion ordenarAsc*/
function NumeroNatural.Son_Iguales(a, b: Word): Boolean;
var x,y,q,p:Word;   sw: Boolean;
begin
 x:= nro_unicos_P(a); y:= nro_unicos_P(b);
//  q:= Ordenar_Ascen(x); p:= Ordenar_Ascen(y);
   if q = p then begin
   sw:= True
   end else begin
   sw:= false;
   end;
 Result:= sw;
end;

function NumeroNatural.Secuencia(d: Word): string;
var a,i: Int64;   b,s: string;
begin
i:= 1 ; s:= '';
 while i <= d do
 begin
  a:= Multiplicar_por_11(i,i+1);
  b:= IntToStr(a);
  s:= s + b;
  inc(i);
 end;
Result:= IntToStr( reconstruir(StrToInt(s))* 10);
end;

function NumeroNatural.Ecuacion_2_Grado(a, b, c : Real): String;
var d, r1, r2:Real;  x,y:String;
begin
x:= ''; y:= '';    r2:=0;
 d:=b*b-4*a*c;
 if d > 0 then
  begin
   r1:=(-b+sqrt(d))/(2*a);
   r2:=(-b-sqrt(d))/(2*a);
  end else
   if d=0 then
    begin
     r1:=(-b)/(2*a);
    end else begin
    r1:=(-b)/(2*a);
    r2:=sqrt(-d)/(2*a);
    end;
  x:= FloatToStr(r1);
  y:= FloatToStr(r2);
Result:= x + '--'+ y;
end;

function NumeroNatural.potencia(b, p: Byte): Cardinal;
var i:Byte; pot: Cardinal;
begin
  pot:=1;
  for i:=1 to p do pot:=pot*b;
  result:=pot;
end;

function NumeroNatural.Binario_Decimal(cadbin: string): Cardinal;
var basediez : Cardinal; i : integer; cad : string;
begin
  basediez:=0;
  for i:=length(cadbin) - 1 downto 0 do
    begin
      cad:=copy(cadbin, length(cadbin) - i, 1);
      basediez:=basediez + StrToInt(cad)*potencia(2,i);
    end;
  result:=basediez;
end;

function NumeroNatural.Decimal_Binario(caddiez: string): string;
var n : Integer;
    binario : string;
begin
  n:=StrToInt(caddiez);
  binario:= '';
  repeat
    binario:=IntToStr(n Mod 2) + binario;
    n:=n div 2;
  until n < 1;
  result:=binario;
end;

function NumeroNatural.Base_N(base: Word): String;
var i,n:integer; NuevoSist:String;
begin
i:=1;   n:= Valor;
             For base:=2 To 20 Do
                begin
                     If i=1 Then
                     
                     NuevoSist:='';
                     Repeat
                        If n Mod base>=10 Then
                           NuevoSist:=chr((n Mod base)+55)+NuevoSist
                        Else
                           NuevoSist:=chr((n Mod base)+48)+NuevoSist;
                        n:=n Div base
                     Until n<1;
                     Result:= NuevoSist;
                end;
end;

end.
