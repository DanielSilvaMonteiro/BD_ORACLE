SELECT * FROM ITENS_NOTAS_FISCAIS;
SELECT * FROM TABELA_DE_PRODUTOS;

SELECT P.NOME_DO_PRODUTO, I.CODIGO_DO_PRODUTO, SUM(I.QUANTIDADE) 
FROM TABELA_DE_PRODUTOS P
INNER JOIN ITENS_NOTAS_FISCAIS I
ON P.CODIGO_DO_PRODUTO = I.CODIGO_DO_PRODUTO
GROUP BY I.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO 
HAVING SUM(I.QUANTIDADE) > 394000 
ORDER BY SUM(I.QUANTIDADE) DESC;

-- EXEMPLO DO PROFESSOR
SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;