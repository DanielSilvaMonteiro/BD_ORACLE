------TIRANDO A VIRGULA-----------------
--PARA VISUALIZAR A VARIAVEL NA SAIDA DE SCRIPT(executar a biblioteca)
SET SERVEROUTPUT ON;

--PLSQL BASICO DECLARE, BEGIN, END
DECLARE 
--DECLARAR AS VARIAVEIS
    V_ID NUMBER(5):= 1; --NECESSITA DE PONTO E VIRGULA
BEGIN
--dbms é um funcao da biblioteca oracle, exibir seria put_line
    dbms_output.put_line(V_ID);
    V_ID := 2
    dbms_output.put_line(V_ID);
END;