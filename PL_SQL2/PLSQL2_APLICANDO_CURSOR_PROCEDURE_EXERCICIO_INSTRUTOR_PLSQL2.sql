create or replace procedure soma_vendas_cursor_exercicio_instrutor 
    (
    p_venda_limite in produto_venda_exercicio.valor_total%type, 
    p_id_retorno out produto_venda_exercicio.id%type
    )
is
   v_id produto_venda_exercicio.id%type := 1;
   v_valor_total produto_venda_exercicio.valor_total%type;
   v_venda_total produto_venda_exercicio.valor_total%type := 0;
   cursor cur_venda is select id from produto_venda_exercicio;
begin
   open cur_venda;
   
   loop
      fetch cur_venda into v_id;
      select valor_total into v_valor_total from produto_venda_exercicio where id = v_id;
      v_venda_total := v_venda_total + v_valor_total;
      if v_venda_total >= p_venda_limite then
         exit;
      end if;
      exit when cur_venda%notfound;
   end loop;
   close cur_venda;
   p_id_retorno := v_id;
end;

SELECT * FROM produto_venda_exercicio;

----------------TESTE DA PROCEDURE-----------------------
set serveroutput on;
declare
   v_num integer;
begin
   soma_vendas_cursor_exercicio_instrutor(20000, v_num);
   dbms_output.put_line(v_num);
end;