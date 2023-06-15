--RETORNA O VALOR = PRECO * QUANTIDADE DA TABELA PRODUTO_VENDA_EXERCICIO
CREATE OR REPLACE FUNCTION RETORNA_VALOR
    (
    P_ID IN PRODUTO_VENDA_EXERCICIO.ID%TYPE
    --P_COD IN PRODUTO_VENDA_EXERCICIO.COD_PRODUTO%TYPE
    )
RETURN 
   PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE
IS
    V_VALOR FLOAT;
    
BEGIN
    SELECT PRECO * QUANTIDADE INTO V_VALOR FROM PRODUTO_VENDA_EXERCICIO
    WHERE  ID = P_ID;

    RETURN V_VALOR;
END;

--VERIFICAR CODIGOS_ PRODUTO-----------
SELECT * FROM PRODUTO_VENDA_EXERCICIO;

-----EXECUTAR FUNCAO----33854----67120-------41232-----------
VARIABLE G_VALOR FLOAT(126);
EXECUTE :G_VALOR := RETORNA_VALOR(2);
PRINT G_VALOR;