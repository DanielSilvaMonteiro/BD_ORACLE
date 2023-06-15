create or replace PROCEDURE ATUALIZAR_VALOR_TOTAL_IMPOSTO_INSTRUTOR IS
   v_ID produto_venda_exercicio.id%type := 1;
   v_NUMERO_VENDA INTEGER;
   v_COD_PRODUTO produto_venda_exercicio.cod_produto%type;
   v_VALOR produto_venda_exercicio.valor_total%type;
   v_QUANTIDADE produto_venda_exercicio.quantidade%type;
   v_PRECO produto_venda_exercicio.preco%type;
   v_PERCENTUAL produto_venda_exercicio.percentual_imposto%type;

BEGIN
   SELECT COUNT(*) INTO v_NUMERO_VENDA FROM PRODUTO_VENDA_EXERCICIO;
   LOOP
      SELECT COD_PRODUTO, QUANTIDADE, PRECO INTO v_COD_PRODUTO, v_QUANTIDADE, v_PRECO 
      FROM PRODUTO_VENDA_EXERCICIO WHERE ID = v_ID;
      v_PERCENTUAL := RETORNA_IMPOSTO(v_COD_PRODUTO);
      v_VALOR := v_QUANTIDADE * v_PRECO;
      UPDATE PRODUTO_VENDA_EXERCICIO SET VALOR_TOTAL = v_VALOR, PERCENTUAL_IMPOSTO = v_PERCENTUAL WHERE ID = v_ID;
      v_ID := v_ID + 1;
   EXIT WHEN v_ID > v_NUMERO_VENDA;
   END LOOP;
END;

----------------------------------TESTE DA PROCEDURE------------------

EXECUTE ATUALIZAR_VALOR_TOTAL_IMPOSTO_INSTRUTOR;

SELECT * FROM PRODUTO_VENDA_EXERCICIO;