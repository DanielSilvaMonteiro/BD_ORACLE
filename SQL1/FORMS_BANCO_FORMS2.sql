create table f_item(
cod_item varchar2(10),
nom_item varchar2(100) not null,
constraint pk_fitem primary key(cod_item)
);

create table f_ped_item(
qtd_item int not null,
vlr_item decimal(5,2) not null,
cod_item varchar2(10),
nro_pedido varchar2(10)
);

create table f_pedido(
nro_pedido varchar2(10),
dat_pedido date not null,
cod_cliente varchar2(10),
constraint pk_fpedido primary key(nro_pedido)
);

create table f_cliente(
cod_cliente varchar2(10),
nom_cliente varchar2(100) not null,
nro_regiao varchar2(10),
cod_municipio varchar2(10),
cod_distrito varchar2(10),
constraint pk_fcliente primary key(cod_cliente)
);

create table f_regiao(
nro_regiao varchar2(10),
des_regiao varchar2(100) not null,
constraint pk_regiao primary key(nro_regiao)
);

create table f_distrito(
cod_distrito varchar2(10),
nom_distrito varchar2(100) not null,
cod_municipio varchar2(10),
constraint pk_distrito primary key(cod_distrito)
);

create table f_municipio(
cod_municipio varchar2(10),
nom_municipio varchar2(100) not null,
sig_uf varchar2(10),
cod_pais varchar2(10),
constraint pk_municipio primary key(cod_municipio)
);

create table f_uf(
sig_uf varchar2(10),
nom_uf varchar2(100) not null,
cod_pais varchar2(10),
constraint pk_uf primary key(sig_uf)
);

create table f_pais(
cod_pais varchar2(10),
nom_pais varchar2(100) not null,
constraint pk_pais primary key(cod_pais)
);

----------CRIANDO AS FK`S--------------------------
alter table f_ped_item
add constraint fk_item_peditem foreign key(cod_item) references f_item(cod_item);
alter table f_ped_item
add constraint fk_pedido_peditem foreign key(nro_pedido) references f_pedido(nro_pedido);

----------------------
alter table f_pedido
add constraint fk_cli_pedido foreign key(cod_cliente) references f_cliente(cod_cliente);

-----------------------
alter table f_cliente
add constraint fk_reg_peditem foreign key(nro_regiao) references f_regiao(nro_regiao);
alter table f_cliente
add constraint fk_muni_peditem foreign key(cod_municipio) references f_municipio(cod_municipio);
alter table f_cliente
add constraint fk_dist_peditem foreign key(cod_distrito) references f_distrito(cod_distrito);

------------------------
alter table f_distrito
add constraint fk_dist_munic foreign key(cod_municipio) references f_municipio(cod_municipio);

------------------------
alter table f_municipio
add constraint fk_muni_uf foreign key(sig_uf) references f_uf(sig_uf);
alter table f_municipio
add constraint fk_muni_pais foreign key(cod_pais) references f_pais(cod_pais);

------------------------
alter table f_uf
add constraint fk_uf_pais foreign key(cod_pais) references f_pais(cod_pais);
