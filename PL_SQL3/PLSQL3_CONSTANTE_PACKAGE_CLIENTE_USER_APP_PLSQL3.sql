/*
CRIAR AS CONSTANTES NO CABECALHO DE USER_DEV CLIENTE_PAC
TROCAR OS VALORES DA PROCEDURE OBTER_CATEGORIA_CLIENTE EM CLIENTE_PAC
TODA VEZ QUE COMPILAR O CABECALHO DO PACOTE O CORPO PRECISA SER COMPILADO
NESTE CASO VAMOS SUBSTITUIR OS VALORES DE OBTER_SEGMENTO_MERCADO PELAS CONSTANTES DO CABECALHO

--CRIANDO CONSTANTES PARA UTILIZAR EM OBTER_SEGMENTO_MERCADO
c_pequeno number(10) := 10000;
c_medio number(10) := 50000;
c_medio_grande number(10) := 100000;

np pacote
function obter_categoria_cliente
    (p_faturamento_previsto in cliente.faturamento_previsto%type)
    return cliente.categoria%type
is
begin
    if p_faturamento_previsto <= c_pequeno then 
       return 'PEQUENO';
    elsif p_faturamento_previsto <= c_medio then
       return 'MEDIO';
    elsif p_faturamento_previsto <= c_medio_grande  then
       return 'MEDIO GRANDE';
    else
       return 'GRANDE';
    end if;   
end;
*/

--USER_APP
select * from cliente where id = 31 or id = 32;

execute app_incluir_cliente(31, 'CLIENTE INCLUIDO PELO PACOTE', '233333', 2, 100000);

--ALTERAR O VALOR DA CONSTANTE C_MEDIO_GRANDE DE 100000 PARA 90000 E VER A ALTERACAO NO SELECT
execute app_incluir_cliente(32, 'CLIENTE INCLUIDO PELO PACOTE', '233333', 2, 100000);

-------------------------------------------------------------
---------------VERIFICARO VALOR DA CONSTANTE-----------------
-------------------------------------------------------------
set serveroutput on;
exec dbms_output.put_line(cliente_pac.c_medio_grande);