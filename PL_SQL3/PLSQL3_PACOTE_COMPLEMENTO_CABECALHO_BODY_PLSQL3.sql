-----------------------------------------------------------------------
------------------CABECALHO DO PACOTE----------------------------------
-----------------------------------------------------------------------

create or replace package cliente_pac
is
--PROCEDURE INCLUIR_CLIENTE--------------------
procedure incluir_cliente 
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_cnpj cliente.cnpj%type ,
    p_segmercado_id cliente.segmercado_id%type,
    p_faturamento_previsto cliente.faturamento_previsto%type);
    
--PROCEDURE ATUALIZAR_CLI_SEG_MERCADO----------  
procedure atualizar_cli_seg_mercado
    (p_id cliente.id%type,
     p_segmercado_id cliente.segmercado_id%type);

--PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO-----      
procedure atualizar_faturamento_previsto
    (p_id in cliente.id%type,
     p_faturamento_previsto in cliente.faturamento_previsto%type);
     
--PROCEDURE EXCLUIR_CLIENTE--------------------     
procedure excluir_cliente
    (p_id in cliente.id%type);
    
end;

-----------------------------------------------------------------------
------------------CORPO DO PACOTE--------------------------------------
-----------------------------------------------------------------------

create or replace package body cliente_pac
IS
--PROCEDURE INCLUIR_CLIENTE---------------------
procedure incluir_cliente 
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_cnpj cliente.cnpj%type ,
    p_segmercado_id cliente.segmercado_id%type,
    p_faturamento_previsto cliente.faturamento_previsto%type)
is
    v_categoria cliente.categoria%type;
    v_cnpj cliente.cnpj%type := p_cnpj;
    v_codigo_erro number(5);
    v_mensagem_erro varchar2(200);
    v_dummy number;
    v_verifica_segmento boolean;
    e_segmento exception;
begin
    v_verifica_segmento := 	verifica_segmento_mercado(p_segmercado_id);
    if v_verifica_segmento = false then
        raise e_segmento;
    end if;
    v_categoria := obter_categoria_cliente(p_faturamento_previsto);
    format_cnpj (v_cnpj);
    insert into cliente 
          values (p_id, upper(p_razao_social), v_cnpj, p_segmercado_id
                  ,sysdate, p_faturamento_previsto, v_categoria);
commit;   
exception
    when dup_val_on_index then
        raise_application_error(-20010,'Cliente já cadastrado');
    when e_segmento then
        raise_application_error (-20011,'Segmento de mercado inexistente');
    when others then
        v_codigo_erro := sqlcode;
        v_mensagem_erro := sqlerrm;
        raise_application_error (-20000,to_char(v_codigo_erro)||v_mensagem_erro);
end;

--PROCEDURE ATUALIZAR_CLI_SEG_MERCADO----------- 
procedure atualizar_cli_seg_mercado
    (p_id cliente.id%type,
     p_segmercado_id cliente.segmercado_id%type)
is
        e_fk exception;
        pragma exception_init(e_fk, -2291);
        e_no_update exception;
begin
    update cliente
        set segmercado_id = p_segmercado_id
        where id = p_id;
    if sql%notfound then
        raise e_no_update;
    end if;
commit;
exception
    when e_fk then
        raise_application_error (-20001,'Segmento de Mercado Inexistente');
    when e_no_update then
       raise_application_error (-20002,'Cliente Inexistente');
end;

--PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO---------------
procedure atualizar_faturamento_previsto
    (p_id in cliente.id%type,
     p_faturamento_previsto in cliente.faturamento_previsto%type)
is 
    v_categoria cliente.categoria%type;
    e_error_id exception;
begin
    v_categoria := obter_categoria_cliente(p_faturamento_previsto);
    update cliente
        set categoria = v_categoria,
            faturamento_previsto = p_faturamento_previsto
        where id = p_id;
    if sql%notfound then
        raise e_error_id;
    end if;
commit;
exception
    when e_error_id then
        raise_application_error(-20010,'Cliente inexistente');
end;

--PROCEDURE EXCLUIR_CLIENTE-------------------------------   
procedure excluir_cliente
    (p_id in cliente.id%type)
is 
    e_error_id exception;
begin
    delete from cliente
        where id = p_id;
    if sql%notfound then
        raise e_error_id;
    end if;
    commit;
exception
    when e_error_id then
        raise_application_error(-20010,'Cliente inexistente');
end;

end;


-----------------------------------------------------------------------
------------------SINONIMOS--------------------------------------------
-----------------------------------------------------------------------

create public synonym cliente_pac for user_dev.cliente_pac;

