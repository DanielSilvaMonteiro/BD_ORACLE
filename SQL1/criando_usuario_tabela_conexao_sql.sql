--usar o conexao maquina local
create user alura_modelagem identified by alura_modelagem default tablespace users;
--EXECUTAR

--SE A EXECUCAO DER ERRO RODAR 
alter session set "_ORACLE_SCRIPT" = true;

--criando novo banco, criacao de usuario
create user alura_modelagem identified by alura_modelagem default tablespace users;

-- Para configurar os privil�gios de acesso a este novo usu�rio, execute:
grant connect, resource to alura_modelagem;

/*
Agora, crie a conex�o de acesso por este novo usu�rio no SQL Developer. 
Clique ent�o em Nova Conex�o:
*/

/*
 Inclua os dados de conex�o, usando o novo usu�rio criado:
*/