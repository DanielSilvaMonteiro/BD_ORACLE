/*Construa as seguintes procedures:
INCLUINDO_PRODUTO - Inclui um produto novo, passando como parâmetros todos os campos para inclusão de um produto na tabela.
ALTERANDO_CATEGORIA_PRODUTO - Altera apenas a categoria do produto, dado um código.
EXCLUINDO_PRODUTO - Exclui um produto, passando como parâmetro o seu código.
Depois, teste as procedures acima:
a) Incluindo dois novos produto:
COD: 33854
DESCRICAO: Frescor da Montanha - Aroma Laranja - 1 Litro
CATEGORIA: Mate
COD: 89254
DESCRICAO: Frescor da Montanha - Aroma Uva - 1 Litro
CATEGORIA: Águas
b) Alterando a categoria do produto 33854 para Águas.
c) Excluindo o produto 89254.
*/

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

SELECT * FROM PRODUTO_EXERCICIO;
----CRIANDO INSERT PROCEDURE----------
CREATE OR REPLACE PROCEDURE INCLUIR_PRODUTO_EXERCICIO 
(P_COD IN PRODUTO_EXERCICIO.COD%TYPE, P_DESCRICAO IN PRODUTO_EXERCICIO.DESCRICAO%TYPE, P_CATEGORIA IN PRODUTO_EXERCICIO.CATEGORIA%TYPE)
IS
BEGIN
    INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO,CATEGORIA) VALUES(P_COD, P_DESCRICAO, P_CATEGORIA);
    COMMIT;
END;

-----INSERINDO DADOS------
BEGIN
    INCLUIR_PRODUTO_EXERCICIO (33854, 'Frescor da Montanha - Aroma Laranja - 1 Litro', 'Mate');
    INCLUIR_PRODUTO_EXERCICIO(89254,'Frescor da Montanha - Aroma Uva - 1 Litro', 'Águas');
END;

SELECT * FROM PRODUTO_EXERCICIO;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
----------ALTERANDO---------
CREATE OR REPLACE PROCEDURE ALTERA_PRODUTO_EXERCICIO
(P_COD IN PRODUTO_EXERCICIO.COD%TYPE, P_CATEGORIA IN PRODUTO_EXERCICIO.CATEGORIA%TYPE)
IS
BEGIN
    UPDATE PRODUTO_EXERCICIO 
    SET CATEGORIA = P_CATEGORIA
    WHERE COD = P_COD;
    COMMIT;
END;

----EXECUTANDO ALTERACAO DE MATE PARA ÁGUA
BEGIN
    ALTERA_PRODUTO_EXERCICIO (33854, 'Águas');
END;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--------------------EXCLUINDO COM PROCEDURE------------
CREATE OR REPLACE PROCEDURE EXCLUI_PRODUTO_EXERCICIO
(P_COD IN PRODUTO_EXERCICIO.COD%TYPE)
IS
BEGIN
    DELETE FROM PRODUTO_EXERCICIO
    WHERE COD = P_COD;
    COMMIT;
END;

--EXCLUINDO PRODUTO-------------
BEGIN
    EXCLUI_PRODUTO_EXERCICIO (89254);
END;