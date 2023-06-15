select * from tb_produtos;

update TB_PRODUTOS
set EMBALAGEM_PRODUTO = 'Lata' 
where PRODUTO = '1037797';

update TB_PRODUTOS
set NOME_PRODUTO = 'Clean - 350 ml - Laranja', TAMANHO_PRODUTO = '350 ml', 
PRECO_LISTA_PRODUTO = 5.50
where PRODUTO = '1037797';