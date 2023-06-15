--Conectar-se ao usuario: user_dev e criar as tabelas

create table segmercado (id number(5),  			  
          descricao varchar2(100));

alter table segmercado add constraint 		
    segmercado_id_pk primary key(id);

create table cliente
    ( id number(5),
      razao_social varchar2(100),
      cnpj varchar2(20),
      segmercado_id number(5),
      data_inclusao date,
      faturamento_previsto number(10,2),
      categoria varchar2(20));

alter table cliente add constraint cliente_id_pk 
	primary key(id);

alter table cliente 
    add constraint cliente_segmercado_fk 
    foreign key(segmercado_id) 
    references segmercado(id);

