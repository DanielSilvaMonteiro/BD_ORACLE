SET SERVEROUTPUT ON;
DECLARE
    V_ID SEGMERCADO.ID%TYPE :=1;
    V_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
BEGIN
    --PASSANDO O SELECT PARA A VARIAVEL DESCRICAO
    SELECT DESCRICAO INTO V_DESCRICAO FROM SEGMERCADO WHERE ID = V_ID;
    dbms_output.put_line(V_DESCRICAO);
END;