#INCLUDE "protheus.ch"
//-------------------------------------------------------------
/* {Protheus.doc} SQLEx1.prw
integrando o advpl e sql, aula 1
@author     Patricia Santos
@since      02/04/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function SQLEx1()
    Local cQuery        := ""
    Local cAliasTop     := ""


    // ctrl+alt+setinhas pra selecionar mais de uma linha
    //fn + end pra ir pro final da linha
    cQuery := "SELECT" + CRLF
    cQuery += "	A1_COD" + CRLF
    cQuery += "	,A1_LOJA" + CRLF
    cQuery += "	,A1_NOME" + CRLF
    cQuery += "	,A1_LC" + CRLF
    cQuery += "	,CAST(SA1.A1_VENCLC AS DATE) VENCVLC" + CRLF
    cQuery += "	,C5_NUM" + CRLF
    cQuery += "	,CAST(C5_EMISSAO AS DATE) EMISSAO_PV" + CRLF
    cQuery += "	,SUM(C6_VALOR) VALOR_PV" + CRLF
    cQuery += "FROM "+ RetSQLName("SC5") +" SC5" + CRLF //pega nome da tabela
    cQuery += "	JOIN "+ RetSQLName("SC6") +" SC6 " + CRLF
    cQuery += "	ON SC6.D_E_L_E_T_='' AND C6_FILIAL = C5_FILIAL AND C6_NUM=C5_NUM" + CRLF
    cQuery += "" + CRLF
    cQuery += "	JOIN "+ RetSQLName("SA1") +" SA1" + CRLF
    cQuery += "	ON A1_FILIAL= ' " + xFilial("SA1") +" '" + CRLF //Retorna filial logada
    cQuery += "	AND A1_COD=C5_CLIENTE" + CRLF
    cQuery += "	AND A1_LOJA = C5_LOJACLI" + CRLF
    cQuery += "" + CRLF
    cQuery += "WHERE " + CRLF
    cQuery += "SC5.D_E_L_E_T_=''" + CRLF
    cQuery += "AND C5_FILIAL ='" + xFilial("SC5") + "' " + CRLF
    cQuery += "GROUP BY " + CRLF
    cQuery += "	A1_COD" + CRLF
    cQuery += "	,A1_LOJA" + CRLF
    cQuery += "	,A1_NOME" + CRLF
    cQuery += "	,A1_LC" + CRLF
    cQuery += "	,SA1.A1_VENCLC " + CRLF
    cQuery += "	,C5_NUM" + CRLF
    cQuery += "	,C5_EMISSAO" + CRLF
    cAliasTop := MPSysOpenQuery(cQuery)

    while (cAliasTop) -> (!EOF())//End Of File
        //tratativ
        U_SQLEx2((cAliasTop)-> A1_COD, (cAliasTop)-> A1_LOJA)
        If (cAliasTop)->A1_LC >= (cAliasTop)->VALOR_PV
            Alert("Pode liberar, cliente tem crédito")
        else
            alert("Cliente sem crédito para este valor de pedido: Valor PV = " + cValtoChar((cAliasTop)->VALOR_PV) + " e LC = " +;
            cValtoChar((cAliasTop)-> A1_LC))
        EndIf


        (cAliasTop)->(DbSkip())
    End do

    (cAliasTop)->(DbCloseArea()) //FECHA A AREA DE DADOS - SELECT

Return
