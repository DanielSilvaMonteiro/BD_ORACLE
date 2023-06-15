/*
EXERCICIO, VERIFICAR SE O CLIENTE ESTA NO VOLUME DE COMPRA INDICADO
*/
SELECT * FROM TABELA_DE_CLIENTES;

--calculo total de clientes
SELECT
N.CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY') AS "MES_ANO", 
SUM(I.QUANTIDADE) AS "QUANTIDADE_TOTAL"
FROM
NOTAS_FISCAIS N
INNER JOIN
ITENS_NOTAS_FISCAIS I
ON N.NUMERO = I.NUMERO
GROUP BY  CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY');

SELECT CPF, NOME, VOLUME_DE_COMPRA FROM TABELA_DE_CLIENTES;

--VERIFICANDO LIMITE DE COMPRA, COM COMPRA REALIZADA
SELECT 
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA,TV.MES_ANO, TV.QUANTIDADE_TOTAL
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(SELECT
N.CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY') AS "MES_ANO", 
SUM(I.QUANTIDADE) AS "QUANTIDADE_TOTAL"
FROM
NOTAS_FISCAIS N
INNER JOIN
ITENS_NOTAS_FISCAIS I
ON N.NUMERO = I.NUMERO
GROUP BY  CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY')) TV
ON TV.CPF = TC.CPF;


--VERIFICANDO E COLOCANDO CONDICAO
SELECT 
TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA,TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDA V�LIDA'
     ELSE 'VENDA INV�LIDA' END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(SELECT
N.CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY') AS "MES_ANO", 
SUM(I.QUANTIDADE) AS "QUANTIDADE_TOTAL"
FROM
NOTAS_FISCAIS N
INNER JOIN
ITENS_NOTAS_FISCAIS I
ON N.NUMERO = I.NUMERO
GROUP BY  CPF, TO_CHAR(N.DATA_VENDA, 'MM-YYYY')) TV
ON TV.CPF = TC.CPF
--VERIFICAR APENAS POR MES
WHERE TV.MES_ANO = '02-2015';
