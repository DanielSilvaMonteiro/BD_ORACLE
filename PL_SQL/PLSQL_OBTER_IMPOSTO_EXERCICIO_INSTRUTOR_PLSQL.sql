create or replace function retorna_imposto2 
    (
    --TABELA PRODUTO_VENDA_EXERCICIO
    p_cod_produto produto_venda_exercicio.cod_produto%type
    )
return 
    --TABELA PRODUTO_VENDA_EXERCICIO
    produto_venda_exercicio.percentual_imposto%type
is
   --TABELA PRODUTO_EXERCICIO 
   v_categoria produto_exercicio.categoria%type;
   --TABELA PRODUTO_VENDA_EXERCICIO
   v_imposto produto_venda_exercicio.percentual_imposto%type;
begin
    --RETORNA CATEGORIA É UMA OUTRA PROCEDURE
    v_categoria := retorna_categoria(p_cod_produto);    
    --TRIM RETIRA ESPACOS NO INICIO E FINAL DO CAMPO
    if trim(v_categoria) = 'Sucos de Frutas' then
        v_imposto := 10;
    elsif  trim(v_categoria) = 'Águas' then
        v_imposto := 20;
    elsif  trim(v_categoria) = 'Mate' then
        v_imposto := 15;
    end if;
    return v_imposto;
end;

-----EXECUTAR FUNCAO----33854----67120-------41232-----------
variable g_imposto varchar2(100);
execute :g_imposto := retorna_imposto2('41232');
print g_imposto;