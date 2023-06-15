/*
Abra o pacote PRODUTO_EXERCICIO_PAC. 
Inclua no cabeçalho do pacote a seguinte rotina:

PROCEDURE INCLUINDO_PRODUTO 
(p_COD produto_exercicio.cod%type
, p_DESCRICAO produto_exercicio.descricao%type);


Compile o pacote.

E no corpo do pacote, inclua:

PROCEDURE INCLUINDO_PRODUTO 
(p_COD produto_exercicio.cod%type
, p_DESCRICAO produto_exercicio.descricao%type)
IS
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (p_COD, REPLACE(p_DESCRICAO,'-','>')
   , 'Categoria não definida');
   COMMIT;
END;

Compile o pacote.

Quando o seguinte procedimento for executado:


EXECUTE PRODUTO_EXERCICIO_PAC.INCLUINDO_PRODUTO('46223','Sabor da Montanha > 300 ml > Águas','Águas','Categoria Não Definida');
*/

execute produto_pac.incluindo_produto('46223','Sabor da Montanha > 300 ml > Águas','Águas','Categoria Não Definida');