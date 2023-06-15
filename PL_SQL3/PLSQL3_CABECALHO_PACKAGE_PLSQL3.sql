/*
UTILIZAR O MASTER USER DEV
NESTE EXEMPLO UTILIZAREMOS A PROCEDURE INCLUIR_CLIENTE
É NECESSÁRIO COPIAR PARTE DO CÓDIGO DA PROCEDURE INCLUIR_CLIENTE
PARA CRIAR O CABECALHO DO PACOTE
*/

create or replace package cliente_pac
is
procedure incluir_cliente 
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_cnpj cliente.cnpj%type ,
    p_segmercado_id cliente.segmercado_id%type,
    p_faturamento_previsto cliente.faturamento_previsto%type);
end;
