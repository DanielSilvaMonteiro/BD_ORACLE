/*
ANTES DE ELIMINAR AS ROTINAS OBSOLETAS, DEVEMOS VER A DEPENDENCIA DE CADA
PROCEDURE OU TABELA

DEPTREE_FILL
*/

--para verificar as dependencias
execute deptree_fill('procedure', 'user_dev', 'incluir_cliente');

--PARA VISUALIZAR OS RESULTADOS PELA VIEW, DEPTREE
select nested_level, schema, type, name, seq# from deptree order by seq#;

--NO EXEMPLO O INCLUIR_CLIENTE ESTA COM DEPENDENCIA EM APP_INCLIR_CLIENTE
--COM A PROCEDURE EXTERNA, DEVEMOS ADICIONAR CLIENTE_PAC.INCLUIR_CLIENTE;
--APÓS FAZER ISSO A PROCEDURE ESTÁ APTA PARA SER EXCLUIDA


--VERIFICAR PROCEDURE ATUALIZAR_SEG_MERCADO, ESTA APTA PARA SER EXCLUIDA
execute deptree_fill('procedure', 'user_dev', 'atualizar_cli_seg_mercado');

select nested_level, schema, type, name, seq# from deptree order by seq#;


--VERIFICAR PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO, ESTA APTA PARA SER EXCLUIDA
execute deptree_fill('procedure', 'user_dev', 'atualizar_faturamento_previsto');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--VERIFICAR PROCEDURE EXCLUIR_CLIENTE, ESTA APTA PARA SER EXCLUIDA
execute deptree_fill('procedure', 'user_dev', 'excluir_cliente');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--VERIFICAR PROCEDURE FORMATA_CNPJ, ESTA APTA PARA SER EXCLUIDA
--INCLUIR_CLIENTE ESTÁ RELACIONADA A FORMAT_CNPJ
--MAS SE EXCLUIR INCLUIR_CLIENTE (EXTERNA) ANTES DE FORMATA_CNPJ É CONSIDERADO COMO NAO TER DEPENDENCIAS
execute deptree_fill('procedure', 'user_dev', 'format_cnpj');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--FUNCTION CATEGORIA_CLIENTE, MESMO CASO DO FORMAT_CNPJ
execute deptree_fill('function', 'user_dev', 'obter_categoria_cliente');

select nested_level, schema, type, name, seq# from deptree order by seq#;

--FUNCTION VERIFICA_SEGMENTO_MERCADO, MESMO CASO DO FORMAT_CNPJ, MESMO CASO DO FORMAT_CNPJ
execute deptree_fill('function', 'user_dev', 'verifica_segmento_mercado');

select nested_level, schema, type, name, seq# from deptree order by seq#;


----------------------------------------------------
------------DROP------------------------------------
----------------------------------------------------
drop procedure incluir_cliente;
drop procedure atualizar_cli_seg_mercado;
drop procedure atualizar_faturamento_previsto;
drop procedure excluir_cliente;

--APÓS ELIMINAR AS PROCEDURES, VERIFICANDO AS FUNCTIONS QUE RESTARAM, PERCEBEMOS
--QUE ELAS NAO POSSUEM DEPENDENCIAS, OU FAZEM REFERENCIA A OUTRAS PROCEDURES;

drop procedure format_cnpj;
drop function obter_categoria_cliente;
drop function  verifica_segmento_mercado;

commit;
