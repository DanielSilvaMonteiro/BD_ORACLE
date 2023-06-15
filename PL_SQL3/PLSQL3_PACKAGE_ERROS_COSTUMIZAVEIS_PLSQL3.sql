create or replace package exception_pac
is
    e_null exception;
    pragma exception_init(e_null, -1400);
    e_fk exception;
    pragma exception_init(e_fk, -2291);
end;

--VAMOS FORCAR O ERRO DE NULO E DE FK
insert into cliente values (null,'TESTE','222222', 2, sysdate, 1000, 'AAA');
insert into cliente values (30,'TESTE','222222', 10, sysdate, 1000, 'AAA');