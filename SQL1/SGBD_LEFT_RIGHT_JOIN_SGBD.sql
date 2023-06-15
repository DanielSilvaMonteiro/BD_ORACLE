--------------LEFT JOIN----------------------
--livros  vendidos da base de dados
select  sgbd_livros.nome_livro, 
        sgbd_vendas.qtd_vendida
from sgbd_livros
left join sgbd_vendas
on sgbd_vendas.id_livro = sgbd_livros.id_livro;

--livros  não vendidos da base de dados
select  sgbd_livros.nome_livro, 
        sgbd_vendas.qtd_vendida
from sgbd_livros
left join sgbd_vendas
on sgbd_vendas.id_livro = sgbd_livros.id_livro
where sgbd_vendas.qtd_vendida is null;

--------------RIGHT JOIN----------------------
select  sgbd_vendas.id_livro,
        sgbd_livros.nome_livro, 
        sgbd_vendas.qtd_vendida
from sgbd_livros
right join sgbd_vendas
on sgbd_vendas.id_livro = sgbd_livros.id_livro;