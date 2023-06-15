select * from sgbd_vendas;

--selecionando sem repeticao o id_livro da tabela vendas
select distinct id_livro from sgbd_vendas;

--selecionando sem repeticao o id_livro da tabela vendas e com id_vendedor = 1
select distinct id_livro from sgbd_vendas
where id_vendedor = 1;

--ordenando e selecionando sem repeticao o id_livro da tabela vendas e com id_vendedor = 1
select distinct id_livro from sgbd_vendas
where id_vendedor = 1
order by id_livro;

