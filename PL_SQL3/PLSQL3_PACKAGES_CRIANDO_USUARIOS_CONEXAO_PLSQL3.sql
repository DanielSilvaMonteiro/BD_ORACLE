-- Criação do ambiente do curso

alter session set "_oracle_script"=true;

create user user_dev identified by user_dev
default tablespace users temporary tablespace temp;

--USUARIO DONO DA APLICACAO
grant connect, resource to user_dev;
grant create public synonym to user_dev;
grant create view to user_dev;
grant execute any procedure to user_dev;
grant create any directory to user_dev;

--SEGUNDO USUARIO
create user user_app identified by user_app
default tablespace users temporary tablespace temp;

grant connect, resource to user_app;

alter user user_dev quota unlimited on users;


alter user user_app quota unlimited on users;


-- Criar as conexões no Oracle SQL Developer dos usuarios: user_dev e user_app

