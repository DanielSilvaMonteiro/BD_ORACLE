CREATE TABLE TAB_PADRAO
(ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
DESCRITOR VARCHAR(20) NOT NULL,
ENDERECO VARCHAR(100) NULL,
CIDADE VARCHAR(50) DEFAULT ON NULL 'S�o Paulo',
DATA_CRIACAO DATE DEFAULT ON NULL SYSDATE,
CONSTRAINT PK_ID_PADR_AUTO PRIMARY KEY(ID)
);

--VISUALIZACAO DA TABELA
SELECT * FROM TAB_PADRAO;

--INSERIR DADOS NA TABELA
INSERT INTO TAB_PADRAO (DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO)
VALUES('CLIENTE 1', 'RUA COMERCIO', 'RIO DE JANEIRO', TO_DATE('2022/01/01', 'YYYY-MM-DD'));

--INSERIR UTILIZANDO OS VALORES PADROES DEFAULT OU NULO
INSERT INTO TAB_PADRAO (DESCRITOR)
VALUES('CLIENTE 2');


COMMIT;