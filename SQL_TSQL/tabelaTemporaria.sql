CREATE TABLE ##TABELA2 (ID VARCHAR(10), NOME VARCHAR(30));
INSERT INTO ##TABELA2 VALUES ('1','JO�O');
INSERT INTO ##TABELA2 VALUES ('2','KATIA');
SELECT * FROM ##TABELA2
-- # S� NA CONE�AO
-- ## AT� SE FIZER LOGOFF E LOGIN, DEIXA DE FICAR SALVA QUANDO O SERVI�O DO SQL REINICIAR

DECLARE @NUMERO_INICIAL_SEQUENCIA INT, @NUMERO_FINAL_SEQUENCIA INT;
DECLARE @TESTE_NOTA_FISCAL INT;
--QUANDO SABER QDO USAR UMA TABELA TEMPORARIA OU USAR EM UMA VARIAVEL?
DECLARE @TABELA_DE_NUMEROS TABLE ([NUMERO] INT, [STATUS] VARCHAR(20));
SET @NUMERO_INICIAL_SEQUENCIA = 1;
SET @NUMERO_FINAL_SEQUENCIA = 200;

WHILE @NUMERO_INICIAL_SEQUENCIA <= @NUMERO_FINAL_SEQUENCIA
BEGIN
        SELECT @TESTE_NOTA_FISCAL = COUNT(*) FROM NF WHERE 
        NUMERO = @NUMERO_INICIAL_SEQUENCIA;
        IF @TESTE_NOTA_FISCAL = 1
             INSERT INTO @TABELA_DE_NUMEROS ([NUMERO], [STATUS]) 
             VALUES (@NUMERO_INICIAL_SEQUENCIA, '� NOTA FISCAL');
        ELSE
             INSERT INTO @TABELA_DE_NUMEROS ([NUMERO], [STATUS]) 
             VALUES (@NUMERO_INICIAL_SEQUENCIA, 'N�O � NOTA FISCAL');
        SET @NUMERO_INICIAL_SEQUENCIA = @NUMERO_INICIAL_SEQUENCIA + 1;
END;

SELECT * FROM @TABELA_DE_NUMEROS;