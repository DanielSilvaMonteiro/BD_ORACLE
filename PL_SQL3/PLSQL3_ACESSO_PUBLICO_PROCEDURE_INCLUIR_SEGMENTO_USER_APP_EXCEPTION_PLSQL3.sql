/*
VAI DAR ERRO PORQUE O SEGMERCADO PERTENCE A USER_APP
E NECESSÁRIO DAR permissao E CRIAR UM SINONIMO
*/

create or replace procedure incluir_segmento
    (
    p_id segmercado.id%type,
    p_descricao segmercado.descricao%type
    )
is
begin
    insert into segmercado(id, descricao)
    values
    (p_id, p_descricao);
exception
    when exception_pac.e_null then
        raise_application_error(-20030, 'CAMPO DO SEGMENTO COM PREENCHIMENTO OBRIGATÓRIO');
end;

-------------------------------------------------------------
-------------------TESTE DA PROCEDURE------------------------
-------------------------------------------------------------
select * from segmercado;

execute incluir_segmento(6, 'SERVIÇOS');
execute incluir_segmento(7, 'COMERCIAL');

--TESTE DE ERRO, vai dar erro -1400 que esta no pacote exception_pac
execute incluir_segmento(null, 'TRANSPORTE');
-------------------------------------------------------------
---------DANDO PRIVILEGIOS E SINONIMOS-----------------------
-------------------------------------------------------------
--USER_DEV, DAR PERMISSAO PARA USER APP USANDO GRANT
grant select, insert on segmercado to user_app;

grant execute on exception_pac to user_app;
--PARA TODOS USUÁRIOS DE USER_DEV SERIA 
--grant execute on exception_pac to public;

--CRIAR SINONIMO PARA O SEGMERCADO
create public synonym segmercado for user_dev.segmercado;

--CRIAR SINONIMO PARA EXCEPTION_PAC
create public synonym exception_pac for user_dev.exception_pac;
