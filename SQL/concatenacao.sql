SELECT * FROM TB_CLIENTES;

SELECT NOME, ENDERECO1 || ',' || BAIRRO || ',' || CIDADE || ' - ' || ESTADO
FROM TB_CLIENTES;

SELECT NOME, ENDERECO1 || ',' || BAIRRO || ',' || CIDADE || ' - ' || ESTADO
AS "ENDERECO COMPLETO"
FROM TB_CLIENTES;