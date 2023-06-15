set serveroutput on;
declare
   v_nome tab_fetch.nome%type;
   v_valor tab_fetch.valor%type;
   v_valor_acumulativo tab_fetch.valor%type:=0;
   cursor cur_tabfetch is select nome, valor from tab_fetch where mod(id,2) = 0;
begin
   open cur_tabfetch;
    fetch cur_tabfetch into v_nome, v_valor;
    
    loop
       v_valor_acumulativo := v_valor_acumulativo + v_valor;
    exit when v_valor_acumulativo >= 30;
       fetch cur_tabfetch into v_nome, v_valor;
   end loop;   
   close cur_tabfetch;
   dbms_output.put_line('VALOR DO PRODUTO = ' || v_nome);
end;