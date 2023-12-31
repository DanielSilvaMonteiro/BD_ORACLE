DECLARE
    V_SEGMERCADO CLIENTE.SEGMERCADO_ID%TYPE := 2;
    V_ID CLIENTE.ID%TYPE := 1;
    V_NUMCLI INTEGER;
BEGIN
    SELECT COUNT(*) INTO V_NUMCLI FROM CLIENTE;
    LOOP
        IF V_ID <= 9 THEN
            ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
            V_ID := V_ID +1;
        ELSE
            EXIT;
        END IF;
    END LOOP;
END;

COMMIT; 
SELECT * FROM CLIENTE;