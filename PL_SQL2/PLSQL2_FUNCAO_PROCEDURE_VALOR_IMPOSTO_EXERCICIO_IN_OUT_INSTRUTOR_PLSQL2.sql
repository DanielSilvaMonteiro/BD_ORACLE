create or replace PROCEDURE CALCULA_IMPOSTO2
    (p_ID IN produto_venda_exercicio.id%type, 
     p_VALOR_IMPOSTO OUT FLOAT
    )
IS
   v_PRECO produto_venda_exercicio.preco%type;
   v_QUANTIDADE produto_venda_exercicio.quantidade%type;
   v_PERCENTUAL_IMPOSTO produto_venda_exercicio.percentual_imposto%type;
BEGIN
   SELECT PRECO, QUANTIDADE, PERCENTUAL_IMPOSTO INTO v_PRECO, v_QUANTIDADE, v_PERCENTUAL_IMPOSTO
   FROM PRODUTO_VENDA_EXERCICIO WHERE ID = p_ID;
   p_VALOR_IMPOSTO := ((v_PRECO * v_QUANTIDADE) * (v_PERCENTUAL_IMPOSTO/100));
END;


SET SERVEROUTPUT ON;
DECLARE
    V_ID PRODUTO_VENDA_EXERCICIO.ID%TYPE;
    V_CALCULO FLOAT;
BEGIN
    V_ID := 2;
    CALCULA_IMPOSTO2(V_ID, V_CALCULO);
    dbms_output.put_line('ID: '|| V_ID ||' >> CALCULO DO IMPOSTO: ' || V_CALCULO);
END;