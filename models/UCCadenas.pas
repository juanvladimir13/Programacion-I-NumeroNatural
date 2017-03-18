unit UCCadenas;
interface
uses
  math,sysutils;
const
  maxC=8096;
  type
   TCaracteres=array[0..Maxc] of char;
   Cadena=Class
    private
        longitud :word;
        Caracteres:TCaracteres;
    public
	      Constructor Create;
        Function Buscar_Palabra_POS(pal:string):word;
        function Buscar_Sub_Cadena(s:string):word;
        function Cantidad_Palabras:word;
        Function Contar_consonantes:word;
        Function Contar_pal_capicuas:word;
        Function Contar_pal_dada_P(x:string): word;
        Function Contar_Pal_Empieza_Vocal:word;
        function contar_pal_rep_PAL (x: string):word;
        Function Contar_Palabras:word;
        Function Contar_Vocales:word;
        Function Contar_Vocales_Diferentes__Parm (x:string):word;  //??
        Function Contar_vocales_repetidas(x,ch: string):word;   //??
        Function cuant_pal_mas_2_voc_dif:word;
        function cuant_voc_dif_tiene_una_pal(s:string): word;
        function cuantas_pal_comun_dos_cad(cad2:string):word;
        function Distancia_Entre_Palabras(pal1,pal2:string):word;   //???
        function Eliminar_char_PAL_CHAR(x: string; c:string): string;   //
        function fin_char_especif (car:string):Word;   //*
        function Frecuencia_Palabra(s:string):word;
        Function Inverso_PAL (x: string): string;
        function invertir_Pos_Pal:string;  //??
        Function Long:word;
        Function Mostrar:string;
        Function Obt_Char_POS(Pos:word):char;
        function Obtener_Cadena:string;
        function Obtener_Pal(n: word):string;
        function obtener_pal_frase(f: string; j: word): string;    //**
        Function Obtener_Pal_Mayor: string;
        Function Obtener_pal_menor : string;
        Function Obtener_Pal_Por_Num (n: word):string;      //***
        Function Obtener_Pal_Por_Pos(pos:word):string;
        function Obtener_Pal_Pos_inic_POS(j:word):string;
        function Obtener_Pos_de_Pal_PAL(pal:string):word;
        Function Obtener_Primera_letra (x: string): char;
        FUnction Obtener_Ultima_letra (x: string): char;
        function Obtener_vocales (x: string):string;
        function Optener_Sub_Cadena(pos,tam:word):string;
        function Palabra_Mas_Repetida:string;
        Function Palabra_Pref (x,w:string): Boolean;
        function Pos_inic_pal_PAL (x: string): word;
        Function Obtener_siguiente_Pal(j:Word):String;       //*****
        function Saber_Si_Una_Frase_Esta_Cadena(f:string):boolean;
        function Siguiente_Palabra(j:word):string; 
        function simetria: boolean;
        function una_en_otra(pal:string):Boolean;
        function verificar_palabra(pal:string):boolean;
        function veses_patron_cadena(p:string):word;
        function vocal_mas_repeat:Word;
        Procedure Add_Char(c:char);
        procedure Burbuja;
        procedure Cambiar_Palabras(palS,palE:string);    //??
        Procedure Cargar(s:string);
        procedure Cuand_Son_Mas_Dos_pal__Parm(tam:word); //??
        procedure Cuando_Es_Una_Palabra__Parm(tam:word);    //??
        procedure Eliminar_Pal_POS(pos:word);
        Procedure Eliminar_Char(Pos:word);
        Procedure Eliminar_Dominio (n: word; n2: word);
        procedure eliminar_espacios;
        procedure Eliminar_Espacios_Al_Inicio;
        procedure Eliminar_Espacios_AlFinal;
        Procedure Eliminar_N_Posiciones(n:Word);
        procedure Eliminar_Palabra_PAL(pal:string);
        Procedure Eliminar_Pal_dada_PAL (pal:string);   //??
        procedure Eliminar_Palabras_Repetidas;
        procedure Eliminar_Sub_Cadena_PAL(s:string);
        procedure examen;
        procedure Hacer_cadena_menor_tam_(tam:word);  // Justificar
        Procedure Ins_Char_POS_CHAR(Pos:word;c:char);
        procedure Insertar_Palabra_PAL_POS(pal:string;pos:word);
        procedure insertar_parentesis_inicio_fin;
        procedure Intercambiar_dos_Char (i,j:Word);
        procedure Invertir_Caracteres;
        procedure justificar__Parm(tam:word);
        Procedure Mod_Char_POS_CHAR(pos:word;c:char);  //
        procedure palabras_entre_parentesis;
        Procedure palabras_unicas ;
        procedure Separar_Palabras_Por_Comas;
        Procedure Transponer(n:Word);
        Procedure Ordenar;
        Function Ordenar_PAL (s: string):String;
        function Vocales_juntas (pal:string):Word;
        function fin_inc_char_especifico (inci,finn:Char):Word;
        Function Intercalar_palabras (cad,cad2:String):string;
        Procedure Palabras_Normales;
        Function Obtener_Pal_PALA_POS (pal:string; pos:Word):String;
        function Separar_Guiones(pal:string):string;
        function guiones_encadenados:string;
        procedure Cargar_A_Caracteres (s: string);
    //...........................................
        function busca_una_subcad_en_cad_SUB_CAD (sub:string; s:String):Integer;
        Function Cantidad_D_Char(s:string):Word;
        Function compara_dos_cadenas_CADP_CADV(const s1,s2:string):Boolean;
        function copiar_subcad_de_una_cad_CAD_POS_TAM (cad:string; pos:Word;num:Word):string;
        function Elimina_espacios_al_inicio (const s:String):String;
        function Eliminar_espacios_ini_fin(const s:String):String;
        Function Es_Palabra_Patron(a,b,c,cad:string):Boolean;
        function posicion_de_una_subcad_en_cad_SUBCAD_CAD(subcad:String;cad:String):Word;
        procedure insetar_cad_en_cad (subcad:String;cad:String;pos:Word);
        Function Palabra_Mas_parecida(pal:string):string;



    end;

