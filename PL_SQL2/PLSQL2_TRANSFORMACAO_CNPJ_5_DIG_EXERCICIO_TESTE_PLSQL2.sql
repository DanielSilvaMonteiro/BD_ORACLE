SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE CNPJ_TESTE
    (
    P_CNPJ VARCHAR2
    )
IS
    V_CNPJ VARCHAR2(7);
BEGIN
    V_CNPJ:= (SUBSTR(P_CNPJ,1,2) || '/' || SUBSTR(P_CNPJ,3,2) || '-' || SUBSTR(P_CNPJ,5));
    dbms_output.put_line('CNPJ  ' || V_CNPJ);
END;

EXECUTE CNPJ_TESTE('68090');


----------------outras formas de vizualizar, porém nao deram certo--------------------------------------
DECLARE    
    TESTE VARCHAR2(5);
BEGIN
    TESTE := CNPJ_TESTE('68090');
    dbms_output.put_line('CNPJ  ' || TESTE);
END;

VARIABLE G_TESTE VARCHAR2;
EXECUTE :G_TESTE := CNPJ_TESTE('68090');
PRINT G_TESTE;