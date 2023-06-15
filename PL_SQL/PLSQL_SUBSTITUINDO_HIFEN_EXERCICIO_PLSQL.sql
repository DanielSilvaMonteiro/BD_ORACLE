/*O usuário usa sempre o hífen (-) para separar o nome do produto, o sabor e a embalagem. Note um exemplo abaixo:

DESCRICAO: Sabor de Verão - Uva - 1 Litro
Mas queremos que o produto seja salvo com o símbolo "maior que" (>) no lugar do hífen.

Para isso, modifique o script PL/SQL abaixo para que, caso o usuário inclua o hífen como separador dos nomes e 
classificações do produto, ele seja substituído pelo "maior que" (>):

Dica: A função Oracle que substitui textos é o REPLACE.

E, como teste, inclua um novo produto:

COD: 67120
DESCRICAO: Frescor da Montanha - Aroma Limão - 1 Litro
CATEGORIA: Águas
*/

DECLARE
   v_COD produto_exercicio.cod%type := '67120';
   v_DESCRICAO produto_exercicio.descricao%type := 'Frescor da Montanha - Aroma Limão - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-', '>'), v_CATEGORIA);
   COMMIT;
END;

SELECT * FROM PRODUTO_EXERCICIO;