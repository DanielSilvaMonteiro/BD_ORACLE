select * from TB_VENDEDORES;

SELECT * FROM TB_VENDEDORES WHERE TO_CHAR(DATA_ADMISSAO_VENDEDOR, 'yyyy') >= 2020;

SELECT * FROM TB_VENDEDORES WHERE DATA_ADMISSAO_VENDEDOR >= '01/01/2020';