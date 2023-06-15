SELECT * FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE > 20;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE < 20;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <> 18;

SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO >= '14-NOV-1995';

SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO >= TO_DATE('NOV-14-1995', 'MM/DD/YYYY');

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE BETWEEN 18 AND 22;

-- ORDEM ALFABETICA DEPOIS DE L
SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO >= 'Lapa';
