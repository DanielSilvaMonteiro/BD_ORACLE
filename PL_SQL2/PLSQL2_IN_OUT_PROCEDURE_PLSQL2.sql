-- PARAMETRO DE ENTRADA IN E OUT PARA SAIDA
--PARA PARAMETRO DE SAIDA USAR O OUT, AO SER MODIFICADO A SAIDA SERA O QUE ESTA EM OUT
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ
    (
    P_CNPJ IN CLIENTE.CNPJ%TYPE,
    P_CNPJ_SAIDA OUT CLIENTE.CNPJ%TYPE
    )
IS
BEGIN
    P_CNPJ_SAIDA := (SUBSTR(P_CNPJ,1,3) || '/' || SUBSTR(P_CNPJ,4,2) || '-' || SUBSTR(P_CNPJ,6));
END;