implementation
uses UCNumeroNatural;

{ Cadena }

procedure Cadena.Add_Char(c: char);
begin
  longitud:=longitud+1;
  caracteres[longitud]:=c;
end;

function Cadena.Buscar_Palabra_POS(pal: string): word;
var i,x:word; s:string;
begin
 i:=1; x:=0;
   while (i<=longitud) do
   begin
     while (i<=longitud) and (caracteres[i]=#32) do
     i:=i+1;
     x:=i;
     s:='';
     while (i<=longitud) and (caracteres[i]<>#32) do
     begin
        s:= s + caracteres[i];
        i:=i+1;
     end;
     if pal=s then
        i:=longitud+1
     else
        x:=0;
   end;
 result:=x;
end;

function Cadena.Buscar_Sub_Cadena(s: string): word;
var pos,y,i,j:word; k:string;
begin
pos:=0; y:=length(s); k:='';  i:=1;
  while i<= (longitud -(y-1)) do
  begin
    for  j:=i  to ((y+i)-1) do
    begin
       k:=k+caracteres[j];
    end;
    if s=k then begin
       pos:=i;
       i:=longitud+1;
    end else begin
       k:='';
    end;
    i:=i+1;
  end;
result:=pos;
end;

procedure Cadena.Cambiar_Palabras(palS, palE: string);
var x:word;
 begin
  x:=Obtener_Pos_de_Pal_PAL(pals);
  Eliminar_Palabra_PAL(palS);
  Insertar_Palabra_PAL_POS(palE,x);
end;

function Cadena.Cantidad_Palabras: word;
var c,i:word; s:string;
begin
c:=0; i:=1; Palabras_Normales;
  while (i<=longitud) do
  begin
    while (i<=longitud) and (caracteres[i]=#32) do
        i:=i+1;
    s:='';
    while (i<=longitud) and (caracteres[i]<>#32) do
    begin
        s:=s+caracteres[i];
        i:=i+1;
    end;
    if (length(s)>0)then
          c:=c+1;
    end;
  result:=c;
end;

procedure Cadena.Cargar(s: string);
Var
  i : Word;
begin
     Longitud:=Length(S);
     For i:= 1 to Longitud do
      Caracteres[i]:=S[i];
end;

function Cadena.Contar_Pal_Empieza_Vocal: word;
var C,i:word; s:string;
begin
C:=0; i:=1;
  while (i<=longitud) do
  begin
    while (i<=longitud) and (caracteres[i]=#32) do
        i:=i+1;
    s:='';
    while (i<=longitud) and (caracteres[i]<>#32) do
    begin
        s:=s+caracteres[i];
        i:=i+1;
    end;
    if (length(s)>0) and(s[1] in ['a','e','i','o','u','A','E','I','O','U']) then
          C:=C+1;
  end;
result:=c;
end;

function Cadena.Contar_Vocales: word;
var i,c:word;
begin
 c:=0; i:=1;
  while (i<=longitud) do
  begin
    if (UpCase(caracteres[i]) in ['A','E','I','O','U'])then
      c:=c+1;
    i:=i+1;
  end;
 result:=c;
end;

constructor Cadena.Create;
begin
  longitud:=0;
end;

procedure Cadena.Cuando_Es_Una_Palabra__Parm(tam: word);
var c:char; i,j:word;
begin
c:=#32; i:=2;  j:=0;
 if longitud>1 then
 begin
      while longitud<tam do
      begin
        j:=j+i;
        Ins_Char_Pos_Char(j,c);
            if  (j+1=longitud) then
            begin
               i:=i+1;
               j:=0;
            end;
      end;
   end
  else
  begin
     while longitud<tam do
         Add_Char(c);
  end;
end;

procedure Cadena.Cuand_Son_Mas_Dos_pal__Parm(tam: word);
var i:word; c:char;  pal:string;
begin
c:=#32;
    while longitud<tam do
    begin
        i:=1;
        while (i<longitud) and (longitud<tam) do
        begin
           pal:=Siguiente_Palabra(i);
             if i<longitud then
             Ins_Char_Pos_Char((i+1),c);
        end;
    end;
end;

function Cadena.Distancia_Entre_Palabras(pal1, pal2: string): word;
var x,y:word;
begin
  x:=Obtener_Pos_de_Pal_PAL(pal1);
  y:=Obtener_Pos_de_Pal_PAL(pal2);
  result:=abs(x-y);
end;

procedure Cadena.Eliminar_Char(Pos: word);
var i:word;
begin
if (pos>0) and (pos<=longitud) then
begin
   for i :=pos  to longitud-1 do
   begin
       caracteres[i]:=caracteres[i+1];
   end;
  longitud:=longitud - 1;
end
else
  raise exception.Create('posicion equivocada');
end;

procedure Cadena.Eliminar_Espacios_AlFinal;
begin
while (caracteres[longitud]=#32) do
  begin
   Eliminar_Char(longitud);
  end;
end;

procedure Cadena.Eliminar_Espacios_Al_Inicio;
begin
while (caracteres[1]=#32) do
  begin
   Eliminar_Char(1);
  end;
end;

procedure Cadena.Eliminar_Palabra_PAL(pal: string);
var x,y,k,i:word;
begin
 y:=Buscar_Palabra_POS(pal);
 longitud:=longitud+1;
 x:=length(pal)+1;
 k:=(longitud-y)+1;
   if k<=x then
   begin
     longitud:=y-1;
   end
   else
   begin
     for  i:=(y+x) to (longitud-1) do
     begin
        caracteres[i-x]:=caracteres[i];
     end;
     longitud:=longitud - x;//funciona con longitud-1 ??????????
     longitud:= longitud - 1; // adicionado
   end;
end;

procedure Cadena.Eliminar_Palabras_Repetidas;
var j,y:word; s:string;
begin
 j:=1;  s:=''; y:=0;
while (j<= Cantidad_Palabras) do
begin
  s:= Obtener_Pal_Por_Pos(j);
  y:=Frecuencia_Palabra(s);
  while (y>1)  do
  begin
     Eliminar_Palabra_PAL(s);
     y:=y-1;
  end;
  inc(j);
end;
end;

procedure Cadena.Eliminar_Sub_Cadena_PAL(s: string);
var x,y,k,i:word;
begin
y:= Buscar_Sub_Cadena(s);
x:=length(s);
k:=(longitud-y)+1;
  if (k<=x) then
  begin
     longitud:=y-1;
  end
  else
  begin
     for  i:=(x+y)  to longitud do
     begin
        caracteres[i-x]:=caracteres[i];
     end;
     longitud:=longitud-x;
  end;
end;

procedure Cadena.Eliminar_Pal_POS(pos: word);
var s:string;
begin
 if (pos>0) and (pos<=Cantidad_Palabras) then
  begin
   s:=Obtener_Pal_Por_Pos(pos);
   Eliminar_Palabra_PAL(s);
  end else begin
  raise exception.Create('esa posicion no es valida ');
  end;
end;

procedure Cadena.examen;
begin
 Eliminar_Espacios_Al_Inicio;
 Eliminar_Espacios_AlFinal;
 Eliminar_Palabras_Repetidas;
 palabras_entre_parentesis;
 Separar_Palabras_Por_Comas;
 insertar_parentesis_inicio_fin;
end;

function Cadena.Frecuencia_Palabra(s: string): word;
var x,i:word; c:string;
begin
 x:=0; i:=1;
while (i<=longitud) do
begin
  while (i<=longitud) and (caracteres[i]=#32) do
    i:=i+1;
 c:='';
  while (i<=longitud) and (caracteres[i]<>#32) do
  begin
    c:=c+caracteres[i];
    i:=i+1;
  end;
  if c=s then
    x:=x+1;
  end;
 result:=x;
end;

procedure Cadena.Hacer_cadena_menor_tam_(tam: word);
var i:word; pal:string;
begin
   while longitud>tam do
   begin
    i:=1;
     while i<longitud do
      pal:=Siguiente_Palabra(i);
      Eliminar_Palabra_PAL(pal);
      Eliminar_Espacios_AlFinal;
    end;
end;

procedure Cadena.Ins_Char_POS_CHAR(Pos: word; c: char);
var i:word;
begin
if (pos>0) and (pos<=longitud) then
begin
longitud:=longitud+1;
  for i:=longitud downto pos+1 do
  begin
     caracteres[i]:=caracteres[i-1];
  end;
caracteres[pos]:=c;
end
else
begin
  raise exception.Create('esa posicion no es valida ');
end;
end;

procedure Cadena.Insertar_Palabra_PAL_POS(pal: string; pos: word);
var i,x,c:word; k:char;
begin
pal:=pal + #32;  x:=length(pal); c:=1; i:=pos;
  while  (i<=(x+pos)) and (c<=x) do
  begin
      k:=pal[c];
      Ins_Char_POS_CHAR(i,k);
      c:=c+1;
      i:=i+1;
  end;
end;

procedure Cadena.insertar_parentesis_inicio_fin;
var c,s:char;
begin
  c:='('; s:=')';
  Ins_Char_Pos_Char(1,c);
  inc(longitud);
  Ins_Char_Pos_Char(longitud,s);
end;

procedure Cadena.Invertir_Caracteres;
var x,i:word; aux:char;
begin
  x:=longitud; i:=1;
    while (i<=(longitud div 2)) do
    begin
      aux:=caracteres[i];
      caracteres[i]:=caracteres[x];
      caracteres[x]:=aux;
      x:=x-1;
      i:=i+1;
    end;
end;

procedure Cadena.justificar__Parm(tam: word);
begin
Eliminar_Espacios_Al_Inicio;
Eliminar_Espacios_AlFinal;
   if longitud>tam then
      Hacer_cadena_menor_tam_(tam);
   if Cantidad_Palabras=1 then
      Cuando_Es_Una_Palabra__Parm(tam)
   else
      Cuand_Son_Mas_Dos_pal__Parm(tam);
end;

function Cadena.Long: word;
begin
  result:=longitud;
end;

procedure Cadena.Mod_Char_POS_CHAR(pos: word; c: char);
begin
if (pos>0) and (pos<=longitud) then
begin
  caracteres[pos]:=c;
end
else
  raise exception.Create('posicion equivocada');
end;


function Cadena.Mostrar: string;
Var i : Word;  S : String;
begin
     S:='';
     For i:= 1 to Longitud do
      S:=S+Caracteres[i];
    Result:=S;
end;

function Cadena.Obt_Char_POS(Pos: word): char;
begin
if (pos>0) and (pos<=longitud) then
begin
  result:=caracteres[pos];
end
else
  raise exception.Create('posicion fuera de rango');
end;

function Cadena.Obtener_Pal_Pos_inic_POS(j: word): string;
var s:string;                                              // char pos
begin                                                      // result palabra
  while (j<=longitud)and (caracteres[j]=#32) do
     j:=j+1;
  s:='';
  while (j<=longitud) and (caracteres[j]<>#32) do
  begin
     s:=s+caracteres[j];
     j:=j+1;
  end;
  result:=s;
end;

function Cadena.Obtener_Pal_Por_Pos(pos: word): string;
var c,i:word; x,s:string;
begin
if (pos>0) and (pos<=longitud) then
 begin
  c:=0; i:=1;
   while (i<=longitud) do
    begin
     while (i<=longitud) and (caracteres[i]=#32) do
      i:=i+1;
      s:='';
    while (i<=longitud) and (caracteres[i]<>#32) do
    begin
        s:=s+caracteres[i];
        i:=i+1;
    end;
    if (length(s)>0)then
          C:=C+1;
    if C=pos then
       x:= s;
    end;
  result:=x;
end
else
begin
  raise exception.Create('esa posicion no es valida ');
end;
end;

function Cadena.Obtener_Pos_de_Pal_PAL(pal: string): word;
var c,i,pos:word; s:string;
begin
c:=0; i:=1; pos:=0;  Palabras_Normales;
  while (i<=longitud) do
  begin
    while (i<=longitud) and (caracteres[i]=#32) do
        i:=i+1;
    s:='';
    while (i<=longitud) and (caracteres[i]<>#32) do
    begin
        s:=s+caracteres[i];
        i:=i+1;
    end;
    if (length(s)>0)then
          C:=C+1;
    if pal=s then
          pos:=c;
  end;
result:=pos;
end;

function Cadena.Optener_Sub_Cadena(pos, tam: word): string;
var k:string; i,j:word;
begin
if (tam>0) and (tam<=longitud) and (pos>0) and (pos<=longitud) then
begin
  k:=''; i:=1;
     while i<=longitud do
     begin
         i:= pos;
         if i=pos then
         begin
            for j :=pos  to ((tam+pos)-1) do
            begin
                k:=k+caracteres[j];
            end;
            i:= longitud + 1;
         end;
       i:=i+1;
     end;
  result:=k;
end
else
begin
   raise exception.Create('posicion y/o tamaño equivocado');
end;
end;

function Cadena.Palabra_Mas_Repetida: string;
var c,i,may,q:word; p,pal:string;
begin
Palabras_Normales; i:=1; may:=0; q:= Contar_Palabras;
 while (i<= q) do
 begin
   p:= Obtener_Pal(i);
   c:=Frecuencia_Palabra(p);
    if c > may then
    begin
      may:=c;
      pal:=p;
    end;
    inc(i);
 end;
   result:=pal;
end;

procedure Cadena.palabras_entre_parentesis;
var c,s:char; i:word;
begin
Eliminar_Espacios_Al_Inicio;
Eliminar_Espacios_Al_Inicio;
c:='('; s:=')'; i:=1;
  while (i<longitud) do
  begin
    while (i<=longitud) and (caracteres[i]=#32) do
        i:=i+1;
    Ins_Char_Pos_Char(i,c);
    while (i<longitud) and (caracteres[i]<>#32) do
        i:=i+1;
    if i=longitud then
          Add_Char(s)
    else
       Ins_Char_Pos_Char(i,s);
       i:=i+1;
    end;
end;

function Cadena.Saber_Si_Una_Frase_Esta_Cadena(f: string): boolean;
var y,j:word; x:string; sw:boolean;
begin
j:=1;  sw:=true;
   while j<length(f) do
   begin
     x:= obtener_pal_frase(f,j);
     j:=j+length(x)+1;
     y:=Frecuencia_Palabra(x);
         if (y=0) then
           sw:=false;
   end;
result:=sw;
end;

procedure Cadena.Separar_Palabras_Por_Comas;
var i:word;
begin
Eliminar_Espacios_Al_Inicio;
Eliminar_Espacios_AlFinal;
    for i:=1 to longitud do
    begin
       if (caracteres[i]=#32) then
       begin
          caracteres[i]:=#44;
          while (caracteres[i+1]=#32) do
          Eliminar_Char(i+1);
       end;
    end;
end;

function Cadena.Siguiente_Palabra(j: word): string;   // copy pos char
var s:string;                                         // hasta el espacio
begin
  while (j<=longitud)and (caracteres[j]=#32) do
     j:=j+1;
  s:='';
  while (j<=longitud) and (caracteres[j]<>#32) do
  begin
     s:=s+caracteres[j];
     j:=j+1;
  end;
  result:=s;
end;

function Cadena.obtener_pal_frase(f: string; j: word): string;
var s:string;
begin
  while (j<=length(f))and (f[j]=#32) do
     j:=j+1;
  s:='';
  while (j<=length(f)) and (f[j]<>#32) do
  begin
     s:=s+f[j];
     j:=j+1;
  end;
  result:=s;
end;

function Cadena.cuantas_pal_comun_dos_cad(cad2: string): word;
var c,j:word; s:string;
begin
j:=1; c:=0;
   while (j<length(cad2)) do
   begin
      s:=obtener_pal_frase(cad2,j);
      j:=length(s)+j+1;
         if Frecuencia_Palabra(s)>0 then
             c:=c+1;
   end;
result:=c;
end;

procedure Cadena.eliminar_espacios;
var i:word;
begin
i:=1;
   while i<=longitud do
   begin
       if caracteres[i]=#32 then
       begin
          Eliminar_Char(i);
          i:= i - 1;
       end;
   i:=i+1;
   end;
end;

function Cadena.cuant_voc_dif_tiene_una_pal(s:string): word;
var sa,se,si,so,su:boolean;  i,c:word;
begin
c:=0;  sa:=true; se:=true; si:=true; so:=true; su:=true;
 for i:=1 to length(s) do
 begin
    if (upcase(s[i]) in ['A']) and sa=true then
    begin
       c:=c+1;
       sa:=false;
    end;
    if (upcase(s[i]) in ['E']) and se=true then
    begin
       c:=c+1;
       se:=false;
    end;
    if (upcase(s[i]) in ['I'])and si=true then
    begin
       c:=c+1;
       si:=false;
    end;
    if (upcase(s[i]) in ['O']) and so=true then
    begin
       c:=c+1;
       so:=false;
    end;
    if (upcase(s[i]) in ['U']) and su=true then
    begin
       c:=c+1;
       su:=false;
    end;
 end;
result:=c;
end;

function Cadena.cuant_pal_mas_2_voc_dif: word;
var i,c,x:word; p:string;
begin
i:=1;  c:=0;
    while i<longitud do
    begin
        p:=Siguiente_Palabra(i);
        i:=i+1;
        x:=cuant_voc_dif_tiene_una_pal(p);
          if x>2 then
             c:=c+1;
    end;
 result:=c;
end;

function Cadena.veses_patron_cadena(p: string): word;
var i,c:word; x:string;
begin
i:=1; c:=0;
 while i<longitud do
 begin
 x:=Siguiente_Palabra(i);
   if (p[2]='*') and (length(x)>1) and (x[1]=p[1])then
       c:=c+1;
   if (p[2]='?') and (length(x)=2) and(x[1]=p[1]) then
       c:=c+1;
   i:=i+1;
 end;
 c:=c+0;
result:=c;
end;

function Cadena.verificar_palabra(pal: string): boolean;
var sw:boolean;
begin
   if (Buscar_Palabra_POS(pal)>0) then begin
      sw:=true
   end else  begin
    sw:= False;
   end;
result:=sw;
end;

function Cadena.Contar_consonantes: word;
Var c,i : Word;
begin
    c:=0;
    For i:= 1 to Longitud do
     begin
      If not(UpCase(Caracteres[i]) in ['A','E','I','O','U',#32]) then begin
         c:= c + 1;
      end;
    end;
    Result:= c;
end;

function Cadena.Contar_pal_capicuas: word;
var g,i,c: word;  p,r: string;
begin
g:= 0;
c:= Contar_Palabras;
for i:= 1 to c do
 begin
  p:= Obtener_Pal_Pos_inic_POS (i);
  r:= Inverso_PAL (p);
    if p = r then
     inc(g);
    end;
result:= g;
end;

function Cadena.Contar_pal_dada_P(x: string): word;
begin
 Cargar_A_Caracteres(x);
 Result:= Contar_Palabras;
end;

function Cadena.Contar_vocales_repetidas(x, ch: string): word;
var i,c: word;
begin
 c:= 0;
  for i:= 1 to length(x) do
    begin
     if x[i] = ch then
      inc(c);
     end;
  result:= c;
end;

function Cadena.contar_pal_rep_PAL(x: string): word;
begin
 result:= Frecuencia_Palabra (x);
end;

function Cadena.Contar_Vocales_Diferentes__Parm(x: string): word;
var i,c: word;  s,c2: string;
begin
c:= 0; s:= ''; i:= 1;
while i <= length (x) do
 begin
  c2:= x[i];
  inc(c);
  x:=Eliminar_char_PAL_CHAR(x,c2);
 end;
result:= c;
end;

procedure Cadena.Eliminar_Dominio(n, n2: word);
var j,i: word;
begin
 if (n + n2) <= longitud then
   begin
    for i:= 1 to n2 do
     begin
      longitud:= longitud + 1;
        for j:= n to longitud do
          begin
           caracteres [j]:= caracteres [j + 1];
          end;
           longitud:= longitud - 1;
         end;
     longitud:= longitud - 1;
    end else raise Exception.Create('posicion fuera de rango');
end;

function Cadena.Eliminar_char_PAL_CHAR(x, c: string): string;
Var i : Word;  s: string;
begin
s:= '';
for i:= 1 to length (x) do
 begin
  if x[i] <> c then
  s:= s + x[i];
 end;
result:= s;
end;

function Cadena.Inverso_PAL(x: string): string;
var s: string;  i,l: word;
begin
s:= '';
l:= length(x);
  for i:= l downto 1 do
    s:= s + x[i];
    result:= s;
end;

function Cadena.Obtener_Pal_Mayor: string;
var c,i: word;  a,b: string;
begin
c:= Contar_Palabras;
a:= Obtener_Pal (1);
 if c > 0 then
  begin
   for i:= 2 to c do
    begin
     b:= Obtener_Pal(i);
      if b > a then
       a:= b;
      end;
    end;
 result:= a;
end;

function Cadena.Obtener_pal_menor: string;
var  c,i: word; a,b: string;
begin
c:= Contar_Palabras;
a:= Obtener_Pal (1);
if c > 0 then
 begin
  for i:= 2 to c do
    begin
     b:= Obtener_Pal(i);
      if b < a then
       a:= b;
      end;
   end;
 result:= a;
end;

function Cadena.Obtener_Pal_Por_Num(n: word): string;  // pos char
var   i, numpal: word;   pal: string;                  // obtiene la palabra
begin
  if n <= Contar_Palabras then
   begin
    i:= 1;
    numpal:= 1;
      while i <= longitud do
        begin
        pal:= Siguiente_Palabra (i);
          if (numpal = n) then
            i:= longitud + 1;
            inc(numpal);
          end;
      result:= pal;
    end
  else raise exception.Create('Fuera de rango');
end;

function Cadena.Obtener_Primera_letra(x: string): char;
var i,j:Word;
begin
i:= 1;  j:=0;
 while (i<= longitud) do
 begin
  if (x[i] <> #32) then  begin
   j:= i;
   i:= longitud + 1;
  end;
  inc(i);
 end;
Result:= x[j];
end;

function Cadena.Obtener_Ultima_letra(x: string): char;
var l: word;
begin
  x:= Trim(x); l:= length(x);
  result:= x[l];
end;

function Cadena.Obtener_vocales(x: string): string;
var i: word;  s: string;
begin
s:= '';
for i:= 1 to length(x) do
 begin
  if x[i] in ['a','e','i','o','u','A','E','I','O','U',#32] then
   begin
    s:= s + x[i];
   end;
   end;
 result:= s;
end;

procedure Cadena.palabras_unicas;
begin
end;

function Cadena.Pos_inic_pal_PAL(x: string): word;
var  s: string; i,c: word;
begin
i:= 1;  c:=0; s:= '';   Add_Char(' ');
while i <= longitud do
  begin
   while Caracteres[i] <> ' ' do
    begin
      s:= s + Caracteres[i];
      inc(i);
    end;
  if s = x then
    begin
      c:= i - length (s);
      i:= longitud + 1;
      longitud:= longitud - 1;
    end
  else
      s:= '';
      inc(i);
  end;
result:= c;
end;

function Cadena.simetria: boolean;
var  i, f: word;  igual: boolean;
begin
i:= 1;
f:= longitud;
igual:= true;
while (i <= longitud div 2) and (igual) do
  begin
   if (Caracteres[i] <> Caracteres[f]) then
    begin
     igual := false;
    end;
    inc(i);
    dec(f);
    end;
  result:= igual;
end;

function Cadena.Contar_Palabras: word;
var i,c: word;
  begin
   c:= 0;
   Add_Char (' ');
  for i:= 1 to longitud do
   begin
    if (caracteres [i] <> ' ' ) and (caracteres [i + 1] = ' ') then
     begin
      c:= c + 1;
     end;
    end;
result:= c;
end;

function Cadena.Obtener_Pal(n: word): string;   //****
var  s: string; i,c: word;
begin
i:= 1;  s:= ''; c:= 0;
if n <= Contar_Palabras then begin
 if (n <= Contar_Palabras) and (n <> 0) then
  begin
   while (i<= longitud)do begin
    c:= c +1 ;
    while (i<= longitud) and (caracteres [i] <> #32) do
     begin
      s:= s + caracteres [i];
      inc(i);
     end;
    if c = n then
      i:= longitud + 1;
      if c <> n then
        s:= '';
        inc(i);
      end;
    result:= s;
  end;
end else  raise Exception.Create('Numero de palabras fuera de rango ');
end;

function Cadena.Palabra_Pref(x, w: string): Boolean;
var i,lx,lw:Byte;
begin
  lx:= length (x);
  lw:= length (w);
  if  lx < lw then
    begin
     i:= 1;
     while (i<=lx) and (x[i]=w[i]) do
      inc (i);
      if i> lx then
      Result:=True
      else
      Result:= false;
      end
     else
     Result:= false;
     end;

function Cadena.vocal_mas_repeat: Word;
var ca,ce,ci,co,cu,i:Byte; N:NumeroNatural;
begin
N:= NumeroNatural.Create;
ca:=0;  ce:=0;   ci:=0;   co:=0;  cu:=0;  i:= 1;
  while i<= Longitud do
    begin
     case UpCase (caracteres [i]) of
     'A' : ca:= ca + 1;
     'E' : ce:= ce + 1;
     'I' : ci:= ci + 1;
     'O' : co:= co + 1;
     'U' : cu:= cu + 1;
     end;
     i:= i + 1;
     end;
begin
Result:= (N.mayor_de_3 (N.mayor_de_3(ca,ce,ci),co,cu));
end;
end;

function Cadena.fin_char_especif(car: String): Word;
var c,cont:Byte;  s: string;  j:Word; a: Char;
begin
j:= 1; cont:=0;
Eliminar_Espacios_Al_Inicio; Eliminar_Espacios_AlFinal;
c:= Cantidad_Palabras;
while j <= c do
 begin
  s:= Obtener_Pal(j);
  a:= Obtener_Ultima_letra(s);
   if a = car then
    begin
     inc( cont);
    end;
  inc(j);
 end;
Result:= cont;
end;

function Cadena.una_en_otra(pal: string): Boolean;
var   i,j,npal:byte;
begin
i:= 1; j:= 1; npal:= length (pal);
 while i<= Longitud do
  begin
   j:= 1;
   if Caracteres[i] = pal[j] then
    begin
     while (Caracteres[i]=pal[j]) and (i<= Longitud) and (j<=npal) do
      begin
       i:= i + 1;   j:= j + 1;
      end;
     if j > npal then
     i:= Longitud + 1;
     end
    else
   i:= i + 1;
   end;
   if j > npal then
   Result:= true
   else
   Result:= false;
   end;

procedure Cadena.Burbuja;
var i,j:Word;
begin
 for i:= Longitud downto 2 do
    for j:= 1 to i - 1 do
      if Caracteres [j] > Caracteres [j+1] then
      Intercambiar_dos_Char(j,j+1);
      end;

procedure Cadena.Intercambiar_dos_Char(i, j: Word);
var aux:char;
begin
 if ((i<= longitud) and (j<= longitud)) then begin
  aux:= caracteres[i];
  Caracteres [i]:= caracteres  [j];
  Caracteres [j]:= aux;
 end else raise Exception.Create('Posiciones fuera de rango');
end;

function Cadena.Obtener_Cadena: string;
Var i : Word; S : String;
begin
     S:='';
     For i:= 1 to Longitud do
      S:=S+Caracteres[i];
    Result:=S;
end;

function Cadena.invertir_Pos_Pal: string;
var cad2,pal: string; i:Word;
begin
 cad2:= '';  i:= 1;
 while i<= Longitud do
 begin
   while not (Caracteres[i] in ['a'..'z','A'..'Z']) and (i<= Longitud)do
    begin
     cad2:= Caracteres[i] + cad2;
     i:= i + 1;
    end;
 pal:= '';
 while (Caracteres[i]in ['a'..'z','A'..'Z']) and (i<= Longitud)do
 begin
  pal:= pal + Caracteres[i];
  i:= i + 1;
 end;
cad2:= pal+cad2;
end;
Result:= cad2;
end;
//-------------------------------------------------------------
function Cadena.busca_una_subcad_en_cad_SUB_CAD(sub, s: String): Integer;
begin
Result:= pos (sub,s);
end;

function Cadena.compara_dos_cadenas_CADP_CADV(const s1, s2: string): Boolean;
begin
  Result:= sametext(s1,s2);
end;

//compara_si_son_iguales_e_indica_la_diferencia(s1,s2: string): integer;

//  Result:= comparetext(s1,s2);


function Cadena.copiar_subcad_de_una_cad_CAD_POS_TAM(cad: string; pos, num: Word): string;
begin
Result:= copy(cad,pos,num);
end;

function Cadena.Elimina_espacios_al_inicio(const s: String): String;
begin
  Result:= TrimLeft(s);
end;

function Cadena.Eliminar_espacios_ini_fin(const s: String): String;
begin
  Result:= Trim(s);
end;

procedure Cadena.insetar_cad_en_cad(subcad, cad: String; pos: Word);
begin
insert(subcad,cad,pos);
end;

function Cadena.posicion_de_una_subcad_en_cad_SUBCAD_CAD(subcad, cad: String): Word;
begin
 Result:= pos (subcad,cad);
end;

procedure Cadena.Transponer(n: Word);
var i,k:Word;
begin
i:=1;
longitud:= longitud + 1;
k:= longitud;
Caracteres[longitud]:= #32;
 while i<= n do
 begin
    inc(longitud);
    Caracteres[k + i]:= Caracteres[i];
    inc(i);
 end;
 Eliminar_N_Posiciones(n);
end;

procedure Cadena.Eliminar_N_Posiciones(n: Word);
var i,j:Word; cad:TCaracteres;
begin
i:= n+1;   j:=1;
if n <= longitud then begin
 while i<= longitud do
 begin
  cad[j]:=  Caracteres[i];
  inc(j); inc(i);
 end;
 i:=1; j:=1;  longitud:= longitud - n;
 while i<= longitud do
 begin
   Caracteres[i]:= cad[j];
   inc(j); inc(i) ;
 end;
 end else raise Exception.Create('Posicion fuera de rango');
end;

function Cadena.Obtener_siguiente_Pal(j: Word): String;
begin
 Result:= Obtener_Pal(j+1);
end;

function Cadena.Cantidad_D_Char(s: string): Word;
begin
Result:= length(s);
end;

function Cadena.Palabra_Mas_parecida(pal: string): string;
var i,cont,r,res:Word;    p,q :string;
begin
r:=1;  res:=0;   cont:=0;
  while r <= Contar_Palabras do
   begin
    i:=1;
    p:= Obtener_Pal(r);
    while i<= Length(pal) do
    begin
     if pal[i]= p[i] then
     begin
      cont:= cont + 1;
     end;
      inc(i);
    end;
     if cont > res then
     begin
       res:= cont;
       q:=p;
     end;
     inc(r); cont:=0;;
  end;
  Result:= q;
 end;

function Cadena.Es_Palabra_Patron(a, b, c, cad: string): Boolean;
var i,cont: Word;  pt:string;
begin
 pt:= a+b+c; cont:=0;
 i:= 1;
 while i<= Length(pt) do
 begin
  if cad[i] = pt[i] then
  begin
   inc(cont);
  end;
  inc(i);
  end;
   if (cont = Length(pt)) and  ( Length(cad)> Length(pt)) then
   begin
    Result:= true
   end   else begin
   Result:= False;
 end;
 end;

 procedure Cadena.Eliminar_Pal_dada_PAL(pal: string);
var i:Word;   j,k: string;
begin
i:= 1 ; k:='';  j:='';
 if (Frecuencia_Palabra(pal) > 0 ) then
 begin
  while (i <= Contar_Palabras) do
  begin
   j:= Obtener_Pal_Por_Pos(i);
     if j <> pal  then begin
     k:= k + j + #32;
     end;
   inc(i); j:='';
  end;
  trim(k);
  i:=1;
  while i<= length(k) do
   begin
    Caracteres[i]:= k[i];
    inc(i);
   end;
 end else raise Exception.Create('no existe esa palabra');
end;

procedure Cadena.Ordenar;
var i,j:Word;
begin
 for i:= longitud downto 2 do
    for j:= 1 to i - 1 do
      begin
      if Caracteres [j] > Caracteres [j+1] then
      Intercambiar_dos_Char(j,j+1);
      end;
  end;
function Cadena.Ordenar_PAL(s: string): String;
var i,j:Word;
begin
i:= 1; longitud:= length (s);
 while i<= longitud do
 begin
  Caracteres[i]:= s[i];
  inc(i);
 end;

 for i:= longitud downto 2 do  begin
    for j:= 1 to i - 1 do
      begin
      if Caracteres[j] > Caracteres [j+1] then
      Intercambiar_dos_Char(j,j+1);
      end;
   end;
   i:=1;
   while i<= longitud do
   begin
    s[i]:= caracteres [i]; inc(i);
   end;
 Result:= s;
  end;
function Cadena.Vocales_juntas(pal: string): Word;
var c,i:Word;
begin
i:= 1;  c:=0;
longitud:= length (trim(pal));
 while i<= longitud do
 begin
    if pal[i] in ['a','e','i','o','u'] then begin
     if pal [i+1] in ['a','e','i','o','u'] then
      inc(c);
    end;
  inc(i);
    end;
 Result:= c;
end;

function Cadena.fin_inc_char_especifico(inci, finn: Char): Word;
var c,i:Word; s:string;  a,b:Char;
begin
i:= 1;  c:= 0;
 while i<= Contar_Palabras do
 begin
  s:= Obtener_Pal(i);
  a:= Obtener_Primera_letra(s);
  b:= Obtener_Ultima_letra(s);
  if ((a = inci) and (b = finn)) then begin
   inc(c);
  end;
   inc(i);
  end;
 Result:= c;
end;

function Cadena.Intercalar_palabras(cad, cad2: String): string;
var i,j,k:Word;  t: TCaracteres;
begin
i:=1;  j:=1;  k:=1;
if Length(cad) < Length(cad2) then begin
 while i<= Length(cad) do
  begin
    while (cad[i]<> #32) do
    begin
      t[k]:= cad[i]; inc(i);  inc(k);
    end;
     t[k]:= #32;
     if j<= Length(cad) then
     begin
       while (cad2 [j]<> #32) do
       begin
        t[k]:= cad2[j]; inc(j);  inc(k);
       end;
       t[k]:= #32;
     end;  inc(i); inc(j);
  end;
  while j<= Length(cad2)do
  begin
    t[k]:= cad2[j]; inc(j); inc(k);
  end;

end else begin
i:=1;  j:=1;  k:=1;
 if i<= Length(cad2) then
  begin
    while (cad2[i]<> #32) do
    begin
      t[k]:= cad2[i]; inc(i);  inc(k);
    end;
     t[k]:= #32;
     if j<= Length(cad2) then
     begin
       while (cad [j]<> #32) do
       begin
        t[k]:= cad[j]; inc(j);  inc(k);
       end;
       t[k]:= #32;
     end;
  end;
  while j<= Length(cad)do
  begin
    t[k]:= cad[j]; inc(j); inc(k);
  end;
end;
Result:= t;
end;

procedure Cadena.Palabras_Normales;
var i,j: Word; s,t,r:string;
begin
t:=''; i:=1;   j:= Cantidad_Palabras;
 while i<= j do
 begin
  s:= Obtener_Pal_Por_Pos(i);
  t:= t + s + #32;
  inc(i);
 end;
  r:= trim(t);
  i:=1;     longitud:= Cantidad_D_Char(r);
  while i<= longitud do
  begin
    Caracteres[i]:= r[i];
    inc(i);
  end;
end;

function Cadena.Obtener_Pal_PALA_POS(pal: string; pos: Word): String;
var i: Word; s,t: string;
begin
 i:=1;
 longitud:= length(pal);
 while i<= longitud do
 begin
  Caracteres[i]:= pal[i]; inc(i);
 end;
  i:= 1 ; s:= Obtener_Cadena; Palabras_Normales;
  while i<= Contar_Palabras + 1 do
  begin
    s:= Obtener_Pal_Por_Pos(i);
    if i = pos then begin
    t:= s;  i:= Contar_Palabras + 2;
    end;
    inc(i); s:='';
  end;
Result:= t;
end;

function Cadena.Separar_Guiones(pal:string): string;
var i:Word; s,t:string;
begin
i:=1;     t:='';
 s:='';
 pal:= trim(pal);
 longitud:= length(pal);
 while (i<= longitud) do
 begin
  if (pal[i] <> #32)and (i< longitud) then begin
   s:= pal[i];
   t:= t + s + '-'  ;
   end else begin
    t:= t + pal[i];
   end;
   inc(i);
 end;
 Result:= t;
end;

function Cadena.guiones_encadenados: string;
var i,j:Word;  s,t,p:string;
begin
j:= Contar_Palabras;
i:= 1;  p:= '';
  while (i<= j) do
  begin
    s:= Obtener_Pal_Por_Pos(i);
    t:= Separar_Guiones(s);
    if i < j then
       p:= p + t + '__'
    else
     p:= p + t ; s:=''; ;  inc(i) ;
    end;
Result:= p;
end;

procedure Cadena.Cargar_A_Caracteres(s: string);
var i:Word;
begin
i:=1;
 longitud:= Length(s);
 while i<= longitud do
  begin
    Caracteres[i]:= s[i];
    inc(i);
  end;
end;

end.

