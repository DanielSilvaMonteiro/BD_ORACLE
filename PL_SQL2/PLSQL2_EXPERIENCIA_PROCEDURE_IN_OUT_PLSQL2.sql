--PARAMETRO IN NAO PODE SER ALTERADO NO DECEORRER DA CODIFICACAO
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ_SIMPLES
    (
    P_CNPJ IN CLIENTE.CNPJ%TYPE,
    P_CNPJ_SAIDA OUT CLIENTE.CNPJ%TYPE
    )
IS
    V_CNPJ CLIENTE.CNPJ%TYPE;
BEGIN
    P_CNPJ_SAIDA := (SUBSTR(P_CNPJ,1,3) || '/' || SUBSTR(P_CNPJ,4,2) || '-' || SUBSTR(P_CNPJ,6));
    V_CNPJ := P_CNPJ;
    V_CNPJ := '0000';
END;


SET SERVEROUTPUT ON;
DECLARE
    V_CNPJ CLIENTE.CNPJ%TYPE;
    V_CNPJ_SAIDA CLIENTE.CNPJ%TYPE;
BEGIN
    V_CNPJ := '1234567890';
    V_CNPJ_SAIDA := '1234567890'; -- V_CNPJ_SAIDA := V_CNPJ;
    dbms_output.put_line('SEM FORMATACAO: ' || V_CNPJ|| '   ' || V_CNPJ_SAIDA);
    FORMATA_CNPJ_SIMPLES(V_CNPJ, V_CNPJ_SAIDA);
    dbms_output.put_line('COM FORMATACAO: ' || V_CNPJ|| '   ' || V_CNPJ_SAIDA);
END;


----------------------EXPERIENCIA USANDO O OUT COMO IN---------------------
--PARAMETRO OUT NAO PODE SER MANIPULADO COMO IN TBM
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ_SIMPLES2
    (
    P_CNPJ_SAIDA OUT CLIENTE.CNPJ%TYPE
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
    FORMATA_CNPJ_SIMPLES2(V_CNPJ);
    dbms_output.put_line('COM FORMATACAO: ' || V_CNPJ);
END;