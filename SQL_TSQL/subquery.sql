--subquery
--Esse trata os dados, meio que vc monta a "tabela temporaria"
SELECT DISTINCT BAIRRO FROM VENDEDORES

--Ai vc poderia fazer assim, mas
SELECT * FROM CLIENTES
WHERE BAIRRO IN ('Copacabana','Jardins','Santo Amaro', 'Tijuca');

--Vc pode usar a consulta que tratou pra ser uma condição do in
--só que a subquery só pode ter um campo
SELECT * FROM CLIENTES
WHERE BAIRRO IN
	(SELECT DISTINCT BAIRRO FROM VENDEDORES)