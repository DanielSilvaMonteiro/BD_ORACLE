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
(autoria = 'Luís Vaz de Camões' or autoria = 'Gabriel Pedrosa');

------------------------------------