CREATE OR REPLACE PROCEDURE NUMEROS_FIBONACCI2
    (
    p_INTERACOES IN FLOAT, 
    p_NUMEROFIBO OUT FLOAT
    )
IS
   v_FIBO1 FLOAT := 0;
   v_FIBO2 FLOAT := 1;
   v_FIBO_ATUAL FLOAT := 0;
   v_CONTADOR FLOAT := 1;
   v_INTERACOES FLOAT := 1;
BEGIN
   IF p_INTERACOES > 1 THEN
      LOOP
         v_FIBO_ATUAL := v_FIBO1 + v_FIBO2;
         v_FIBO1 := v_FIBO2;
         v_FIBO2 := v_FIBO_ATUAL;
         v_CONTADOR := v_CONTADOR + 1;
      EXIT WHEN v_CONTADOR >= p_INTERACOES;
      END LOOP;
   END IF;
   p_NUMEROFIBO := v_FIBO_ATUAL;
END;

/*ENCONTRANDO O FIBONNACI DA POSICAO 45*/
SET SERVEROUTPUT ON;
DECLARE
   v_FIBO INTEGER;
BEGIN
   NUMEROS_FIBONACCI2(45, v_FIBO);
   dbms_output.put_line(v_FIBO);
END;