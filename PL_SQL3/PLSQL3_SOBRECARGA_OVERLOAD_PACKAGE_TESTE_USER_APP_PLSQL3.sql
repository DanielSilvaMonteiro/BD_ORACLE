/*
TESTE DE SOBRECARGA, UTILIZANDO USER_APP INCLUIR CLIENTE 5 PARAMETROS E 3 PARAMETROS.
*/
execute cliente_pac.incluir_cliente(15, 'INCLUIR COM 5 PARAMETROS', '999999', 2, 90000);

select * from cliente;

execute cliente_pac.incluir_cliente(16,'INCLUIR CLIENTE COM 3 PARAMETROS', 2);