#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} TstDataV.prw
Usando a função xDataValida para classificar se é ano bissexto
ou não.

@author     Patricia Santos
@since      26/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
Static Function TstDataV()
    Local aOpcoes   := {"Próximo dia útil","Dia anterior"}
    Local aPergs    := {}
    Local aResps    := {}
    Local sDataRes  := {}
    lOCAL dData     := SToD("")
    Local lContinua := .T.
    Local lAdiantar := .T.

    aAdd(aPergs, {1,"Informe uma data:", SToD(""), "", "", "", "", 50, .T.})
    aAdd(aPergs, {2, "Se fim de semana ou feriado? ", "Próximo dia útil", aOpcoes, 50, "", .F.})

    while lContinua
        IF PARAMBOX(aPergs, "Parâmetro -", @aResps)
            dData   := aResps[1]
            lAdiantar := aResps[2] == "Próximo dia útil"
            dData : U_xDataValida(dData, lAdiantar)
            Alert(DtoC(dData))
        EndIf

        If MsgYesNo ("Deseja realizar um novo teste?")
            dData := SToD("")
        else
            lContinua := .F.
        EndIF
    EndDo
    //retorna data sem considerar final de semana e feriado
    //dDataRes    := DataValida(CToD("31/12/2023"), .T.) 
    //dDataRes    := DataValida(CToD("31/12/2022"), .F.)
    
return
