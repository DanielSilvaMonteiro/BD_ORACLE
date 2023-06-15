-- No Oracle SQL Developer ir para: Menu Superior -> Ferramentas -> Preferencias
-- Banco de Dados -> Planilha 
-- Em SELECIONAR CAMINHO PADRÃO PARA PROCURA DE SCRIPTS colocar o local do script do curso. 

create or replace function obter_categoria_cliente
    (p_faturamento_previsto in cliente.faturamento_previsto%type)
    return cliente.categoria%type
is
begin
    if p_faturamento_previsto <= 10000 then 
       return 'PEQUENO';
    elsif p_faturamento_previsto <= 50000 then
       return 'MEDIO';
    elsif p_faturamento_previsto <= 100000  then
       return 'MEDIO GRANDE';
    else
       return 'GRANDE';
    end if;   
end;
/

create or replace function obter_descricao_segmento 
    (p_id in segmercado.id%type)
    return segmercado.descricao%type
is
    v_descricao segmercado.descricao%type;
begin
    select descricao into v_descricao
       from segmercado
       where id = p_id;
    return v_descricao;
exception
        when no_data_found then
            raise_application_error(-20002,'Segmento de Mercado	Inexistente');
end;
/

create or replace function verifica_segmento_mercado
    (p_id in segmercado.id%type)
        return boolean
is
    v_dummy number(1);
begin
    select 1 into v_dummy
        from segmercado
        where id = p_id;
    return true;
exception   
    when no_data_found then
        return false;
end;
/


create or replace procedure format_cnpj 
			(p_cnpj in out varchar2)
is
begin
	p_cnpj := substr(p_cnpj,1,2) ||'/'|| substr(p_cnpj,3);
end;
/

create or replace procedure atualizar_cli_seg_mercado
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
/

create or replace procedure atualizar_faturamento_previsto
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
/

create or replace procedure excluir_cliente
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
/

create or replace procedure incluir_cliente 
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
/

create or replace procedure incluir_segmercado
    (p_id in segmercado.id%type,
     p_descricao in segmercado.descricao%type)
is
 begin
    insert into segmercado 
       values(p_id, upper(p_descricao));
    commit;
exception
    when dup_val_on_index then
        raise_application_error(-20001,'Segmento de Mercado já Cadastrado');
end;
/



create or replace function verifica_segmento_mercado
    (p_id in segmercado.id%type)
        return boolean
is
    v_dummy number(1);
begin
    select 1 into v_dummy
        from segmercado
        where id = p_id;
    return true;
exception   
    when no_data_found then
        return false;
end;
/

