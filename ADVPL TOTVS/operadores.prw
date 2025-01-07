#INCLUDE "Protheus.ch"
#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} operadores()
Aprendendo tipos de dados: operadores
@author     Patricia Santos
@since      17/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function Operadores()
//Notação Húngara, sempre que for variaveis numericas iniciar nome com nNumero
//ponto flutuante é com ponto e nao virgula
//precisao afetada a partir de 15 algarismos

    Local nNum1         :=2
    Local nNum2         :=5
    Local cTexto1       :=""
    Local cTexto2       :=""
    Local cResposta     :=""
    Local lResposta     :=.T.


    //Operadores de String
    cResposta := "Joao" + "Leao" //Concatena
    cResposta := "patricia correia dev " - "junior "

    cTexto1    := "Patricia"
    cTexto2    := "João, Paulo, Pedro, Tiago, Patricia"
    lResposta := cTexto1 $ cTexto2 //comparar se esta contido


    //Operadores de comparação
    lResposta   :=nNum1 = nNum2  //igual
    lResposta   :=nNum1 == nNum2 //exatamente igual
Return
