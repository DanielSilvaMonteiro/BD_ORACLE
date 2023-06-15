/*
Depois, faça um script em PL/SQL que altere a categoria de 
um produto, passando como variáveis iniciais o COD e o novo 
valor para CATEGORIA .
Mude o produto incluído acima de Águas para Mate .
*/

-------------INCLUSAO DO PRODUTO----------
DECLARE
   v_COD produto_exercicio.cod%type := '92347';
   v_DESCRICAO produto_exercicio.descricao%type := 'Aroma do Campo - Mate - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-','>')
   , v_CATEGORIA);
   COMMIT;
END;

-----------ALTERACAO DO PRODUTO--------
DECLARE
BEGIN
    UPDATE PRODUTO_EXERCICIO SET CATEGORIA = REPLACE(CATEGORIA,'Águas','Mate');
   COMMIT;
END;

----OUTRA FORMA DE ALTERACAO-----------
DECLARE
    V_COD PRODUTO_EXERCICIO.COD%TYPE := '92347';
    V_CATEGORIA PRODUTO_EXERCICIO.COD%TYPE := 'Mate';
BEGIN
    UPDATE PRODUTO_EXERCICIO SET CATEGORIA = REPLACE(V_CATEGORIA,'Águas','Mate')
    WHERE COD = V_COD;
   COMMIT;
END;

SELECT * FROM PRODUTO_EXERCICIO;