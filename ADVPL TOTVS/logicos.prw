#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} logicos.pwr
Exemplo de funções e apresentando sintaxe
@author     Patricia Santos
@since      25/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function logicos()
    Local lResult       := .T.
    Local lTeste2       := .T.
    Local lTeste3       := .T.
    Local lTeste1       := .T.
    Local lAprov        := .T.
    LOCAL nSaldo        := 100
    Local nVlrContrato  := 40
    Local cRisco        := "B"
    Local lBloqueado    := .T.

    lResult     := .F.
    lResult     := 1 <= 2
    lResult     := "A" > "B"
    lResult     := CtoD("26/01/2024") < Date()

    //E
    lResult     := lTeste1 .and. lTeste2 .and. lTeste3

    //nao
    lResult     := .not. lTeste2
    lResult     := !(upper("carros") == "CaRRos")

    //e com nao
    lResult     := lTeste1 .and. (lTeste2 .or. lTeste3)

    //ex dia dia
    lAprov      := ! lBloqueado .and. (nSaldo >= nVlrContrato .or. cRisco == "A")
Return
