DECLARE
    V_SEGMERCADO CLIENTE.SEGMERCADO_ID%TYPE := 1;
    V_NUMCLI INTEGER;
BEGIN
    SELECT COUNT(*) INTO V_NUMCLI FROM CLIENTE;
    FOR V_ID IN 1..V_NUMCLI LOOP
    ----UTILIZA OS NOMES DOS PARAMETROS DA PROCEDURE ATUALIZAR_SEGMERCADO
    ----PARA NAO PRECISAR UTILIZAR A ORDEM DE ENTRADA DOS PARAMETROS;
        ATUALIZAR_SEGMERCADO(P_SEGMERCADO_ID => V_SEGMERCADO, P_ID => V_ID);
    END LOOP;
END;

SELECT * FROM CLIENTE;