/*
ALTERAR O SEGMENTO DE TODOS OS CLIENTES
*/

SELECT * FROM CLIENTE;

--CONCEITO DE LOOP;
DECLARE
    V_SEGMERCADO CLIENTE.SEGMERCADO_ID%TYPE := 1;
    V_ID CLIENTE.ID%TYPE := 1;
BEGIN
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
    ATUALIZAR_SEGMERCADO (V_ID, V_SEGMERCADO);
    V_ID := V_ID +1;
END;