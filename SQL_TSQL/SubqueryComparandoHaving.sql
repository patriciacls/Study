SELECT 
EMBALAGEM
,AVG([PRE�O DE LISTA]) AS PRECO_MEDIO 
FROM PRODUTOS
GROUP BY EMBALAGEM;

SELECT EMBALAGEM,
AVG([PRE�O DE LISTA]) AS PRECO_MEDIO
FROM PRODUTOS
GROUP BY EMBALAGEM
HAVING AVG([PRE�O DE LISTA])<=10;
--MSM COISA QUE HAVING
SELECT MEDIA_EMBALAGEM.EMBALAGEM
,MEDIA_EMBALAGEM.PRECO_MEDIO FROM
	(SELECT EMBALAGEM,
	AVG([PRE�O DE LISTA]) AS PRECO_MEDIO
	FROM PRODUTOS
	GROUP BY EMBALAGEM) MEDIA_EMBALAGEM
	WHERE MEDIA_EMBALAGEM.PRECO_MEDIO <=10


--EX
SELECT INF.[CODIGO DO PRODUTO], TP.[NOME DO PRODUTO], SUM(INF.QUANTIDADE) AS QUANTIDADE FROM ITEM_NF  INF
INNER JOIN PRODUTOS TP 
ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
GROUP BY INF.[CODIGO DO PRODUTO], TP.[NOME DO PRODUTO] 
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT A.[CODIGO DO PRODUTO], A.[NOME DO PRODUTO], A.QUANTIDADE FROM
	(SELECT INF.[CODIGO DO PRODUTO], TP.[NOME DO PRODUTO], SUM(INF.QUANTIDADE) AS QUANTIDADE FROM ITEM_NF  INF
	INNER JOIN PRODUTOS TP 
	ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
	GROUP BY INF.[CODIGO DO PRODUTO], TP.[NOME DO PRODUTO]) A
WHERE A.QUANTIDADE> 394000 
ORDER BY A.QUANTIDADE DESC;

--DO PROF
SELECT SC.CODIGO_DO_PRODUTO, SC.NOME_DO_PRODUTO, SC.QUANTIDADE_TOTAL
FROM
(SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO) SC
WHERE SC.QUANTIDADE_TOTAL > 394000 
ORDER BY SC.QUANTIDADE_TOTAL DESC;