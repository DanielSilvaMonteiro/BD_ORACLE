--PARAMETRO IN NAO PODE SER ALTERADO NO DECEORRER DA CODIFICACAO
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ_SIMPLES3
    (
    P_CNPJ_SAIDA IN OUT CLIENTE.CNPJ%TYPE
    )
IS
BEGIN
    P_CNPJ_SAIDA := (SUBSTR(P_CNPJ_SAIDA,1,3) || '/' || SUBSTR(P_CNPJ_SAIDA,4,2) || '-' || SUBSTR(P_CNPJ_SAIDA,6));
END;

SET SERVEROUTPUT ON;
DECLARE
    V_CNPJ CLIENTE.CNPJ%TYPE;
BEGIN
    V_CNPJ := '1234567890';
    dbms_output.put_line('SEM FORMATACAO: ' || V_CNPJ);
    FORMATA_CNPJ_SIMPLES3(V_CNPJ);
    dbms_output.put_line('COM FORMATACAO: ' || V_CNPJ);
END;