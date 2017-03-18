object frmPrincipal: TfrmPrincipal
  Left = 189
  Top = 117
  AutoScroll = False
  Caption = 'Numero Natural'
  ClientHeight = 564
  ClientWidth = 928
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 433
    Top = 492
    Width = 10
    Height = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -38
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 305
    Top = 30
    Width = 248
    Height = 24
    Caption = 'Entrada de Datos Principal'
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 433
    Top = 453
    Width = 94
    Height = 24
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 128
    Width = 651
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 276
    Top = 197
    Width = 158
    Height = 228
    Caption = '   Posicion   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 138
      Top = 123
      Width = 5
      Height = 16
    end
    object Label2: TLabel
      Left = 20
      Top = 30
      Width = 79
      Height = 16
      Caption = '1'#186' Posicion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 20
      Top = 108
      Width = 83
      Height = 16
      Caption = '2'#186' Posicion '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Pos1: TEdit
      Left = 20
      Top = 59
      Width = 99
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Pos2: TEdit
      Left = 20
      Top = 139
      Width = 99
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 532
    Top = 197
    Width = 149
    Height = 228
    Caption = '   Digito   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label7: TLabel
      Left = 18
      Top = 30
      Width = 60
      Height = 16
      Caption = '1'#186' Digito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 18
      Top = 98
      Width = 60
      Height = 16
      Caption = '2'#186' Digito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Dig1: TEdit
      Left = 20
      Top = 50
      Width = 99
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Dig2: TEdit
      Left = 20
      Top = 129
      Width = 99
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 167
    Top = 79
    Width = 120
    Height = 31
    Caption = '&Cargar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 325
    Top = 79
    Width = 109
    Height = 31
    Caption = '&Mostrar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 482
    Top = 79
    Width = 103
    Height = 31
    Caption = '&Borrar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 630
    Top = 79
    Width = 92
    Height = 31
    Caption = '&Salir'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 748
    Top = 79
    Width = 100
    Height = 31
    Caption = 'Borrar Todo'
    TabOrder = 7
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 32
    object Salir1: TMenuItem
      Caption = '    Adicionar o Insertar    '
      object N4: TMenuItem
        Caption = '-'
      end
      object Salir2: TMenuItem
        Caption = 'Adicionar Dig al Inicio'
        OnClick = Salir2Click
      end
      object AdicionarDigitoalfinal1: TMenuItem
        Caption = 'Adicionar Digito al final'
        OnClick = AdicionarDigitoalfinal1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N1: TMenuItem
        Caption = 'Insertar_Dig_Pos'
        OnClick = N1Click
      end
      object Burbuja1: TMenuItem
        Caption = 'Burbuja'
        OnClick = Burbuja1Click
      end
      object SubMayordeDigitos1: TMenuItem
        Caption = 'Sub_Mayor de Digitos'
        OnClick = SubMayordeDigitos1Click
      end
      object NuevoNumero1: TMenuItem
        Caption = 'Nuevo Numero'
        OnClick = NuevoNumero1Click
      end
    end
    object Eliminar1: TMenuItem
      Caption = '    Eliminar    '
      object N3: TMenuItem
        Caption = '-'
      end
      object Posicion3: TMenuItem
        Caption = '-------Posicion-------'
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Posicion [pos]'
        OnClick = N2Click
      end
      object Posnpos1: TMenuItem
        Caption = 'Pos ( n_pos )'
        OnClick = Posnpos1Click
      end
      object Posicion1: TMenuItem
        Caption = 'Posicion'
        OnClick = Posicion1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object Digito1: TMenuItem
        Caption = '-------Digito------'
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object Unoposuno1: TMenuItem
        Caption = 'Uno por uno'
      end
      object Igualdado1: TMenuItem
        Caption = 'Dig Dado ( d )'
        OnClick = Igualdado1Click
      end
      object DosUltimDig1: TMenuItem
        Caption = 'Dos_Ultim_Dig'
      end
      object Dignd1: TMenuItem
        Caption = 'Dig ( num_dig )'
        OnClick = Dignd1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object Otros1: TMenuItem
        Caption = '-------Otros------'
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object EliminarDigPrimos1: TMenuItem
        Caption = 'Numeros Primos'
        OnClick = EliminarDigPrimos1Click
      end
      object EliminarCeros1: TMenuItem
        Caption = 'Eliminar Ceros'
      end
    end
    object FuncionesEspc1: TMenuItem
      Caption = '    Funciones Espc    '
      object adfasdf3: TMenuItem
        Caption = 'Conversiones'
      end
      object adfasdf4: TMenuItem
        Caption = '-'
      end
      object Romanos1: TMenuItem
        Caption = 'Romanos'
        OnClick = Romanos1Click
      end
      object NumaBinario1: TMenuItem
        Caption = 'Binario'
        OnClick = NumaBinario1Click
      end
      object NumaHexadecimal1: TMenuItem
        Caption = 'Hexadecimal'
        OnClick = NumaHexadecimal1Click
      end
      object AbaseN1: TMenuItem
        Caption = 'A base N'
        OnClick = AbaseN1Click
      end
      object Octal1: TMenuItem
        Caption = 'Octal'
        OnClick = Octal1Click
      end
      object UnnumeroenotroNum1: TMenuItem
        Caption = 'Un numero en otro [Num]'
        OnClick = UnnumeroenotroNum1Click
      end
      object Natural1: TMenuItem
        Caption = 'Literal'
        OnClick = Natural1Click
      end
      object Power1: TMenuItem
        Caption = 'Power'
        OnClick = Power1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object SepararNumRepetidos1: TMenuItem
        Caption = 'Separar Num Repetidos'
        OnClick = SepararNumRepetidos1Click
      end
      object Freduencia1: TMenuItem
        Caption = 'Freduencia'
        OnClick = Freduencia1Click
      end
      object Invertir1: TMenuItem
        Caption = 'Invertir'
        OnClick = Invertir1Click
      end
      object Binario1: TMenuItem
        Caption = 'Binario (  )'
        OnClick = Binario1Click
      end
      object Hexad1: TMenuItem
        Caption = 'Hexad (  )'
        OnClick = Hexad1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
    end
    object ObservarDig1: TMenuItem
      Caption = '   Observar Dig   '
      object N15: TMenuItem
        Caption = '-'
      end
      object Numeros1: TMenuItem
        Caption = 'Numeros'
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object ContarDigitos1: TMenuItem
        Caption = 'Cantidad de Dig'
        OnClick = ContarDigitos1Click
      end
      object DigIguales2: TMenuItem
        Caption = 'Dig Iguales'
        OnClick = DigIguales2Click
      end
      object Intercambiar1: TMenuItem
        Caption = 'Intercambiar_Dos_ Pos'
        OnClick = Intercambiar1Click
      end
      object NrConsecPar1: TMenuItem
        Caption = 'Nr_Consec_Par'
        OnClick = NrConsecPar1Click
      end
      object NroDigjuntos1: TMenuItem
        Caption = 'Nro_de_Dig Iguales juntos'
        OnClick = NroDigjuntos1Click
      end
      object NumeroPerfecto1: TMenuItem
        Caption = 'Es Numero Perfecto'
        OnClick = NumeroPerfecto1Click
      end
      object DigitosIguales1: TMenuItem
        Caption = 'Digitos Iguales'
        OnClick = DigitosIguales1Click
      end
      object Esprimo1: TMenuItem
        Caption = 'Es Num primo'
        OnClick = Esprimo1Click
      end
      object Nroiguales1: TMenuItem
        Caption = 'Nro iguales'
        OnClick = Nroiguales1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object NroRepetidos1: TMenuItem
        Caption = 'Nro Repetidos'
        OnClick = NroRepetidos1Click
      end
      object MostraDigdeposInversa1: TMenuItem
        Caption = 'Mostrar Dig_de_Pos_Inversa'
        OnClick = MostraDigdeposInversa1Click
      end
      object CantdeDig1: TMenuItem
        Caption = 'Cant de Dig (  )'
        OnClick = CantdeDig1Click
      end
      object EsDigPrimo1: TMenuItem
        Caption = 'Es Dig Primo (  )'
      end
      object Unnumeroenotro1: TMenuItem
        Caption = 'Un numero en otro (num)'
        OnClick = Unnumeroenotro1Click
      end
    end
    object ObtenerDig1: TMenuItem
      Caption = '   Obtener Dig    '
      object Posicion2: TMenuItem
        Caption = 'Posicion'
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object NumerosUnicos1: TMenuItem
        Caption = 'Numeros Unicos'
        OnClick = NumerosUnicos1Click
      end
      object PosdeunDigitoDado1: TMenuItem
        Caption = 'Pos de Dig (Dig)'
      end
      object Impares1: TMenuItem
        Caption = 'Num Impares_P'
        OnClick = Impares1Click
      end
      object NumeroMarRepetido1: TMenuItem
        Caption = 'Numero Mas Repetido'
        OnClick = NumeroMarRepetido1Click
      end
      object Pares1: TMenuItem
        Caption = 'Num Pares_P'
        OnClick = Pares1Click
      end
      object SumadeDigitos1: TMenuItem
        Caption = 'Suma de Digitos'
        OnClick = SumadeDigitos1Click
      end
      object PosdeDignd1: TMenuItem
        Caption = 'Pos de Dig ( n_d )'
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object Digitos1: TMenuItem
        Caption = 'Digitos'
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object NroMayor1: TMenuItem
        Caption = 'Dig Mayor ( n )'
        OnClick = NroMayor1Click
      end
      object ObtenerDigitoMayor1: TMenuItem
        Caption = 'Dig Mayor'
        OnClick = ObtenerDigitoMayor1Click
      end
      object PrimDig1: TMenuItem
        Caption = 'Prim_Dig'
        OnClick = PrimDig1Click
      end
      object UltimoDig1: TMenuItem
        Caption = 'Ultimo Dig'
        OnClick = UltimoDig1Click
      end
      object ObtenerelPrimerDig1: TMenuItem
        Caption = 'Dig Menor'
      end
      object NrosUnicosn1: TMenuItem
        Caption = 'Nros Unicos ( n )'
        OnClick = NrosUnicosn1Click
      end
      object DigPos2: TMenuItem
        Caption = 'Dig_de_Pos (pos)'
        OnClick = DigPos2Click
      end
      object PosdelDigito1: TMenuItem
        Caption = 'Pos del Digito'
        OnClick = PosdelDigito1Click
      end
      object NumeroPar1: TMenuItem
        Caption = 'Numero Par'
        OnClick = NumeroPar1Click
      end
      object NumeroImpar1: TMenuItem
        Caption = 'Numero Impar'
        OnClick = NumeroImpar1Click
      end
    end
    object Modificar1: TMenuItem
      Caption = '    Modificar   '
      object DigPos1: TMenuItem
        Caption = 'Modificar Dig dando  Pos'
        OnClick = DigPos1Click
      end
    end
    object FuncionesExtras1: TMenuItem
      Caption = '    Funciones Extras    '
      object EstaOrdenado1: TMenuItem
        Caption = 'Esta Ordenado'
        OnClick = EstaOrdenado1Click
      end
      object OrdenarAscendente1: TMenuItem
        Caption = 'Ordenar Ascendente'
        OnClick = OrdenarAscendente1Click
      end
      object Posicioninicial1: TMenuItem
        Caption = 'Posicion inicial'
        OnClick = Posicioninicial1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Conversiones1: TMenuItem
        Caption = 'Extras & Demos'
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object SegundoMayor1: TMenuItem
        Caption = 'Segundo Mayor'
        OnClick = SegundoMayor1Click
      end
      object CantidaddenumerosIguales1: TMenuItem
        Caption = 'Cantidad de numeros Iguales'
        OnClick = CantidaddenumerosIguales1Click
      end
      object CantidaddeFrecuenciaMayor1: TMenuItem
        Caption = 'Cantidad de Frecuencia Mayor'
        OnClick = CantidaddeFrecuenciaMayor1Click
      end
      object Nrodefrecuecimsy1: TMenuItem
        Caption = 'Nro de frecueci msy'
        OnClick = Nrodefrecuecimsy1Click
      end
      object OrdenarPorfrecuencia1: TMenuItem
        Caption = 'Ordenar Por frecuencia'
        OnClick = OrdenarPorfrecuencia1Click
      end
      object CantidaddeDigitosIguales1: TMenuItem
        Caption = 'Cantidad de Digitos Iguales juntos'
        OnClick = CantidaddeDigitosIguales1Click
      end
      object Solopares1: TMenuItem
        Caption = 'Solo pares'
        OnClick = Solopares1Click
      end
      object InvertirParm1: TMenuItem
        Caption = 'Invertir {Parm}'
        OnClick = InvertirParm1Click
      end
    end
    object Probando1: TMenuItem
      Caption = 'Probando'
      object ParesimparesSeparados1: TMenuItem
        Caption = 'Pares impares Separados'
        OnClick = ParesimparesSeparados1Click
      end
      object Mul111: TMenuItem
        Caption = 'Mul 11'
        OnClick = Mul111Click
      end
      object Soniguales1: TMenuItem
        Caption = 'Son iguales'
        OnClick = Soniguales1Click
      end
      object Secuencia1: TMenuItem
        Caption = 'Secuencia'
        OnClick = Secuencia1Click
      end
      object Potenciabp1: TMenuItem
        Caption = 'Potencia (b,p)'
        OnClick = Potenciabp1Click
      end
      object BinarioDecimal1: TMenuItem
        Caption = 'Binario Decimal'
        OnClick = BinarioDecimal1Click
      end
      object Decimalbinario1: TMenuItem
        Caption = 'Decimal Binario'
        OnClick = Decimalbinario1Click
      end
      object ConvaBaseN1: TMenuItem
        Caption = 'Conv a Base N'
        OnClick = ConvaBaseN1Click
      end
    end
  end
end
