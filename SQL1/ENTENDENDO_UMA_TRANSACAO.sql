--VERIFICAR EM OUTRA CONEXAO A MESMA QUERY ABAIXO
SELECT COUNT(*) FROM PRODUTOS;
--caso nao salvo, pode dar conflito no resultado da contagem, pois so atualiza se salvar

--commit salva e confrima tudo o que foi feito
--sem o commit / salvar só fica alterado pra mim e nao para todos
COMMIT;