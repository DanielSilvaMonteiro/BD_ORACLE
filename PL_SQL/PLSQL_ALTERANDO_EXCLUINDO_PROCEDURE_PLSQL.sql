----------ALTERANDO PROCEDURE COM REPLACE---------
CREATE OR REPLACE PROCEDURE INCLUIR_SEGMERCADO
(P_ID IN SEGMERCADO.ID%TYPE, P_DESCRICAO IN SEGMERCADO.DESCRICAO%TYPE)
IS 
BEGIN
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES(P_ID, UPPER(P_DESCRICAO));
    COMMIT;
END;


-------------------CRIANDO SEGUNDA PROCEDURE------------
CREATE OR REPLACE PROCEDURE INCLUIR_SEGMERCADO2
(P_ID IN SEGMERCADO.ID%TYPE, P_DESCRICAO IN SEGMERCADO.DESCRICAO%TYPE)
IS 
BEGIN
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES(P_ID, UPPER(P_DESCRICAO));
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE INCLUIR_SEGMERCADO3
(P_ID IN SEGMERCADO.ID%TYPE, P_DESCRICAO IN SEGMERCADO.DESCRICAO%TYPE)
IS 
BEGIN
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES(P_ID, UPPER(P_DESCRICAO));
    COMMIT;
END;


-----------------DELETANDO PROCEDURE----------
DROP PROCEDURE INCLUIR_SEGMERCADO2;
DROP PROCEDURE INCLUIR_SEGMERCADO3;

SELECT * FROM SEGMERCADO; 