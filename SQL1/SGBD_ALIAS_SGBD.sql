-- identificar o nome dos livros que foram vendidos na tabela VENDAS
select sgbd_livros.nome_livro,
       sgbd_vendas.qtd_vendida
from sgbd_livros,  sgbd_vendas
where sgbd_vendas.id_livro = sgbd_livros.id_livro;

--usando alias
select L.nome_livro, V.qtd_vendida
from sgbd_livros "L", sgbd_vendas "V"
where V.id_livro = L.id_livro;

--somando as vendas
select L.nome_livro, sum(V.qtd_vendida) as "QTD_VENDIDA"
from sgbd_livros "L", sgbd_vendas "V"
where V.id_livro = L.id_livro
group by L.nome_livro;