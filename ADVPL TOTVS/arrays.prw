#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

//-------------------------------------------------------------
/* {Protheus.doc} arrays.prw
Exemplo de funções e arrays
@author     Patricia Santos
@since      25/01/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function arrays()

    Local nTam        := 0 
    Local nPos        := 0
    Local nConteudo   := ""
    Local aConteudo   := {}
    Local aTabela     := {}
    Local aTitulo     := {}    
    Local aPessoa     := {}
    //array inicia com prefixo a

    //inicializar 
    Local aLetras     := {}
    Local aLetras2     := {}
    Local aLetras3     := {}
    //inicializar preenchido
    Local aLetras    := {"a","b","c","d","e","f","g","h"}
  
    //pode ter tipos diferentes
    Local aPessoa       := {"Patricia", CToD("29/00/0000"), 1.67, .T., {"Analista de suporte", "Analista Protheus", "Dev. Junior"},{|| U_Pat}}
    //conteudo padrao Nil
    Local aTitulo       :=array(5, space(10))
    //se passar parametros numericos gera multidimensional
    Local aTabela       := array(2, 4, space(05))
    //referencia de outro array
    Local aLetras2       := aLetras
    //copiando array
    Local aaLetras3       := Aclone(aPessoa[1])
    //len
    nTam        := Len(aTabela)
    nTam        := Len(aTabela[1])
    //pegar conteudo de array
    cConteudo   := aPessoa[2]
    cConteudo   := aPessoa[4]

    Alert(aLetras[1])
    aLetras[1]  := "z"
    Alert(aLetras[1] + "," + aLetras[1])

    //preenchendo estilo matriz
    aTabela[1][1]   := "abacaxi"
    aTabela[1][2]   := 10.00
    aTabela[1][3]   := "unidade"
    aTabela[1][4]   := CToD("24/04/2024")

    aTabela[2][1]   := "morango"
    aTabela[2][2]   := 8.00
    aTabela[2][3]   := "caixa"
    aTabela[2][4]   := CToD("25/04/2024")
    
    //função AAdd
    AAdd(aTabela,{"banana", 7.00, "quilo", CToD("25/04/2024")})
    AAdd(aTabela,{"kiwi", 9.00, "quilo", CToD("20/04/2024")})
    AAdd(aTabela,{"melancia", 10.00, "unidade", CToD("25/04/2024")})

    //ultimo do array
    nPos    := aScan(aTabela, {|x| X[1] == "banana"})
    nPos    := aScan(aTabela, {|x| X[3] == "quilo"})
    
    //ordenar
    //1 dimensao
    ASort(aLetras)

    ASort(aTabela, , , {|x,y| x[1] < y[1] })
    ASort(aTabela, , , {|x,y| x[1] < y[1] .or. (x[1] == y[1] .and. x[2] < y[2] )})


    //
    //replicar array de outra forma
    aExemplo    := {1, 2, {11, 22, 33}}
    aBkp        := {, , {, ,}}
    aCopy(aExemplo, aBkp)
    aBkp        :={}
    aCopy(aExemplo, aBkp)

    //deleta elemento de array
    aDel(aExemplo,2)

    //aumenta ou diminui tamanho do array
    aExemplo    := {1, 2, 3, 4}
    aSize(aExemplo,5)
    aSize(aExemplo,2)

    //preencher array
    aExemplo    := Array(10)
    AFill(aExemplo, "carro", /*nStart*/,/*nCount*/)
    AFill(aExemplo, "carro", 10, 5)
    AFill(aExemplo, .T., 10, 5)

    //INCLUI um nulo na posição e empurra os demais descartando o ultimo
    aExemplo        := {1,2,3,4,5,6}
    AIns(aExemplo,3)
    AIns(aExemplo,1)
    AIns(aExemplo,2)

    //procurar valor no array com AscanX
    aExemplo        := {}
    AAdd( aExemplo, "banana")
    AAdd( aExemplo, "maca")
    AAdd( aExemplo, "pera")
    AAdd( aExemplo, "limao")
    AAdd( aExemplo, "abacaxi")
    AAdd( aExemplo, "laranja")
    AAdd( aExemplo, "mamao")
    AAdd( aExemplo, "graviola")

    nPos    := AscanX( aExemplo, { |x, y | x == "abacaxi" .and. y <= 1 } )
    nPos    := AscanX( aExemplo, { |x, y | x == "abacaxi" .and. y <= 5 } )
    nPos    := AscanX( aExemplo, { |x, y | x == "abacaxi" .and. y <= 6 }, 2 )
    nPos    := AscanX( aExemplo, { |x, y | x == "abacaxi" .and. y <= 6 }, 1, 4)
    
RETURN
