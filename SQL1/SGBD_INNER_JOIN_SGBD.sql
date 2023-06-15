select  sgbd_vendas.id_vendedor, 
        sgbd_vendedores.nome_vendedor, 
        sum(sgbd_vendas.qtd_vendida) as "QTD_VENDA"
from sgbd_vendas
inner join sgbd_vendedores
on sgbd_vendas.id_vendedor = sgbd_vendedores.id_vendedor
group by sgbd_vendas.id_vendedor, sgbd_vendedores.nome_vendedor;