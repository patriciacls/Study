--ARREDONDAMENTO
ROUND (numeric_expression, lenght[,function]) 

--Arredonda pra cima
CEILING(NUMERICSS) 
ex: 32.23213 = 33

--Arredonda pra baixo
FLOOR()

--POWER, ELEVA
POWER(FLOAT_EXPRESSION, Y) 

--
EXP(FLOAT_EXPRESSION)

--RAIZ QUADRADA
SQRT()


--PRA SABER SE É NEGATIVO OU POSITIVO
SIGN()  -- +1 OU -1 OU 0

--MODULO
ABS()

--RESTO
SELECT 10 % 3

--pratica

SELECT ROUND(3.447, 2), CEILING(3.4433), FLOOR(3.4455)

--Na tabela de notas fiscais, temos o valor do imposto. 
--Já na tabela de itens, temos a quantidade e o faturamento.
--Calcule o valor do imposto pago no ano de 2016, 
--arredondando para o menor inteiro.

SELECT 
YEAR(DATA_VENDA) AS ANO, 
FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) 
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);