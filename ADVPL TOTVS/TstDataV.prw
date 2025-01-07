#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} TstDataV.prw
Usando a fun��o xDataValida para classificar se � ano bissexto
ou n�o.

@author     Patricia Santos
@since      26/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
Static Function TstDataV()
    Local aOpcoes   := {"Pr�ximo dia �til","Dia anterior"}
    Local aPergs    := {}
    Local aResps    := {}
    Local sDataRes  := {}
    lOCAL dData     := SToD("")
    Local lContinua := .T.
    Local lAdiantar := .T.

    aAdd(aPergs, {1,"Informe uma data:", SToD(""), "", "", "", "", 50, .T.})
    aAdd(aPergs, {2, "Se fim de semana ou feriado? ", "Pr�ximo dia �til", aOpcoes, 50, "", .F.})

    while lContinua
        IF PARAMBOX(aPergs, "Par�metro -", @aResps)
            dData   := aResps[1]
            lAdiantar := aResps[2] == "Pr�ximo dia �til"
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
