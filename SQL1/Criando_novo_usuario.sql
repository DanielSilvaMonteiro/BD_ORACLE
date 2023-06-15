--CRIANDO UM NOVO AMBIENTE DE TRABALHO
--O NOME DA VARIAVEL EM ASPAS DUPLAS PRECISA SER EM LETRA MAISCULA
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; --VERDADEIRO PARA CONEXAO E PARA DAR ACESSO AOS USUARIOS

--AO INSTALAR O ORACLE USAMOS O USER SYSTEM - USUARIO MASTER
--ABAIXO CRIANDO O NOVO USUARIO COM SENHA E LOGIN
--TABLESPACE O TAMANHO POR USUARIO, NESTE CASO O VALOR PADRAO DOS USUARIOS
CREATE USER cursoplsql IDENTIFIED BY cursoplsql DEFAULT TABLESPACE USERS;

--PRIVILEGIO DE USUARIO
--GRANT PRIVILEGIO DE SEGURANCA_transformando cursoplsql em SUPER USUARIO
GRANT CONNECT, RESOURCE TO cursoplsql;