LOWER
UPPER
CONCAT(string1+string2+stringN) STRING DE JUNTAR VALORES
RIGHT( STRING, nºQtdCaractere)
LEFT ( STRING, nºQtdCaractere)
REPLICATE ( string_expression, interger_expression) --coloca um texto pra repetir N vezes
SUBSTRING (expression, start, lenght) ---slicing
ltrim/rtrim/trim --espaços em branco
REPLACE(string expression, o que vc quer substituir, pelo que quer substituir) --SUBSTITUI O QUE VC INDICAR PELO O QUE VC QUISER NO TEXTO, NO CAMPO 
len() --tamanho

SELECT NOME, CONCAT([ENDERECO 1],', ', BAIRRO, ', ',CIDADE, ', ',ESTADO,', ',CEP) ENDERECO_COMPLETO FROM CLIENTES

SELECT NOME, SUBSTRING(NOME, 1, CHARINDEX(' ', NOME, 1)) FROM CLIENTES;