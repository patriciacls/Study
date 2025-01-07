#INCLUDE "Protheus.ch"
#INCLUDE "TOTVS.CH"

Static nPI  := 3.14

//DECLARACAO VARIAVEIS PUBLICAS OU ESTÁTICAS
//-------------------------------------------------------------
/* {Protheus.doc} VarEscop
Exemplo pra testar escopo de variaveis
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function VarEscop(nRaio)
    Local nTamCircun       := 0

    calcTamCirc(@nRaio, @nTamCircun)
    calcTamCir(@nRaio)
Return


//-------------------------------------------------------------
/* {Protheus.doc} calcTamCirc
Calcula o comprimento da circunferência
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

Static Function calcTamCirc(nRaio, nTamCircun)
    nTamCircun  := 2 * nPI * nRaio
    _nResult    :=nTamCircun
Return
