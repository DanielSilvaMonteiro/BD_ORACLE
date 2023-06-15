/*
UTILIZAR O USUARIO MASTER USER_DEV
*/
grant execute on cliente_pac to user_app;

--VERIFICANDO ACESSOS COM O USER_APP.
execute user_dev.cliente_pac.incluir_cliente(10,'PRIMEIRO CLIENTE POR USER_APP VIA PACKAGE','455564', 2, 120000); 

--VERIFICANDO A TABELA USER_DEV OU/E USER_APP
select * from cliente;

--CRIANDO SINONIMOS, USER_DEV
create public synonym cliente_pac for user_dev.cliente_pac;

--USER_APP EXECUCAO COM O SINONIMO
execute user_dev.cliente_pac.incluir_cliente(11,'SEGUNDO CLIENTE POR USER_APP VIA PACKAGE','455564', 2, 120000); 