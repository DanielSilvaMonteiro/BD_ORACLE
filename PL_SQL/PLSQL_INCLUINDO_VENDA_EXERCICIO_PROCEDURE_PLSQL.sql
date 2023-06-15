/*Temos a tabela PRODUTO_VENDA_EXERCICIO, que ainda n�o teve dados 
inclu�dos nela.

Fa�a uma procedure, chamada INCLUINDO_DADOS_VENDA, para incluir 
linhas nesta tabela. Os par�metros, por enquanto, ser�o todos os 
campos da tabela.

Teste a procedure com o seguinte dado:

ID: 1
COD_PRODUTO: 41232
DATA: 1/1/2022
QUANTIDADE: 100
PRECO: 10
VALOR: 1000
IMPOSTO: 10
*/
CREATE OR REPLACE PROCEDURE INCLUINDO_DADOS_VENDA
    (
    P_ID PRODUTO_VENDA_EXERCICIO.ID%TYPE,
    P_COD PRODUTO_VENDA_EXERCICIO.COD_PRODUTO%TYPE,
    P_DATA PRODUTO_VENDA_EXERCICIO.DATA%TYPE,
    P_QUANTIDADE PRODUTO_VENDA_EXERCICIO.QUANTIDADE%TYPE,
    P_PRECO PRODUTO_VENDA_EXERCICIO.PRECO%TYPE,
    P_VALOR PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE,
    P_PERCENTUAL PRODUTO_VENDA_EXERCICIO.PERCENTUAL_IMPOSTO%TYPE
    )
IS
BEGIN
    INSERT INTO PRODUTO_VENDA_EXERCICIO
    VALUES
    (
    P_ID,
    P_COD,
    P_DATA,
    --SYSDATE,
    P_QUANTIDADE,
    P_PRECO,
    P_VALOR,
    P_PERCENTUAL
    );
    
    COMMIT;
END;

SELECT * FROM PRODUTO_VENDA_EXERCICIO;
SELECT * FROM PRODUTO_EXERCICIO;

BEGIN
    INCLUINDO_DADOS_VENDA(1, '41232','1/1/2022', 100, 10, 100, 10);
END;

BEGIN
    INCLUINDO_DADOS_VENDA(6, '33854', 10000, 8, 80000, 10);
END;

BEGIN
    INCLUINDO_DADOS_VENDA(7, '41232', 10000, 8, 8000, 10);
END;

--FLOAT FUNCIONA
INSERT INTO PRODUTO_VENDA_EXERCICIO VALUES (5, '41232','1/1/2022', 10, 8.55, 85.50, 10.5);