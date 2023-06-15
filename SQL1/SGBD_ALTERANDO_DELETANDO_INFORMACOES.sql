--nao vai fazer por ser chave FK em outra tabela erro ORA-02292 (ALURA_MODELAGEM.FK_LIVROS) violada - registro filho localizado
delete from sgbd_livros
where id_livro = 8;

--atualizacao 10% de descontos em todos os livros
update sgbd_livros 
set preco = 0.9 * preco;

--consulta após alteracao
select * from sgbd_livros;