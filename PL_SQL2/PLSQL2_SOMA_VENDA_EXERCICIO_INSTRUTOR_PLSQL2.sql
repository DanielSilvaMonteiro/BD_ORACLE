create or replace procedure soma_vendas_instrutor 
(p_venda_limite in produto_venda_exercicio.valor_total%type, p_id_retorno out produto_venda_exercicio.id%type)
is
   v_id produto_venda_exercicio.id%type := 1;
   v_valor_total produto_venda_exercicio.valor_total%type;
   v_venda_total produto_venda_exercicio.valor_total%type := 0;
begin
   loop
      select valor_total into v_valor_total from produto_venda_exercicio where id = v_id;
      v_venda_total := v_venda_total + v_valor_total;
      if v_venda_total >= p_venda_limite then
         exit;
      end if;
      v_id := v_id + 1;
   end loop;
   p_id_retorno := v_id;
end;


--------------TESTE DA PROCEDURE---------------------
set serveroutput on;
declare
   v_num integer;
begin
   soma_vendas_instrutor(20000, v_num);
   dbms_output.put_line(v_num);
end;