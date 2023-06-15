create table tab_empresa(
cod_empresa varchar2 (5),
nome_empresa varchar2(50),
constraint PK_CODEMP primary key(cod_empresa)
);

create table tab_departamento 
(cod_departamento varchar (5),
nome_departamento varchar(50),
cidade_departamento varchar(50),
codigo_empresa varchar (5),
constraint PK_CODDEP primary key(cod_departamento),
constraint fk_coddep_codemp foreign key (codigo_empresa) references tab_empresa(cod_empresa)
);

-- apagar chave estrangeira
alter table tab_departamento
drop constraint fk_coddep_codemp;

--apagar primary key
alter table tab_departamento
drop constraint PK_CODDEP;

alter table tab_empresa
drop primary key;

drop table tab_departamento;
drop table tab_empresa;