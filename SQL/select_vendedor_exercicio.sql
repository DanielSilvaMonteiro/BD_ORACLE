
--SELECT * FROM TB_VENDEDORES;

--INSERT INTO TB_VENDEDORES
--(MATRI_VENDEDOR,NOME_VENDEDOR,DATA_ADMISSAO_VENDEDOR,PERC_COMISSAO_VENDEDOR)
--VALUES
--('00729', 'Tom Cruizes', '12/02/1895', 0.25);

SELECT NOME_VENDEDOR, PERC_COMISSAO_VENDEDOR 
FROM TB_VENDEDORES
WHERE MATRI_VENDEDOR = '00729';

