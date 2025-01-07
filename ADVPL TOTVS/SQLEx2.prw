#INCLUDE "protheus.ch"
//-------------------------------------------------------------
/* {Protheus.doc} SQLEx2.prw
integrando o advpl e sql, aula 2
@author     Patricia Santos
@since      03/04/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function SQLEx2(cCodCli,  cLojCli)

    Local aArea     := FWGetArea()
    Local aSA1      :=  SA1->(FWGetArea())

    //DbSelectArea("SA1")//para abrir uma area que nao esta aberta, pq quando vc abre o pth ele ja abre td
    //DbCloseArea("SA1")//

    SA1->(DbSetOrder(1))//numero da ordem do indice SIX
    If SA1->(DbSeek(xFilial("SA1") + cCodCli + cLojCli))
        Alert("Cliente encontrado."+ (SA1->A1_NOME))
        SA3->(DbSetOrder(1))
        If SA3->(DbSeek(xFilial("SA3") + SA1-> A1_VEND))
            Alert("Vendedor encontrado "+ AllTrim(SA3->A3_NOME))
        EndIf        
    EndIf
    
    FWRestArea(aSA1)
    FWRestArea(aArea)




Return
