--usar o conexao maquina local
create user alura_modelagem identified by alura_modelagem default tablespace users;
--EXECUTAR

--SE A EXECUCAO DER ERRO RODAR 
alter session set "_ORACLE_SCRIPT" = true;

--criando novo banco, criacao de usuario
create user alura_modelagem identified by alura_modelagem default tablespace users;

-- Para configurar os privilégios de acesso a este novo usuário, execute:
grant connect, resource to alura_modelagem;

/*
Agora, crie a conexão de acesso por este novo usuário no SQL Developer. 
Clique então em Nova Conexão:
*/

/*
 Inclua os dados de conexão, usando o novo usuário criado:
*/