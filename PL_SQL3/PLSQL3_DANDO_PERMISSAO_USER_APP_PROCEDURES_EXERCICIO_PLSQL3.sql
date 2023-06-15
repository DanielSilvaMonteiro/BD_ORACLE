--PERMISSOES DE ACESSO EFETUADAS PELO USER_DEV

--PERMISSOES DE EXECUTAR PROCEDURES
GRANT EXECUTE ON INCLUINDO_PRODUTO TO USER_APP;
GRANT EXECUTE ON INCLUINDO_DADOS_VENDA TO USER_APP;


--PERMISSOES DE SELECT
GRANT SELECT ON PRODUTO_EXERCICIO TO USER_APP;
GRANT SELECT ON PRODUTO_VENDA_EXERCICIO TO USER_APP;


--VERIFICANDO OS SELECTS PARA VER SE A PERMISSAO FOI CONCEDIDA
SELECT * FROM USER_DEV.produto_exercicio;
SELECT * FROM USER_DEV.produto_venda_exercicio;