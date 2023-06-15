/*
Temos 9 vendas realizadas no ano de 2022. Com quantas vendas no ano o valor total atingiu 20.000?

Se olharmos no "olho", veremos que após a venda 6, o valor somado das vendas, desde a venda 1, 
atingiu mais de 20.000,00. A resposta para a pergunta acima seria então a partir da venda 6.

Faça uma procedure que retorne este valor (nome: SOMA_VENDAS), que use um FOR e que execute o 
EXIT no meio do LOOP.
*/

create or replace procedure soma_venda_exercicio
    (
    p_saida out produto_venda_exercicio.valor_total%type
    )
is
    v_valor_total produto_venda_exercicio.valor_total%type := 0;
    v_soma produto_venda_exercicio.valor_total%type := 0;
    v_limite number := 20000;
    v_num_prod integer;
begin
    select count(*) into v_num_prod from produto_venda_exercicio;
    
    for v_contador in 1..v_num_prod loop
        select valor_total into v_valor_total from produto_venda_exercicio where id = v_contador;
        
        v_soma := v_valor_total + v_soma;
        p_saida := v_soma;
        
        if v_soma >= v_limite then             
            dbms_output.put_line('ID: '|| v_contador || ' Valor da Soma: ' || p_saida);
            exit;
        end if;
    end loop;
end;

-------------teste da procedure--------------------------------------------------------------------
set serveroutput on;
declare
    v_saida float;
begin
    soma_venda_exercicio(v_saida);
end;