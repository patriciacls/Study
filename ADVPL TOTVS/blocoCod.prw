#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} blocoCod.prw
Exemplo de como utilizar blocos de código
@author     Patricia Santos
@since      03/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function blocoCod()

    Local cTeste        := "teste do bloco!"
    Local Nnum1     := 10
    Local Nnum2     := 30
    Local nResult   := 0
    Local aNumeros  := {4,3}
    Local bBloco1   := {|| cTeste}
    Local bBloco2   := {|| nNum1 + nNum2}
    Local bBloco3   := {|cMsg| Alert(cMsg)}
    Local bBloco4   := {|x,y| Alert(cValtoChar(x+y)),Alert(cValtoChar(x*y)), Alert(cValtoChar(x/y))}
    Local bBloco5   := {|x,y| x < y}


    Alert(Eval(bBloco1))
    nResult := Eval(bBloco2)


    //eval executa o bloco
    Eval(bBloco3, "!")
    Eval(bBloco3, "Mensagem 2")
    Eval(bBloco4, 12, 3)

    u_Teste3({|| u_Teste2()})

    ordena(aNumeros, bBloco5)
Return

User Function teste2()
    Alert("Executando User Function TESTE2")
Return


User function teste3(bBloco)
    Eval(bBloco)
RETURN

Static Function ordena(aNumeros, bBloco)
    Local nAux  := 0

    If ! Eval(bBloco, aNumeros[1], aNumeros[2])
        nAux    := aNumeros[1]
        aNumeros[1] := aNumeros[2]
        aNumeros[2] := nAux
    EndIf

Return
