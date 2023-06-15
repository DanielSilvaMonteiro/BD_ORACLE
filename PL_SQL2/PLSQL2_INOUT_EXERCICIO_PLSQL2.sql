/*
Altere essa procedure para que possamos usar a variável p_VALOR 
tanto como entrada quanto como saída.
*/

create or replace PROCEDURE DUPLICA_VALOR
(p_VALOR IN OUT FLOAT)
IS
BEGIN
  p_VALOR := p_VALOR * 2;
END;

--------EXECUSAO--------------------------

SET SERVEROUT ON;
declare
    v_valor float;
begin
    v_valor := 4;
    dbms_output.put_line('Valor recebido: ' || v_valor);
    DUPLICA_VALOR(v_valor);
    dbms_output.put_line('Valor recebido * 2 =  ' || v_valor);
end;