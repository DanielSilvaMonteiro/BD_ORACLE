SELECT * FROM TB_CLIENTES;

SELECT * FROM TB_CLIENTES WHERE IDADE = 22;

SELECT * FROM TB_CLIENTES WHERE IDADE > 22;

SELECT * FROM TB_CLIENTES WHERE IDADE >= 22;

SELECT * FROM TB_CLIENTES WHERE IDADE <= 22;

--DIFERENTE
SELECT * FROM TB_CLIENTES WHERE IDADE <> 22;

--NESTE EXEMPLO PEGA OS NOMES POR ORDEM ALFABETICA MAIORES QUE 
SELECT * FROM TB_CLIENTES WHERE NOME > 'Marcelo Mattos';

SELECT * FROM TB_CLIENTES WHERE NOME <> 'Marcelo Mattos';

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO_LISTA > 16.008;
SELECT * FROM TB_PRODUTOS WHERE PRECO_LISTA > 16.00;
SELECT * FROM TB_PRODUTOS WHERE PRECO_LISTA = 16.00;