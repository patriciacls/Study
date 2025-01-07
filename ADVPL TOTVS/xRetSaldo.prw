//-------------------------------------------------------------
/* {Protheus.doc} xRetSaldo.prw
Função apra integrar ao gatilho C6-LOCAL /C6_XDISPO
    U_XRETSALDO(M->C6_PRODUTO,M->C6_LOCAL)                                                              

@author     Patricia Santos
@since      04/04/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function xRetSaldo(cProduto, cArmazem)
Local cQuery:= ""
Local cAliasTop := ""
Local nRet := 0

cQuery := "SELECT  "+ CRLF
cQuery += "    B2_QATU - B2_RESERVA DISPONIVEL "+ CRLF
cQuery += "FROM " + RetSQLName("SB2") + " SB2 "+ CRLF
cQuery += "WHERE  "+ CRLF'
cQuery += "SB2.D_E_L_E_T_= ' ' "+ CRLF
cQuery += "AND B2_FILIAL =  '" + xFilial("SB2") + "' " + CRLF
cQuery += "AND B2_LOCAL = '" + cArmazem + "' "+ CRLF
cQuery += "AND B2_COD = '" + cProduto + "' "+ CRLF
cAliasTop := MPSysOpenQuery(cQuery)

If ! (cAliasTop) -> (EOF())
    nRet    := (cAliasTop) -> DISPONIVEL
EndIf

(cAliasTop)->(DbCloseArea())

Return nRet
