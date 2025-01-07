#INCLUDE "TOTVS.CH"

/*
FAÇA OS NUMEROS PRIMOS ENTRE 1 E 100
*/

User Function logica001()
    Local nNum:= 0
    Local nContaDiv := 0
    lOCAL nI        := 0
    lOCAL cResposta :=""

    for nNum:= 1 to 100
        nContaDiv := 0
        For nI := 1 to nNum
            If nNum % nI == 0
                nContaDiv++
            EndIF
        Next nI

        if nContaDiv == 2
            cResposta += cValtochar(nNum) +CRLF
        EndIF
    next nNum

    alert(cResposta)
Return

  