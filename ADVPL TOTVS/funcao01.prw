#INCLUDE "Protheus.ch"
#INCLUDE "TOTVS.CH"
//DECLARACAO VARIAVEIS PUBLICAS OU ESTÁTICAS
//-------------------------------------------------------------
/* {Protheus.doc} Ex001
Exemplo de  Função em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
User Function Ex001(nNumEnv)

    //Declarar Variaveis
    Local nNumero := 5
    DEFAULT nNumEnv:= 0

    If nNumEnv>nNumero
        Alert("É maior!")
    else
        alert("É igual ou menor!")
    ENDIF

    Ex001A()

RETURN 

/* {Protheus.doc} Ex001B
Exemplo de  Função em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//------------------------------------------------------------- parte 2 func
User Function Ex001B (nNum1, nNum2, cTpOper, nResultado)
    Local FezConta      := .F.
    DEFAULT nNum1       := 0
    DEFAULT nNum2       := 0
    DEFAULT cTpOper     :=" "

    If !EMPTY( cTpOper )
        If cTpOper == "SOMA"
            nResultado := nNum1+nNum2
            FezConta=.T.
        ENDIF 
    ENDIF
RETURN FezConta
//-------------------------------------------------------------
/* {Protheus.doc} Ex001C
Exemplo de  Função em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function Ex001C
    Public  _nResult    := 15
Return



//-------------------------------------------------------------
/* {Protheus.doc} Ex001A
Exemplo de  Função Estatica em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)
*/
//-------------------------------------------------------------
Static Function Ex001A()

    Local nNumero2 := 10 

Return

//-------------------------------------------------------------
/* {Protheus.doc} Ex002
Exemplo de  Função em ADVPL 
@author     Patricia Santos
@since      16/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
User Function Ex002(nNumEnv)

    //Declarar Variaveis
    Local nNumero := 5
    DEFAULT nNumEnv:= 0

    If nNumEnv>nNumero
        Alert("É maior!")
    else
        alert("É igual ou menor!")
    ENDIF

RETURN 
