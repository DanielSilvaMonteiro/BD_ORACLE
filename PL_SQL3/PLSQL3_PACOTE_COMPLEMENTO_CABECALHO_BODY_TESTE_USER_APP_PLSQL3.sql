--TESTE USER_APP
select * from cliente;

--EXCLUINDO CLIENTE COM O PACOTE CLIENTE_PAC
execute cliente_pac.excluir_cliente(10);