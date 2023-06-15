/*
A sequência de Fibonacci começa com o número 0 (primeiro número)
e depois com o número 1 (segundo número). Então temos:
0
1
0 + 1 = 1
1 + 1 = 2
2 + 1 = 3
3 + 2 = 5
5 + 3 = 8
8 + 5 = 13
E assim sucessivamente.

Logo, a partir da posição N, onde N > 1, o valor da sequência 
será:

V(n) = N(n-1) + N(n-2) para n > 1
V(n) = 0 para n = 1COPIAR CÓDIGO
Construa uma procedure em PL/SQL que, dado um valor de N, temos o
valor da sequência de Fibonacci nessa posição, usando 
obrigatoriamente LOOP ... END LOOP.
*/

CREATE OR REPLACE PROCEDURE FIBONACCI
    (
    P_N IN NUMBER,
    P_N_SAIDA OUT NUMBER
    )
IS
    V_ATUAL NUMBER := 0;
    V_ANTERIOR NUMBER:= 0;
    V_CONTADOR NUMBER:= 0;
BEGIN    
    LOOP
        IF  V_CONTADOR < 2 THEN
            P_N_SAIDA := V_CONTADOR;
            dbms_output.put_line(P_N_SAIDA);
            V_CONTADOR := V_CONTADOR +1;            
       ELSE 
            V_ATUAL := P_N_SAIDA;
            P_N_SAIDA := V_ATUAL + V_ANTERIOR;
            V_CONTADOR := V_CONTADOR +1;
            dbms_output.put_line(P_N_SAIDA);
            V_ANTERIOR := V_ATUAL;
        END IF;
    EXIT WHEN V_CONTADOR > P_N;
    END LOOP;    
    COMMIT;
END;

------------TESTE DO FIBONACCI----------------------------
SET SERVEROUTPUT ON;
DECLARE
    V_VALOR NUMBER;
    V_VALOR_SAIDA NUMBER;
BEGIN
    V_VALOR := 45;
    FIBONACCI(V_VALOR, V_VALOR_SAIDA);
   --dbms_output.put_line('Resultado: ' || V_VALOR_SAIDA);
END;
