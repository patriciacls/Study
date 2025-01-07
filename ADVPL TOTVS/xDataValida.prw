#INCLUDE "TOTVS.CH"
//-------------------------------------------------------------
/* {Protheus.doc} xDataValida.prw
Função que avalia a data de entrada e retorna o próximo dia 
útil

@author     Patricia Santos
@since      26/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

User Function xDataValida(dData, lAfter)
    Local aFeriados     := LoadFeriados()
    Local  dDataRes     := dData

    Default dData   := Date()
    Default lAfter  := .T.

    while .T.
        If dow(dDataRes) == 1 .or. dow(dDataRes) == 7
            if lAfter
                if dow(dDataRes) == 1 //dow() == domingo a sabado, começando 1 em domingo
                    dDataRes := dDataRes + 1
                elseif dow(dDataRes) == 7
                    dDataRes := dDataRes + 2
                EndIf
            else   
                if dow(dDataRes) == 1
                    dDataRes := dDataRes - 2
                elseif dow(dDataRes) == 7
                    dDataRes := dDataRes - 1
                EndIf
            EndIF
        EndIf
        //pra percorrer o array de feriados
        nPos := AScan(aFeriados, {|x| x[1] == dDataRes})
        if nPos > 0
            dDataRes  := aFeriados[nPos][1]
            if lAfter
                if dow(dDataRes) == 6 //se for sexta
                    dDataRes+=3        //somo 3 dias
                else 
                    dDataRes+=1 //se for ao contrario, soma 1 pra ir pro proximo dia util
                EndIf
            else // se for pra atrasar
                if dow(dDataRes) == 2 //e for segunda
                    dDataRes -= 3 //subtraio 3 dias pra ultima sexta
                else 
                    dDataRes -= 1//senao só jogo pro ultimo dia util
                EndIf
            EndIF
        else
            exit
        EndIF
    EndDo

Return

//-------------------------------------------------------------
/* {Protheus.doc} LoadFeriados()
array de feriados

@author     Patricia Santos
@since      26/02/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

Static Function LoadFeriados()
    Local aRetorno := {}

    AAdd(aRetorno, {CToD("01/01/2024"), "ANO-NOVO FERIADO UNIVERSAL"})
    AAdd(aRetorno, {CToD("20/02/2024"), "CARNAVAL"})
    AAdd(aRetorno, {CToD("21/02/2024"), "CARNAVAL"})
    AAdd(aRetorno, {CToD("07/04/2024"), "SEXTA-FEIRA SANTA"})
    AAdd(aRetorno, {CToD("21/04/2024"), "TIRADENTES"})
    AAdd(aRetorno, {CToD("01/05/2024"), "DIA DO TRABALHO"})
    AAdd(aRetorno, {CToD("09/07/2024"), "REVOLUÇÃO CONSTITUCIONALISTA"})
    AAdd(aRetorno, {CToD("07/09/2024"), "INDEPENDENCIA"})
    AAdd(aRetorno, {CToD("12/10/2024"), "NOSSA SENHORA APARECIDA"})
    AAdd(aRetorno, {CToD("02/11/2024"), "FINADOS"})
    AAdd(aRetorno, {CToD("15/11/2024"), "PROCLAMAÇAO DA REPUBLICA"})
    AAdd(aRetorno, {CToD("2O/11/2024"), "CONSCIENCIA NEGRA"})
    AAdd(aRetorno, {CToD("24/12/2024"), "VESPERA DE NATAL"})
    AAdd(aRetorno, {CToD("25/12/2024"), "NATAL"})
    AAdd(aRetorno, {CToD("31/12/2024"), "VÉSPERA DE ANO-NOVO FERIADO UNIVERSAL"})

return aRetorno
