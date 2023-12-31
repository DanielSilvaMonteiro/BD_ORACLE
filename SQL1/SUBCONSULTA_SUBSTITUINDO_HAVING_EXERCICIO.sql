-- COM HAVING
SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) 
FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO 
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

-- COM SUBCONSULTA
SELECT SEL_HAV.CODIGO_DO_PRODUTO, SEL_HAV.NOME_DO_PRODUTO, SEL_HAV.SOMA_QTD
FROM
(SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) "SOMA_QTD"
FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO) "SEL_HAV"
WHERE SEL_HAV.SOMA_QTD > 394000;



SELECT SEL_HAV.CODIGO_DO_PRODUTO, SEL_HAV.NOME_DO_PRODUTO, SEL_HAV.SOMA_QUANTIDADE FROM
(SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE)  AS "SOMA_QUANTIDADE"
FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO) "SEL_HAV"
WHERE SEL_HAV.SOMA_QUANTIDADE > 394000 
ORDER BY SEL_HAV.SOMA_QUANTIDADE DESC;