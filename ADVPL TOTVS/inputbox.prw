#INCLUDE "TOTVS.CH"

// User Function xTstSX1()
//     if Pergunte("XPAT", .T., "Perguntas")
//         Alert("Achou as perguntas ")
//     else
//         Alert("Não localizou as perguntas")
//     EndIF
// Return

//precisa de 2 arrays obrigatorios, pergs e resps
User Function xParambox()


    Local aPergs        := {}
    Local aResps        := {}
    Local aOpcoes       := {"1 - Ruim", "2 - Regular", "3 - Bom", "4 - Ótimo"}

    //variable does not exist CFILANT on XFILIAL(MATXFUNA.PRX) 
    
    //
    //[1] - Tipo 1 - MsGet
    //[2] - Descriçao
    //[3] - String contendo o inicializador do campo
    //[4] - String contendo a picture do campo
    //[5] - String contendo a validacao
    //[6] - consulta F3
    //[7] - string contendo a validaçao when
    //[8] - tamanho do MsGet
    //[9] - Flag .T. / F.F Parameetro obrigatorio?

    aAdd(aPergs, {1, "Produto", Space(15), "@!", "ExistCpo('SB1', mv_par01)", "SB1", "", 50, .T.})//EXIST EXIGE ALGO VALIDO E VAI TER LUPINHA
    aAdd(aPergs, {1, "Valor", 0, "@E 9,999.99", "mv_par02>0", "", "", 20, .F.})
    aAdd(aPergs, {1,"Data", SToD(""), "", "", "", "", 50, .T.})

    //[1] - Tipo 2- Combo
    //[2] - Descriçao
    //[3] - Numerico contendo a opçao inicial do combo
    //[4] - Array contendo as opçoes do combo
    //[5] - tamanho do combo
    //[6] - validacao
    //[7] -  Flag .T. / F.F Parameetro obrigatorio?

    aAdd(aPergs, {2, "Escolha uma opção", "1-Ruim", aOpcoes, 50, "", .F.})

    //[1] - Tipo 3 - Radio
    //[2] - Descriçao
    //[3] - Numerico contendo a opçao inicial do Radio
    //[4] - Array contendo as opçoes do radio
    //[5] - tamanho do radio
    //[6] - validacao
    //[7] -  Flag .T. / F.F Parameetro obrigatorio?
    aAdd(aPergs, {3, "Mostra deletados", 1, {"Sim", "Não"}, 50, "", .F.})

    //[1] - Tipo 4 - Say + Checkbox
    //[2] - Descriçao
    //[3] - Indicador logico contendo o inicial do check
    //[4] - texto do check
    //[5] - tamanho do radio
    //[6] - validacao
    //[7] -  Flag .T. / F.F Parameetro obrigatorio?
    aAdd(aPergs, {4, "Marca todos?", .F., "Marque todos se necessário", 90, "", .F.})

    //[1] - Tipo 5 - SOMENTE checkbox 
    //[2] - Descricao
    //[3] - Indicador logico contendo o inicial do check
    //[4] - tamanho do radio
    //[5] - validacao
    //[6] - Flag .T. / F.F Parameetro obrigatorio?
    aAdd(aPergs,{5, "MARCA TODOS?", .F., 50,"", .F.})

    //[1] - Tipo 6 - Arquivo
    //[2] - Descricao
    //[3] - String contendo o inicializador do campo
    //[4] - String contendo a Picture do campo
    //[5] - String contendo a validacao 
    //[6] - String contendo a validacao when
    //[7] - tamanho do MsGet
    //[8] - Flag .T./.F. Parametro obrigatorio?
    //[9] - Testo contendo os tipos de arquivo, exemplo: "arquivos .csv | *.csv" 
    //[10] - diretorio inicial do cGetFile
    //[11]- Numero relativo a visuzaliz podendo ser por diretorio ou por arquivo (0,1,2,4,8,16,32,64,128)
    aAdd(aPergs,{6, "Informe o arquivo", "","","","", 80, .F., "Arquivos .CSV |*.CSV", "", GETF_LOCALHARD+GETF_NETWORKDRIVE})

    //[1] - Tipo 7 - Montagem de expressao de filtro
    //[2] - Descricao
    //[3] - Alias da tabela
    //[4] - Filtro inicial
    aAdd(aPergs, {7, "Monte o filtro", "SX5", "X5_FILIAL==xFilial('SX5')"})

    //[1] - Tipo 8 - MsGet Password
    //[2] - Descricao
    //[3] - String contendo o inicializador do campo
    //[4] - String contendo a picture do campo
    //[5] - String contendo a validacao
    //[6] - consulta F3
    //[7] - String contendo a validacao When
    //[8] - tamanho do MsGet
    //[9] - Flag .T. / F.F Parameetro obrigatorio?
    aAdd(aPergs, {8, "Digite a senha", Space(15), "", "", "", "", 80, .F.})

    //[1] - Tipo 9 - Somente uma mensagem, formato de titulo
    //[2] - Texto descritivo
    //[3] - Largura do texto
    //[4] - Altura do texto
    //[5] - Valor logico sendo: .T. => fonte tipo VERDANA e .F. fonte tipo ARIAL
    aAdd(aPergs, {9, "Texto demonstrativo!", 150, 7, .T.})

    //[1] - Tipo 10 - Range de busca
    //[2] - Titulo
    //[3] - Inicializador padrao
    //[4] - Consulta F3
    //[5] - Tamanho do GET
    //[6] - Tipo do dado, somente (C=caractere e D=data)
    //[7] - Tamanho do espaço
    //[8] - Condiçao when
    aAdd(aPergs, {10, "Cliente", Space(6), "SA1", 40, "C", 6, ".T."})

    //[1] - Tipo 11 - MultiGet (memo)
    //[2] - Descriçao
    //[3] - Inicializador padrao
    //[4] - Validaçao
    //[5] - when
    //[6] - campo com preenchimento aleatorio .T. = SIM .F. = NÃO (INCLUIR A VALIDAÇAO NA FUNÇAO PARAMBOX)
    aAdd(aPergs, {11,  "Informe o motivo", "", ".T.", ".T.",.T.})

    //PARAMETROS DA FUNÇÃO PARAMBOX()
    //...............................
    //1 - < aParametros >   - Vetor com as configurações
    //2 - < cTitle >        - Titulo da janela
    //3 - < aRet >          - Vetor passador por referencia que contem o retorno dos parametros
    //4 - < bOk >           -code block para validar o botao OK
    //5 - < A Buttons >     - Vetor com mais botões além dos botões de OK E CANCEL
    //6 - < lCentered >     - centralizar a janela
    //7 - <nPosX >          - Se não centralizar janela coordenada X para inicio  
    //8 - <nPosX >          - Se não centralizar janela coordenada Y para inicio
    //9 - < oDlgWizard >    - Utiliza o objeto da janela ativa
    //10 - < cLoad >        -Nome do pergil se caso for carregar
    //11 - < lCanSave >     - Salvar os dados informados nos parametros por perfil
    //12 - < lUserSave >    - Configuração por usuário

    //Caso alguns parametros para a função nao seja passada sera considerado DEFAULS as seguintes abaixo:
    //DEFAULT bOK   := {|| (.T.)}
    //DEFAULT aButtons  :={}
    //DEFAULT lCentred := .T.
    //DEFAULT nPosX := 0
    //DEFAULT nPosY := 0
    //DEFACUL cLoad    := ProcName(1)
    //DEFAULT lCanSave := .T.
    //DEFAUL lUserSave := .T.

    If Parambox(aPergs, "Meu InputBox -", @aResps)
        Alert("Usuário clicou no OK")
    else
        Alert("Operação cancelada")
    EndIf

Return
