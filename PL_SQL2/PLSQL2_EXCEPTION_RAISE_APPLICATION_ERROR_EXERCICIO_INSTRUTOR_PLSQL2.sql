declare
   v_produto produto_exercicio.cod%type:= 41232;
   e_probchave exception;
   pragma exception_init(e_probchave,-2292);
begin
   excluindo_produto(v_produto);
exception
   when e_probchave then
      raise_application_error(-20015,'PRODUTO ' || v_produto || ' POSSUI VENDA. LOGO NÃO PODE SER EXCLUIDO.');
end;