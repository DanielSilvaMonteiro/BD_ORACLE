select * from tabela_de_produtos;

select tamanho, embalagem from tabela_de_produtos
where embalagem = 'Garrafa';

select count(*) as "quantidade de produtos em garrafa" from
(select * from tabela_de_produtos
where embalagem = 'Garrafa');

select tamanho, embalagem, count(*) as quantidade_de_produtos from tabela_de_produtos
where  embalagem = 'Garrafa'
group by tamanho, embalagem;


select estado, sum(rownum) as "quantidade de clientes" from tb_clientes group by estado;

select estado, count(*) 
from tb_clientes
group by estado;


select count(*) as quantidade_de_estados from
(select distinct estado from tb_clientes);

select count(*) as quantidade_de_estados from
(select estado from tb_clientes
group by estado);

select distinct estado as "total de estados" from tb_clientes;
 
 select rownum, estado, nome
from tb_clientes
where rownum <=8
order by nome;

select * from tb_clientes;


select max(M_CLIENTES.CONTA_CLIENTES) as "MAIOR_QTD_CLIENTES" FROM
(select count(*) AS "CONTA_CLIENTES"
from tb_clientes 
group by estado) "M_CLIENTES";


select M_CLIENTES.ESTADO, count(M_CLIENTES.NOME)
from tb_clientes "M_CLIENTES"
group by estado;