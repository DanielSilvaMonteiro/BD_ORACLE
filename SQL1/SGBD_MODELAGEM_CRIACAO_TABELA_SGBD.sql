create table sgbd_livros(
    id_livro int not null,
    nome_livro varchar2(100) not null,
    autoria varchar2(100) not null,
    editora varchar2(100) not null,
    categoria varchar(100) not null,
    preco decimal (5,2),
    constraint pk_sgbd_livros primary key(id_livro)
);

create table sgbd_estoque (
    id_livro int not null,
    qtd_estoque int not null,
    constraint fk_livro_estoque foreign key (id_livro) references sgbd_livros (id_livro),
    constraint pk_sgbd_estoque primary key (id_livro)
);

create table sgbd_vendedores (
    id_vendedor int not null,
    nome_vendedor varchar(255) not null
);

alter table sgbd_vendedores
add constraint pk_vendedor primary key (id_vendedor);

create table sgbd_vendas (
    id_pedido int not null,
    id_vendedor int not null,
    id_livro int not null,
    qtd_vendida int not null,
    data_venda date not null,
    constraint fk_vendedores foreign key(id_vendedor) references sgbd_vendedores(id_vendedor),
    constraint fk_livros foreign key (id_livro) references sgbd_livros(id_livro),
    constraint pk_vendedor_pedido_vendas_vendedor primary key (id_vendedor,id_pedido)
);