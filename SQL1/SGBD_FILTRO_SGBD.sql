select * from sgbd_livros
where categoria = 'Biografia';


------------------------------------
select * from sgbd_livros
where categoria = 'Romance'
and
preco < 48;

------------------------------------
select * from sgbd_livros
where categoria = 'Poesia'
and not
(autoria = 'Lu�s Vaz de Cam�es' or autoria = 'Gabriel Pedrosa');

------------------------------------