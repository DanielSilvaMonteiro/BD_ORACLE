/*O usu�rio usa sempre o h�fen (-) para separar o nome do produto, o sabor e a embalagem. Note um exemplo abaixo:

DESCRICAO: Sabor de Ver�o - Uva - 1 Litro
Mas queremos que o produto seja salvo com o s�mbolo "maior que" (>) no lugar do h�fen.

Para isso, modifique o script PL/SQL abaixo para que, caso o usu�rio inclua o h�fen como separador dos nomes e 
classifica��es do produto, ele seja substitu�do pelo "maior que" (>):

Dica: A fun��o Oracle que substitui textos � o REPLACE.

E, como teste, inclua um novo produto:

COD: 67120
DESCRICAO: Frescor da Montanha - Aroma Lim�o - 1 Litro
CATEGORIA: �guas
*/

DECLARE
   v_COD produto_exercicio.cod%type := '67120';
   v_DESCRICAO produto_exercicio.descricao%type := 'Frescor da Montanha - Aroma Lim�o - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := '�guas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-', '>'), v_CATEGORIA);
   COMMIT;
END;

SELECT * FROM PRODUTO_EXERCICIO;