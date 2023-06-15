-----------------------------------------------------------------------
------------------CABECALHO DO PACOTE----------------------------------
-----------------------------------------------------------------------

create or replace package produto_pac
is
--FUNCAO RETORNA_CATEGORIA
function retorna_categoria
    (p_cod in produto_exercicio.cod%type)
    return produto_exercicio.categoria%type;

--FUNCAO RETORNA_IMPOSTO
function retorna_imposto 
    (p_cod_produto produto_venda_exercicio.cod_produto%type)
    return produto_venda_exercicio.percentual_imposto%type;
    
--PROCEDURE INCLUINDO_PRODUTO--------------------
procedure incluindo_produto 
    (
    p_cod produto_exercicio.cod%type,
    p_descricao produto_exercicio.descricao%type,
    p_categoria produto_exercicio.categoria%type
    );
    
--PROCEDURE INCLUINDO_DADOS_VENDA----------  
procedure incluindo_dados_venda 
    (
    p_id produto_venda_exercicio.id%type,
    p_cod_produto produto_venda_exercicio.cod_produto%type,
    p_data produto_venda_exercicio.data%type,
    p_quantidade produto_venda_exercicio.quantidade%type,
    p_preco produto_venda_exercicio.preco%type
    );
   
end;


-----------------------------------------------------------------------
------------------CORPO DO PACOTE--------------------------------------
-----------------------------------------------------------------------

create or replace package body produto_pac
is
--FUNCAO RETORNA_CATEGORIA
function retorna_categoria
    (p_cod in produto_exercicio.cod%type)
return produto_exercicio.categoria%type
is
   v_categoria produto_exercicio.categoria%type;
begin
    select categoria into v_categoria from produto_exercicio where cod = p_cod;
return v_categoria;
end;

--FUNCAO RETORNA_IMPOSTO
function retorna_imposto 
    (p_cod_produto produto_venda_exercicio.cod_produto%type)
    return produto_venda_exercicio.percentual_imposto%type
is
   v_categoria produto_exercicio.categoria%type;
   v_imposto produto_venda_exercicio.percentual_imposto%type;
begin
    v_categoria := retorna_categoria(p_cod_produto);
    if trim(v_categoria) = 'Sucos de Frutas' then
        v_imposto := 10;
    elsif trim(v_categoria) = 'Águas' then
        v_imposto := 20;
    elsif trim(v_categoria) = 'Mate' then
        v_imposto := 15;
    end if;
return v_imposto;
end;


--PROCEDURE INCLUINDO_PRODUTO--------------------
procedure incluindo_produto 
    (
    p_cod produto_exercicio.cod%type,
    p_descricao produto_exercicio.descricao%type,
    p_categoria produto_exercicio.categoria%type
    )
is
begin
   insert into produto_exercicio (cod, descricao, categoria) values (p_cod, replace(p_descricao,'-','>')
   , p_categoria);
commit;
end;
    
--PROCEDURE INCLUINDO_DADOS_VENDA----------  
procedure incluindo_dados_venda 
    (
    p_id produto_venda_exercicio.id%type,
    p_cod_produto produto_venda_exercicio.cod_produto%type,
    p_data produto_venda_exercicio.data%type,
    p_quantidade produto_venda_exercicio.quantidade%type,
    p_preco produto_venda_exercicio.preco%type
    )
is
   v_valor produto_venda_exercicio.valor_total%type;
   v_percentual produto_venda_exercicio.percentual_imposto%type;
begin
   v_percentual := retorna_imposto(p_cod_produto);
   v_valor := p_quantidade * p_preco;
   insert into produto_venda_exercicio 
   (id, cod_produto, data, quantidade, preco, valor_total, percentual_imposto) 
   values 
   (p_id, p_cod_produto, p_data, p_quantidade, p_preco, v_valor, v_percentual);
commit;
end;
end;


-----------------------------------------------------------------------
------------------SINONIMOS--------------------------------------------
-----------------------------------------------------------------------

create public synonym produto_pac for user_dev.produto_pac;

--apagar synonym apenas com a conexao maquina local.
--drop public synonym produto_pac force;

-----------------------------------------------------------------------
------------------PERMISSAO--------------------------------------------
-----------------------------------------------------------------------
/*
CASO NAO DE PERMISSAO, AO EXECUTAR O PACOTE APARECERÁ A MENSAGEM DE ERRO ORA
INDICANDO QUE O NOME DO PACOTE DEVERÁ SER DECLARADO.
*/
grant execute on produto_pac to user_app;

-----------------------------------------------------------------------
------------------TESTE USER_APP---------------------------------------
-----------------------------------------------------------------------

select * from produto_exercicio;

execute produto_pac.incluindo_produto('22222', 'Sabor Original - Mate - 1 Litro', 'Mate');

execute produto_pac.incluindo_produto('78777','Sabor de Verão > 300 ml > Laranja','Suco de Frutas');