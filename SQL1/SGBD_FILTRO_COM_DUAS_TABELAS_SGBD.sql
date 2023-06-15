--selecionar nome do vendedor e quantidade de vendas
--é necessário buscar em duas tabelas
select sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor, sgbd_vendas.qtd_vendida
from sgbd_vendas, sgbd_vendedores
where sgbd_vendas.id_vendedor = sgbd_vendedores.id_vendedor;

--selecionar nome do vendedor e quantidade de vendas
--é necessário buscar em duas tabelas
--somar a quantidade de vendas de cada vendedor
select sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor, sum(sgbd_vendas.qtd_vendida)
from sgbd_vendas, sgbd_vendedores
where sgbd_vendas.id_vendedor = sgbd_vendedores.id_vendedor
group by sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor;

--selecionar nome do vendedor e quantidade de vendas
--é necessário buscar em duas tabelas
--somar a quantidade de vendas de cada vendedor
--ordenar os vendedores
select sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor, sum(sgbd_vendas.qtd_vendida)
from sgbd_vendas, sgbd_vendedores
where sgbd_vendas.id_vendedor = sgbd_vendedores.id_vendedor
group by sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor
order by sgbd_vendas.id_vendedor;