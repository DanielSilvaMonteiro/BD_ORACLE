SELECT * FROM TABELA_DE_PRODUTOS;

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limao';

SELECT * FROM TABELA_DE_PRODUTOS P WHERE CODIGO_DO_PRODUTO = '1101035';

SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT N.QUANTIDADE, N.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO FROM ITENS_NOTAS_FISCAIS N, TABELA_DE_PRODUTOS P WHERE N.CODIGO_DO_PRODUTO = (
SELECT PP.CODIGO_DO_PRODUTO FROM TABELA_DE_PRODUTOS PP WHERE PP.CODIGO_DO_PRODUTO = '1101035') AND NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limao' ORDER BY N.QUANTIDADE DESC, P.NOME_DO_PRODUTO;


SELECT N.QUANTIDADE, N.CODIGO_DO_PRODUTO, P.NOME_DO_PRODUTO FROM ITENS_NOTAS_FISCAIS N, TABELA_DE_PRODUTOS P WHERE N.CODIGO_DO_PRODUTO = (
SELECT PP.CODIGO_DO_PRODUTO AS "ESSE AQUI" FROM TABELA_DE_PRODUTOS PP WHERE PP.CODIGO_DO_PRODUTO = '1101035') AND NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limao' ORDER BY N.QUANTIDADE DESC;

SELECT * FROM ITENS_NOTAS_FISCAIS
WHERE codigo_do_produto = '1101035'
ORDER BY QUANTIDADE DESC
