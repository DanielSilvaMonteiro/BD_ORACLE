/*Construa uma fun��o com o nome RETORNA_CATEGORIA que,
passando o c�digo do produto, teremos o retorno da categoria.
*/

CREATE OR REPLACE FUNCTION RETORNA_CATEGORIA
    (P_COD IN PRODUTO_EXERCICIO.COD%TYPE)
RETURN
    PRODUTO_EXERCICIO.CATEGORIA%TYPE
IS
    V_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE;
BEGIN
    SELECT CATEGORIA INTO V_CATEGORIA FROM PRODUTO_EXERCICIO WHERE COD = P_COD;
    RETURN V_CATEGORIA;
END;

--CHAMANDO A FUNCAO----
SELECT COD, RETORNA_CATEGORIA(COD) FROM PRODUTO_EXERCICIO;
SELECT COD, RETORNA_CATEGORIA(COD) FROM PRODUTO_EXERCICIO WHERE COD = 32223;