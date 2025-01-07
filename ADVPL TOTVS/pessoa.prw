#INCLUDE  "Protheus.ch"

/*
{Protheus.doc} Pessoa
Classe para definição de pessoa. 
Verificando objetos em ADVPL
@author Patricia Santos
@since 28/02/2024
@version 12/superior
*/

Class Pessoa
    Data cNomPerson//data pra definir atributo
    Data dNascimento
    Data nSaldoConta

    Method New(cNome, dDtNasc, nSaldoIni) Constructor //method pra definir metodos
    Method PagarConta (nValor)
EndClass

/*
{Protheus.doc} New Constructor de classe
Construtor de classe 
@author Patricia Santos
@since 28/02/2024
@version 12/superior
*/

Method New(cNome    , dDtNasc, nSaldoIni) Class Pessoa
    ::cNomPerson     := cNome
    ::dNascimento   := dDtNasc
    ::nSaldoConta   := nSaldoIni
Return self

Method PagarConta(nValor) CLASS Pessoa
    if  ::nSaldoConta >= nValor
        ::nSaldoConta -= nValor
        alert("conta paga com sucesso.")
    else
        alert("saldo insuficiente. Você tem "+ cValtoChar(nSaldoConta) + " na sua conta, e o valor a pagar é de: " + cValtoChar(nValor)+ ".")
    ENDIF

return     
