GRANT UNLIMITED TABLESPACE TO ALURA_MODELAGEM;
SET DEFINE OFF;

insert into sgbd_livros values (1,'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 'Aventura', 34.65);
insert into sgbd_livros values (2, 'A Volta ao Mundo em 80 Dias', 'Julio Verne', 'Principis', 'Aventura', 21.99);
insert into sgbd_livros values (3, 'O Cortiço', 'Aluisio de Azevedo', 'Panda Books', 'Romance', 47.8);
insert into sgbd_livros values (4, 'Dom Casmurro', 'Machado de Assis', 'Via Leitura', 'Romance', 48);
insert into sgbd_livros values (5, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Antofágica', 'Romance', 45);
insert into sgbd_livros values (6, 'Quincas Borba', 'Machado de Assis', 'L&PM Editores', 'Romance', 48.5);
insert into sgbd_livros values (7, 'Ícaro', 'Gabriel Pedrosa', 'Ateliê', 'Poesia', 36);
insert into sgbd_livros values (8, 'Os Lusíadas', 'Luís Vaz de Camões', 'Montecristo', 'Poesia', 18.79);
insert into sgbd_livros values (9, 'Outros Jeitos de Usar a Boca', 'Rupi Kaur', 'Planeta', 'Poesia', 34.8);
insert into sgbd_livros (categoria, autoria, nome_livro, editora, id_livro, preco)
values ('Biografia' ,    'Malala Yousafzai', 'Eu sou Malala'       , 'Companhia das Letras', 10, 22.32);
insert into sgbd_livros (categoria, autoria, nome_livro, editora, id_livro, preco)
values('Biografia' ,    'Michelle Obama'  , 'Minha história'      , 'Objetiva', 11, 57.90);
insert into sgbd_livros (categoria, autoria, nome_livro, editora, id_livro, preco)
values('Biografia' ,    'Anne Frank'      , 'Diário de Anne Frank', 'Pe Da Letra', 12, 34.90);

insert into sgbd_vendedores values (1, 'Paula Rabelo');
insert into sgbd_vendedores values (2, 'Juliana Macedo');
insert into sgbd_vendedores values (3, 'Roberto Barros');
insert into sgbd_vendedores values (4, 'Barbara Jales');

insert into sgbd_vendas values (1, 3, 7, 1, '02/11/2020');
insert into sgbd_vendas values (2, 4, 8, 2, '02/11/2020');
insert into sgbd_vendas values (3, 4, 4, 3, '02/11/2020');
insert into sgbd_vendas values (4, 1, 7, 1, '03/11/2020');
insert into sgbd_vendas values (5, 1, 6, 3, '03/11/2020');
insert into sgbd_vendas values (6, 1, 9, 2, '04/11/2020');
insert into sgbd_vendas values (7, 4, 1, 3, '04/11/2020');
insert into sgbd_vendas values (8, 1, 5, 2, '05/11/2020');
insert into sgbd_vendas values (9, 1, 2, 1, '05/11/2020');
insert into sgbd_vendas values (10, 3, 8, 2, '11/11/2020');
insert into sgbd_vendas values (11, 1, 1, 4, '11/11/2020');
insert into sgbd_vendas values (12, 2, 10, 10, '11/11/2020');
insert into sgbd_vendas values (13, 1, 12, 5, '18/11/2020');
insert into sgbd_vendas values (14, 2, 4, 1, '25/11/2020');
insert into sgbd_vendas values (15, 3, 13, 2,'05/01/2021');
insert into sgbd_vendas values (16, 4, 13, 1, '05/01/2021');
insert into sgbd_vendas values (17, 4, 4, 3, '06/01/2021');
insert into sgbd_vendas values (18, 2, 12, 2, '06/01/2021');


insert into sgbd_estoque values (1,  7);
insert into sgbd_estoque values (2,  10);
insert into sgbd_estoque values (3,  2);
insert into sgbd_estoque values (8,  4);
insert into sgbd_estoque values (10, 5);
insert into sgbd_estoque values (11, 3);
insert into sgbd_estoque values (12, 3);

