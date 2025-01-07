#INCLUDE "Protheus.ch"
#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} strings()
Aprendendo tmanipular ipos de dados: strings
@author     Patricia Santos
@since      18/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function Strings()
    Local cTexto1   := ""
    Local cTexto2   := ""
    Local cResposta :=""
    Local cHTML     :=""
    Local nAt       := 0 
    Local lResposta := .T.
    Local nResp     := 0
    Local aResp     :={}


    //concatenar textos na mesma variavel com quebra de linha
    cResp := "Exemplo de texto linha 1" + CRLF
    cResp += "Exemplo de texto linha 2" + CRLF
    cResp += "Exemplo de texto linha 3" + CRLF

    //remover espaços em branco
    cTexto1     := "    Texto com espaços   "
    cResp   := LTrim(cTexto1)
    cResp   := RTrim(cTexto1)
    cResp   := ALLTRIM(cTexto1)

    //Criar uma string de espaços 
    cResp   :=space(20)

    //Exemplo de quando usar string

    cHTML   := '<a href="https://www.freecodecamp.org/" target= _self">feeCodeCamp</a>'

    //converte um caractere para seu valor mais a esquerda 
    cResposta:= Asc("A")

    //pesquisa a posição de um texto dentro de outro
    cTexto1     := "PATRICIA C L SANTOS"
    nAt         :=  AT( "C", cTexto1)

    //pesquisa a ultima ocorrencia de um texto no outro
    nRat        :=  RAT("A", cTexto1)

    //valida se o caractere é letra
    cTexto1     :="A"
    cTexto2     :="1"
    lResposta   :=ISALPHA( cTexto1 )
    lResposta   :=ISALPHA( cTexto2 )

    //Valida se é número
    lResposta   :=ISDIGIT( cTexto1 )
    lResposta   :=ISDIGIT( cTexto2 )


    //retorna o tamanho da string
    cTexto1   := "PATRICIA CORREIA DE LIMA SANTOS"
    nResp       := Len(cTexto1)

    //retorna lado esquerdo da string
    cResp       :=LEFT( cTexto1, 8 )

    //retorna lado direito da string
    cResp       :=RIGHT( cResp, 6 )

    //maiusculo e minusculo
    cResposta   :=Lower(cTexto1)
    cResposta   :=Upper(cTexto1)

    //centraliza string adicionando caracteres ao entorno
    cTexto1     := "ADVPL"
    cResp   :=PADC(cTexto1, 30,"-")
    //right nd left
    cResp   :=PADL(cTexto1, 30,"*")
    cResp   :=PADR(cTexto1, 30,"")

    //String com replicas de caracter
    cResposta   := REPLICATE("Z", 8 )

    //cria string com separador padrao
    cTexto1     := "João, Tiago, Fernanda, Patricia, Josué, Camila"
    aResp       := StrTokArr(cTexto1, ",")
    aResp       := Separa(cTexto1, ",")

    cTexto1     := "1.592.367,00"
    cResposta   := StrTran(StrTran(cTexto1, ".", ""), ",", ".")

    //slice
    cTexto1     := "Eu tenho coragem!"
    cResposta   := SUBSTR( cTexto1, 1, 2)

    //transforma qualquer valor em string formatada
    cTexto1     := "00000000000923"
    cResp       := Transform(cTexto1, "@R 999.999.999./999-99")
    
Return
