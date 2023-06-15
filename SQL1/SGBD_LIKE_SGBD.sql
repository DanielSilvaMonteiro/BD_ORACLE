--tras os que iniciam com A >> Aventura
select * from sgbd_livros
where categoria like 'A%';

--tras os que finalizam em ia >> Poesia, biografia
select * from sgbd_livros
where categoria like '%ia';

--tras os que contenham man >> Romance
select * from sgbd_livros
where categoria like '%man%';