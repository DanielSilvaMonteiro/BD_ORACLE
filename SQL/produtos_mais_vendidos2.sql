-- CONTA VENDAS ACIMA DE 394000
SELECT COUNT(CODIGO_DO_PRODUTO) AS "CONTADOR", SUM(QUANTIDADE) AS "MAIOR QUE 394000" FROM ITENS_NOTAS_FISCAIS
HAVING SUM(QUANTIDADE) > 394000
GROUP BY "CONTADOR";

-- -----------------------------------------------
--SOMA DOS PRODUTOS > 394000 LITROS
SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS "SOMA TOTAL DE LITROS" FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO 
HAVING SUM(QUANTIDADE) > 394000
ORDER BY "SOMA TOTAL DE LITROS" DESC;