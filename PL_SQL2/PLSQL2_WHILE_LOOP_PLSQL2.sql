DECLARE
    V_SEGMERCADO CLIENTE.SEGMERCADO_ID%TYPE := 3;
    V_ID CLIENTE.ID%TYPE := 1;
    V_NUMCLI INTEGER;
BEGIN
    SELECT COUNT(*) INTO V_NUMCLI FROM CLIENTE;
    WHILE V_ID <= V_NUMCLI LOOP
        ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
        V_ID := V_ID +1;
    END LOOP;
END;

COMMIT; 
SELECT * FROM CLIENTE;