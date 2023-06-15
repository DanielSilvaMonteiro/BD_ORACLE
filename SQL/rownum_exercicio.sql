select * from notas_fiscais;

select rownum, data_venda from notas_fiscais where rownum <= 10 and data_venda = '01-OCT-2017';