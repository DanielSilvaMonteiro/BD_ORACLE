/*
SOBRECARAGA, SEMELHANTE A ORIENTACAO A OBJETOS, ONDE PODEMOS TER 5 PARAMETROS DE
ENTRADA, EM OUTROS CASOS 3 PARAMETROS DE ENTRADA, SERIA UMA SOBRECARGA DE MÉTODOS NA ORIENTACAO A OBJETOS
*/

--EXEMPLOS, estes exemplos nao rodam
procedure incluir_cliente 
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_cnpj cliente.cnpj%type ,
    p_segmercado_id cliente.segmercado_id%type,
    p_faturamento_previsto cliente.faturamento_previsto%type);

--CRIAMOS PARA FICAR COM 3 PARAMETROS, ISSO EM CLIENTE_PAC
procedure incluir_cliente 
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_segmercado_id cliente.segmercado_id%type);

--PARA ATUALIZAR, CLICAR NO PACOTE, ALTERAR O CABECALHO, DEPOIS IR NA ENGRENAGEM E 
--COMPILAR PARA DEPURACAO
--DARA ERRO NO CLIENTE_PAC BODY POR TER 5 CABECALHOS E 4 BODYS

--MESMO EXEMPLO COM O BODY
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

--APO'S ALTERAR 