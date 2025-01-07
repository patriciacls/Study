#INCLUDE "protheus.ch"
//-------------------------------------------------------------
/* {Protheus.doc} arquivosTXT.prw
exemplo de função pra ler txt
@author     Patricia Santos
@since      02/03/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------
User Function arqvsCSV()

    Local aPergs        := {}
    Local aResps        := {}
    Local cTitulo       := "Operar aquivos TXT"
    Local cArquivo      := ""
    
    aAdd(aPergs, {6,"Informe o Arquivo:" , "", "", "", "", 80, .F., "Arquivos .CSV |*.CSV", "",GETF_LOCALHARD+GETF_NETWORKDRIVE})//DISCO LOCAL OU UNIDADE DE REDE

    If  Parambox(aPergs, cTitulo, @aResps)
        cArquivo := allTrim(aResps[1])
        If File(cArquivo) //file pega o caminho pra ver se existe, retorna T ou F
            xReadArq(@cArquivo)
        else    
            HELP(,,'Atenção',,"Caminho do arquivo inválido.", 1,0,,,,,.F.,{"Verifique se o arquivo correto"})
        EndIf
    EndIf


Return

//-------------------------------------------------------------
/* {Protheus.doc} cReadArq
lê o aquivo de dados
@author     Patricia Santos
@since      02/03/2024
@version    12/superior (LOCALHOST)    
*/
//-------------------------------------------------------------

Static Function xReadArq(cArquivo)
    Local nHandle       := 0 //gravar numeral aleatorio pra esse arquivo
    Local cLinha        := ""  //pra gravar a linha nessa variavel
    Local aDados        := {}
    Local aCabec        :={}
    Local lPrimLin      := .T.
    //variaveis pra trabalhar com o Log
    Local cArqLog       := "LogProc " + DToS(Date()) + StrTran(time(), ":", "") + ".log"
    Local cDir          := "C:\Log_PTHTST\"
    Local nDir          := -1
    Local cLogProc      := ""

    If ! ExistDir(cDir)
        nDir := MakeDir(cDir)//SE DER CERTO RETORNA 0
        if nDir != 0
            HELP(,,"Falha",,"Não foi possível criar diretório. Erro: "+ cValtoChar(FError() ),1,0,,,,,,{"Entre em contato com os admnistradores do sistema e informe o programa leituraArqvs.prw"})
        EndIf
    EndIf
    //funções de arquivo = arquivos ft
    nHandle := ft_fUse(cArquivo) // se ler e achar vai retornar diferente de 0 por isso inicialzia com -1 pra ser o falso
    If nHandle > 0 
        while ! ft_fEOF()    //ft_fEOF() retorna verdadeiro se for final de arquivo
            cLinha := ft_fReadLn() //O que lê a linha
            if lPrimLin 
                aCabec:= Separa(cLinha,";")
                lPrimLin = .F.
            else
                aDados := Separa(cLinha,";")
                If Empty(aDados[1])
                xProcessa(aDados)// pod colocar dps mas pd estouro de string
            EndIf
            ft_fskip()//pra pular a linha,smp colocar parte da sintaxe
        End Do   
    EndIf
    //fecha o arquivo 
    fClose(nHandle)
Return

Static Function xProcessa(aDados)
    
    Local cNome  := Upper(FwNoAccent(aDados[1]))
    Local nIdade := Val(aDados[2])
    Local cCargo := Upper(FwNoAccent(aDados[3]))
    Local cSetor := Upper(FwNoAccent(aDados[4]))
    Local dDtAdm := Ctod(aDados[5])

Return
