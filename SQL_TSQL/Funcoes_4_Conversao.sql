--data p texto

CONVERT

--NUMEROS P NUMEROS
CAST

SELECT CONVERT(VARCHAR(25), GETDATE(), 121)

SELECT CONCAT('O cliente ', CLIENTES.NOME,' comprou R$', STR(SUM(PRE�O*QUANTIDADE),10,2), ' no ano de ',YEAR(NF.DATA)  )
FROM CLIENTES 
JOIN NF ON CLIENTES.CPF=NF.CPF
JOIN ITEM_NF ON ITEM_NF.NUMERO=NF.NUMERO
GROUP BY CLIENTES.NOME, YEAR(NF.DATA)