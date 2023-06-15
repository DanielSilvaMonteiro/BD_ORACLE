CREATE OR REPLACE PROCEDURE formata_cnpj (
    p_CNPJ IN CLIENTE.CNPJ%type, 
    p_CNPJ_SAIDA OUT CLIENTE.CNPJ%type
)
IS
BEGIN
    p_CNPJ_SAIDA := SUBSTR(p_CNPJ,1,2) || '/' || SUBSTR(p_CNPJ,3,2) || '-' || SUBSTR(p_CNPJ,5,1);
END;
