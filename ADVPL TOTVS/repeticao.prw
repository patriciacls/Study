#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} repeticao.prw
Exemplo de uso de decisao
@author     Patricia Santos
@since      01/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------


User function repeticao()
    Local nI  := 1
    Local aNome := {}
    
    
    AAdd(aNome, "joao")
    AAdd(aNome, "jose")
    AAdd(aNome, "paulo")
    AAdd(aNome, "andré")
    AAdd(aNome, "mauricio")
    AAdd(aNome, "marcio")
    AAdd(aNome, "daniel")

    while nI <= Len(aNome)
        alert(aNome[nI])
        
        if nI ==  2
            Exit
        EndIf

        nI++
        
    EndDo

    for nI := 1 To len(aNome)
        alert(ANome[nI])

        //If nI = 2
        //    Exit
        //EndIf
    Next nI
Return

// //exemplo de relatorio usando 

// //User function repeticao()
//     Local cQuery := ""
//     Local cAliasTop := ""

//     cQuery :=    "SELECT " + CRLF
//     cQuery +=    "A1_NOME" + CRLF
//     cQuery +=    ",A1_CGC" + CRLF
//     cQuery +=    ",A1_EST" + CRLF
//     cQuery +=    "FROM" + CRLF
//     cQuery +=    "SA1010 SA1010" + CRLF
//     cQuery +=    "WHERE " + CRLF
//     cQuery +=    "A1_EST = 'SP'" + CRLF
//     cQuery +=    "AND SA1.D_E_L_E_T_ ='' " + CRLF
//     cAliasTop := MPSysOpenQuery(cQuery)


//     while ! (cAliasTop) -> (EOF())
//         If (cAliasTop) -> A1_MSBLQL == '1'
//             Loop //prox linha
//         Else
//         //aqui faço algo...
//         (cAliasTop) -> (DbSkip())
//     ENDdo
// RETURN
