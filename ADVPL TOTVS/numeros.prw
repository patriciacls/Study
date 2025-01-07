#INCLUDE "Protheus.ch"
#INCLUDE "TOTVS.CH"

Static nQtdDecim        :=3
Static nTamStr          := 20

//-------------------------------------------------------------
/* {Protheus.doc} numeros()
Aprendendo tipos de dados: números
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function Numeros()
//Notação Húngara, sempre que for variaveis numericas iniciar nome com nNumero
//ponto flutuante é com ponto e nao virgula
//precisao afetada a partir de 15 algarismos

    Local nQtdDecim    := 2
    Local nNum1        := 0
    Local nNum2        := 0
    Local nNum3        := 0
    Local nNum4        := 0
    Local nRes         := 0
    Local nExpoente    := 0
    Local cResposta    := ""

    //Operações matematicas
    nNum1       := 50
    nNumero2    :=100
    nRes        := nNum1 + nNum2
    nRes        := nNum1 - nNum2
    nRes        := nNum1 / nNum2
    nRes        := nNum1 * nNum4
    nRes        := nNum1 ^ nExpoente
    nRes        := nNum1 % nNum2 //resto

    //priorização msm esquema padrao
    nRes       := ((nNum1+nNum2) * nNum3)/2

    //exatamente igual == 

    nNum1       := 50
    nNum2       := 100
    cResposta   := If (nNum1 == nNum2, "Igual", "Diferente")// If em linha
    // diferente !=
    nNum1       := 50
    nNum2       := 100
    cResposta   := If (nNum1 != nNum2, "Diferente", "Igual")// If em linha

    //PRINCIPAIS FUNÇÕES MANIPULAÇÃO DE NUMEROS - cast

    //retorna valor absoluto
    nNum1       := -560.45
    nRes        := Abs(nNum1)

    //retorna valor inteiro
    nNum1       := 654.33
    nRes        := Int(nNum1)

    //retorna o maior
    nNum1       := 6
    nNum2       := 3
    nRes        := Max(nNum1,nNum2)

    //retorna o menor
    nNum1       := 6
    nNum2       := 3
    nRes        := Min(nNum1,nNum2)

    //DELIMITA DECIMAIS C ARREDONDAMENTO
    nNum1       := 1234.432
    nRES        := rOUND(nNum1, nQtdDecim)

    //gera valor random
    //retorna o maior
    nNum1       := 1
    nNum2       := 100
    nRes        := Randomize(nNum1,nNum2)

    //Concerter texto em numero
    nNum        := "543.8909"
    nRes        := Val(nNum)

    //Converter numero em texto
    nNum1       := 14
    cResposta   := CVALTOCHAR(nNum1)
    
    //converter numero em texto adc espaços a esquerda
    cNum1       := 1743.44
    cResposta   := STR( nNum1, nTamStr, nQtdDecim)

     //converter numero em texto adc zeros a esquerda
    cNum1       := 826.44
    cResposta   := STRzero( nNum1, nTamStr, nQtdDecim)

    //converter numero em texto usando mascara
    nNum1       := 23132131.1133
    cResposta   := "Um dia terei mais de R$ " + Transform(nNum1, "@E 999,999,999.99") + " na conta! Mirar no big milho!" 

    //converter u  numero para caractere corresondenre da tabela ASCII
    cResposta   :=  Chr(68) + Chr(101) +Chr(105) + Chr(120)+ Chr(101)+ Chr(32)+ Chr(115)+;
                    Chr(101)+ Chr(117)+ Chr(32)+ Chr(76)+ Chr(73)+ Chr(75)+ Chr(69)+ Chr(33)
    Alert(cResposta)
RETURN
