create or replace procedure numeros_fibonacci_while_instrutor 
    (
    p_interacoes in float, 
    p_numerofibo out float
    )
is
   v_fibo1 float := 0;
   v_fibo2 float := 1;
   v_fibo_atual float := 0;
   v_contador float := 2;
begin
   if p_interacoes > 1 then
        while v_contador <= p_interacoes loop
            v_fibo_atual := v_fibo1 + v_fibo2;
            v_fibo1 := v_fibo2;
            v_fibo2 := v_fibo_atual;
            v_contador := v_contador +1;
      end loop;
   end if;
   p_numerofibo := v_fibo_atual;
end;

----TESTE DA PROCEDURE------------------------------------
declare
    v_entrada float := 45;
    v_saida float;
begin
    numeros_fibonacci_while_instrutor(v_entrada, v_saida);
    dbms_output.put_line(v_saida);
end;