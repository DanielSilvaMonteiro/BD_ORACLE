/*
Fa�a uma an�lise nas rotinas (procedures e fun��es) 
usadas pelo pacote PRODUTO_EXERCICIO_PAC, fa�a as 
modifica��es necess�rias e remova as rotinas desnecess�rias.
*/

--PROCEDURE INCLUINDO _PRODUTO, SEM DEPENDENCIAS
execute deptree_fill('procedure', 'user_dev', 'incluindo_produto');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--PROCEDURE INCLUINDO_DADOS_VENDA, SEM DEPENDENCIAS
execute deptree_fill('procedure', 'user_dev', 'incluindo_dados_venda');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--FUNCTION RETORNA_CATEGORIA, ESTA INTERNO DE INCLUINDO_DADOS_VENDA, SEM DEPENDENCIAS SE DROPAR INCLUINDO_DADOS_VENDA
execute deptree_fill('function', 'user_dev', 'retorna_categoria');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--FUNCTION RETORNA_CATEGORIA, ESTA INTERNO DE RETORNA_IMPOSTO, SEM DEPENDENCIAS SE DROPAR INCLUINDO_DADOS_VENDA
execute deptree_fill('function', 'user_dev', 'retorna_imposto');

select nested_level, schema, type, name, seq# from deptree order by seq#;

----------------------------------------------------
------------DROP------------------------------------
----------------------------------------------------
drop procedure incluindo_produto;
drop procedure incluindo_dados_venda;
drop function retorna_categoria;
drop function retorna_imposto;