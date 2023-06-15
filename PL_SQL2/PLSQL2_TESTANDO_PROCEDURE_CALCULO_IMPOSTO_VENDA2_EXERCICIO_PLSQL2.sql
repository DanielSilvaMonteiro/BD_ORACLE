SELECT * FROM produto_venda_exercicio;

SET SERVEROUTPUT ON;
----------TESTANDO O CALCULO_IMPOSTO2 FEITO PELO INSTRUTOR
DECLARE
    V_ID produto_venda_exercicio.id%type;
    V_VALOR_IMPOSTO float;
BEGIN
    V_ID := 2;
    CALCULA_IMPOSTO2(V_ID, V_VALOR_IMPOSTO);
    dbms_output.put_line(' CALCULO DO IMPOSTO:  ' || V_VALOR_IMPOSTO);    
END;

----------TESTANDO O CALCULO_IMPOSTO FEITO POR MIM
DECLARE
    V_ID produto_venda_exercicio.id%type;
    V_VALOR_IMPOSTO FLOAT;
BEGIN
    V_ID := 2;
    CALCULO_IMPOSTO(V_ID, V_VALOR_IMPOSTO);
    dbms_output.put_line(' CALCULO DO IMPOSTO:  ' || V_VALOR_IMPOSTO);
    COMMIT;
END;

---------OPINIAO DO INSTRUTOR----------------------
SET SERVEROUTPUT ON;
DECLARE
   v_PERCENTUAL FLOAT;
BEGIN
   CALCULA_IMPOSTO2(2, v_PERCENTUAL);
   dbms_output.put_line(v_PERCENTUAL); 
END;