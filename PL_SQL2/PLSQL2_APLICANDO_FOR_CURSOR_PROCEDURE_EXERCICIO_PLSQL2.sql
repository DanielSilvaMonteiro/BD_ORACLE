create or replace procedure soma_vendas_cursor_for_instrutor 
    (
    p_venda_limite in produto_venda_exercicio.valor_total%type,
    p_id_retorno out produto_venda_exercicio.id%type
    )
is
   --v_id produto_venda_exercicio.id%type := 1;
   v_valor_total produto_venda_exercicio.valor_total%type;
   v_venda_total produto_venda_exercicio.valor_total%type := 0;
   cursor cur_venda is select id from produto_venda_exercicio;
begin  
   for linha_cur_venda in cur_venda loop
      select valor_total into v_valor_total from produto_venda_exercicio where id = linha_cur_venda.id;
      v_venda_total := v_venda_total + v_valor_total;
      if v_venda_total >= p_venda_limite then
        p_id_retorno := linha_cur_venda.id;
        exit;
      end if ; 
   end loop;   
end;

------------teste procedure---------------------------------------------------
set serveroutput on;
declare
    v_entrada produto_venda_exercicio.valor_total%type := 20000;
    v_saida produto_venda_exercicio.id%type;
begin
    soma_vendas_cursor_for_instrutor(v_entrada, v_saida);
    dbms_output.put_line(v_saida);
end;