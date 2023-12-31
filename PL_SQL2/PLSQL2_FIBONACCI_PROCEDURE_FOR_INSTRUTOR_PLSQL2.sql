CREATE OR REPLACE PROCEDURE NUMEROS_FIBONACCI_INSTRUTOR2 
    (
    p_INTERACOES IN FLOAT, 
    p_NUMEROFIBO OUT FLOAT
    )
IS
   v_FIBO1 FLOAT := 0;
   v_FIBO2 FLOAT := 1;
   v_FIBO_ATUAL FLOAT := 0;
   --v_INTERACOES FLOAT := 1;
BEGIN
   IF p_INTERACOES > 1 THEN   
        FOR v_CONTADOR IN 2..p_INTERACOES LOOP
            v_FIBO_ATUAL := v_FIBO1 + v_FIBO2;
            v_FIBO1 := v_FIBO2;
            v_FIBO2 := v_FIBO_ATUAL;
        END LOOP;
   END IF;
   p_NUMEROFIBO := v_FIBO_ATUAL;
END;

/*ENCONTRANDO O FIBONNACI DA POSICAO 45*/
SET SERVEROUTPUT ON;
DECLARE
   v_FIBO INTEGER;
BEGIN
   NUMEROS_FIBONACCI_INSTRUTOR2(45, v_FIBO);
   dbms_output.put_line(v_FIBO);
END;