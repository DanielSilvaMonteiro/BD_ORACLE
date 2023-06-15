--a maior venda por código de pessoa vendedora
select id_vendedor, max(qtd_vendida) from sgbd_vendas
group by(id_vendedor)
order by id_vendedor;

--contagem de vendas por ID
select id_vendedor, count(qtd_vendida) from sgbd_vendas
group by(id_vendedor)
order by id_vendedor;

select * from sgbd_vendas
where id_vendedor = 1;

--soma das vendas 
select id_vendedor, sum(qtd_vendida) from sgbd_vendas
group by(id_vendedor)
order by id_vendedor;

--venda minima
select id_vendedor, min(qtd_vendida) from sgbd_vendas
group by(id_vendedor)
order by id_vendedor;

--media de vendas
select id_vendedor, avg(qtd_vendida) from sgbd_vendas
group by(id_vendedor)
order by id_vendedor;

