CREATE OR REPLACE PROCEDURE FIBONACCI2
    (
    P_N IN NUMBER,
    P_N_SAIDA OUT NUMBER
    )
IS
    V_ATUAL NUMBER := 0;
    V_ANTERIOR NUMBER:= 0;
    V_CONTADOR NUMBER:= 0;
BEGIN   
    FOR V_CONTADOR IN 0..P_N LOOP
        IF  V_CONTADOR < 2 THEN
            P_N_SAIDA := V_CONTADOR;
            dbms_output.put_line(P_N_SAIDA);           
       ELSE 
            V_ATUAL := P_N_SAIDA;
            P_N_SAIDA := V_ATUAL + V_ANTERIOR;
            dbms_output.put_line(P_N_SAIDA);
            V_ANTERIOR := V_ATUAL;
        END IF;
    END LOOP;
END;

------------TESTE DO FIBONACCI----------------------------
SET SERVEROUTPUT ON;
DECLARE
    V_VALOR NUMBER;
    V_VALOR_SAIDA NUMBER;
BEGIN
    V_VALOR := 45;
    FIBONACCI2(V_VALOR, V_VALOR_SAIDA);
END;