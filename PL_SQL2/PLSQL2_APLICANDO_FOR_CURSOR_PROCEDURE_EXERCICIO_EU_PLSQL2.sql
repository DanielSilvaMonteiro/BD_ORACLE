CREATE OR REPLACE PROCEDURE SOMA_VENDAS_CURSOR_EXERCICIO_FOR
    (
    P_VENDA_LIMITE IN PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE, 
    P_ID_RETORNO OUT PRODUTO_VENDA_EXERCICIO.ID%TYPE
    )
IS
   V_VALOR_TOTAL PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE;
   V_VENDA_TOTAL PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE := 0;
   CURSOR CUR_VENDA IS SELECT ID FROM PRODUTO_VENDA_EXERCICIO;
BEGIN
    FOR LINHA_CUR_VENDA IN CUR_VENDA LOOP
      SELECT VALOR_TOTAL INTO V_VALOR_TOTAL FROM PRODUTO_VENDA_EXERCICIO WHERE ID = LINHA_CUR_VENDA.ID;
      V_VENDA_TOTAL := V_VENDA_TOTAL + V_VALOR_TOTAL;
      IF V_VENDA_TOTAL >= P_VENDA_LIMITE THEN
        P_ID_RETORNO := LINHA_CUR_VENDA.ID;
        EXIT;
      END IF;
   END LOOP;
END;


-----------TESTE DA PROCEDURE-----------------------------------
SET SERVEROUTPUT ON;
DECLARE
    V_ENTRADA PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE := 20000;
    V_SAIDA PRODUTO_VENDA_EXERCICIO.ID%TYPE;
BEGIN
    SOMA_VENDAS_CURSOR_EXERCICIO_WHILE(V_ENTRADA, V_SAIDA);
    DBMS_OUTPUT.PUT_LINE(V_SAIDA);
END;

SELECT * FROM PRODUTO_VENDA_EXERCICIO;