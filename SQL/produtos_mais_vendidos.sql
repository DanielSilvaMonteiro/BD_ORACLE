SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT CODIGO_DO_PRODUTO, COUNT(*) AS "QTD. TOTAL DE VENDAS" FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO;

-- QUANTIDADE DOS PRODUTOS
SELECT CODIGO_DO_PRODUTO, COUNT(*) AS "QTD. TOTAL DE VENDAS" FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO
ORDER BY "QTD. TOTAL DE VENDAS" DESC;

--parametro para verificacao 7103 vendas
SELECT * FROM ITENS_NOTAS_FISCAIS 
WHERE CODIGO_DO_PRODUTO = '1101035';
-- ---------------------------------------------
-- SOMA DOS PRODUTOS
SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS "SOMA TOTAL DE QUANTIDADES" FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO ORDER BY "SOMA TOTAL DE QUANTIDADES" DESC;
-- PARAMETRO DE VERIFICACAO DE SOMA 388042
SELECT SUM(QUANTIDADE) FROM ITENS_NOTAS_FISCAIS
WHERE CODIGO_DO_PRODUTO = '1101035';
