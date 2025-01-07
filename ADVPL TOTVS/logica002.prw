#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} logica002.prw
Processa retorno da IsBissexto
@author     Patricia Santos
@since      21/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
User Function  AvaliaBissexto()
    aPergs := {}
    aResps := {}
    nAno   := 0
    
    aAdd(aPergs, {1, "Insira o Ano",0,  "@E 9999", , , , 40, .T.})
   
    WHILE  .T.

        If PARAMBOX(aPergs, "Valida Bissexto", @aResps)
            nAno := aResps[1]

            If IsBissexto(@nAno)
                alert("O ano " + cValtoChar(nAno) + " é bissexto")
            else
                alert("O ano " + cValtoChar(nAno) + " NÃO é bissexto")
            EndIf
        
        EndIf
        IF ! MsgYesNo("Deseja executar a validação de ano bissexto novamente?")
            Exit
        EndIF
    EndDo
return

//-------------------------------------------------------------
/* {Protheus.doc} logica002.prw
Retorna se é bissexto ou nao
@author     Patricia Santos
@since      21/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

Static Function IsBissexto(nAno)
    Local lRet  := .T.

    If nAno % 4 != 0
        lRet = .F.
    EndIf

    If  nAno % 100 == 0 .and. nAno % 400 != 0
        lRet := .F.
    EndIf

Return lRet
