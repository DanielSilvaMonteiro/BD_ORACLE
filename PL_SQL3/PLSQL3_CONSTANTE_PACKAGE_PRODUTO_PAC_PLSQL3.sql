/*
No corpo do pacote PRODUTO_EXERCICIO_PAC temos em destaque as linhas
da função RETORNA_IMPOSTO:

Substitua os valores de 10, 20 e 25 (respectivamente o percentual de 
imposto pago por Suco de Frutas, Águas e Mate) por constantes.
*/

----------------------------------------------------
---------TESTE DAS CONSTANTANTES USER_APP-----------
----------------------------------------------------
set serveroutput on;
exec dbms_output.put_line(produto_pac.c_agua);
exec dbms_output.put_line(produto_pac.c_mate);
exec dbms_output.put_line(produto_pac.c_suco_fruta);