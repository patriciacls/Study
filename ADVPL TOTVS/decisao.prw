#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} decisao.prw
Exemplo de uso de decisao
@author     Patricia Santos
@since      31/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function decisao()
    Local lAprov        := .T.
    Local cResult       := ""
    Local nAumento      := 0

    lAprov      := TesteSe(@cResult)

    nAumento    := TesteCase(1500)
    nAumento    := TesteCase(5000)
    nAumento    := TesteCase(7000)
    nAumento    := TesteCase(10000)

RETURN

Static Function TesteSe(cResult)
    Local cRisco        := "B"
    Local nLimCred      := 15000
    Local dLimVenc      :=CToD("31/12/2023")
    lOCAL nVlrPed       :=  3500
    Local nSalDup       := 7000
    Local nPedLib       := 4000
    Local nSaldoCli     := 0
    Local lRet          := .T.
    Local lAvalia       := .T.
return

//se
    if ! ( Date() <= dLimVenc )
        lRet    := .F.
        cResult := "Limite de crédito vencido."
    EndIf

//se e senao
    If nLimCred > 0 
        cResult := "Limite usado nesta loja"
    else
        cResult := "Limite de outra loja será consumido"
    EndIf

//se, senao se, senao
    If cRisco   == "A"
        lAvalia := .F.
        cResult := "Aprovado por ser cliente risco A"
    elseif cRisco == "E" .And.  ! lAVista
        lRet    := .F.
        cResult := "Reprovado no crédito, cliente risco E. Pagamento apenas à vista."
    else    
        cResult := "Cliente risco B, C ou D. Continuando análise de crédito."
    ENDIF

//se encadeado        
    If lRet .And. lAvalia
        nSaldoCli := nLimCred - nSalDup - nPedLib

        If nVlrPed >= nSaldoCli
            lAprov := .F.
            cResult := "Crédito reprovado, valor de pedido excede o saldo de LC do cliente."
        else
            cResult := "Aprovado no crédito."
        EndIf
    EndIf
return lAprov

Static Function TesteCase(nSalario)

    Local  nRetorno     := 0

    Do case 
        Case nSalario <= 1400
            nRetorno := nSalario * 0.15
        Case nSalario <= 5000
            nRetorno := nSalario * 0.10
        Case nSalario < 10000
            nRetorno := nSalario * 0.07
        Otherwise 
            nRetorno := nSalario * 0.05
    EndCase
Return nRetorno


//
