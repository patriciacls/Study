#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} datas.prw
Exemplo de  Função em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function Datas()
    Local dDataAtual    := Date()
//    Local cHora         := Time()
    Local cData         := ""
//  Local nDiasAcres    := 0
    Local dDataRes      := SToD("")
    Local nResp         := 0
//    Local cResp         := ""

    //converte uma data par texto no fomrato DD/MM/AAAA
    cData   := DToC(dDataAtual)

    //converte um texto no formato SS/MM/AAA para data
    dDataRes    :=CToD("31/12/2022")

    //data para texto no formato "AAAAMMDD" - FORMA P GRAVA NAS TABELAS PROTHEUS!
    cData       := DToS(dDataAtual)

    //retorna data sem considerar final de semana e feriado
    dDataRes    := DataValida(CToD("31/12/2023"), .T.) 
    dDataRes    := DataValida(CToD("31/12/2022"), .F.)

    //retorna o numero do dia e data
    nResp       := day(dDataAtual)

    //retorna o numero do mes da data
    nResp       := month(dDataAtual)

    //retorna o ano
    nResp       := year(dDataAtual)

    //nome do mes
    nResp       := mesextenso(dDataAtual)

    //

Return


