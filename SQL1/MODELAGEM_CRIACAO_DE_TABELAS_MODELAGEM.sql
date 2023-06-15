create table tb_cliente(
cod_cliente varchar2(20),
nome varchar2(50) not null,
telefone_1 varchar2(14),
telefone_2 varchar2(14),
email varchar2(50) not null,
rua varchar2(50) not null,
bairro varchar2(20) not null,
cidade varchar2(15) not null,
estado varchar2(10)not null,
constraint pk_cliente primary key(cod_cliente)
);

create table tb_pedido(
cod_pedido varchar2(10),
cod_cliente varchar2(20),
data date,
valor_pedido decimal,
constraint pk_cod_pedido primary key(cod_pedido),
constraint fk_cliente_pedido foreign key (cod_cliente)references tb_cliente (cod_cliente)
);

create table tb_editora(
cod_editora varchar2(10),
telefone_1 varchar2(14) not null,
telefone_2 varchar2(14),
email varchar2(50) not null,
nome varchar2(50) not null,
constraint pk_editora primary key(cod_editora)
);

create table tb_livro(
cod_livro varchar2(10),
cod_editora varchar2(10),
valor decimal not null,
ano_publicacao integer not null,
categoria varchar2(25) not null,
titulo varchar2(50) not null,
nome_livro varchar2(50) not null,
isbn integer,
autor varchar2(25),
constraint pk_livro primary key(cod_livro),
constraint fk_livro_editora foreign key(cod_editora) references tb_editora(cod_editora)
);


create table tb_item_pedido(
cod_pedido varchar2(10) not null,
cod_livro varchar2(10) not null,
qtd_pedido integer not null,
valor_item decimal not null,
constraint fk_item_pedido_pedido foreign key(cod_pedido) references tb_pedido(cod_pedido),
constraint fk_item_pedido_livro foreign key(cod_livro) references tb_livro(cod_livro)
);

drop table tb_item_pedido;

create table tb_estoque(
cod_estoque integer,
cod_editora varchar2(10),
cod_livro varchar2(10),
qtd_estoque integer,
constraint pk_estoque primary key(cod_estoque),
constraint fk_estoque_editora foreign key(cod_editora) references tb_editora(cod_editora),
constraint fk_estoque_livro foreign key(cod_livro) references tb_livro(cod_livro)
);

create table tb_pessoa_fisica(
cod_cliente varchar2(20),
cpf varchar2(15) not null,
rg varchar2(15) not null,
constraint fk_fisica_cliente foreign key(cod_cliente) references tb_cliente(cod_cliente)
);

create table tb_pessoa_juridica(
cod_cliente varchar2(20),
cnpj varchar2(20) not null,
ie varchar2(20) not null,
constraint fk_juridica_cliente foreign key(cod_cliente) references tb_cliente(cod_cliente)
);