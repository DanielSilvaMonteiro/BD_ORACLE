CREATE TABLE PRODUTO_EXERCICIO
(COD VARCHAR2(5),
DESCRICAO VARCHAR2(100),
CATEGORIA VARCHAR2(100),
CONSTRAINT PRODUTO_EXERCICIO_COD_PK PRIMARY KEY(COD)
);

SELECT * FROM PRODUTO_EXERCICIO;

CREATE TABLE PRODUTO_VENDA_EXERCICIO
(ID NUMBER(5),
COD_PRODUTO VARCHAR2(5),
DATA DATE,
QUANTIDADE FLOAT,
PRECO FLOAT,
VALOR_TOTAL FLOAT,
PERCENTUAL_IMPOSTO FLOAT,
CONSTRAINT PRODUTO_VENDA_EXERCICIO_ID_PK PRIMARY KEY(ID),
CONSTRAINT PRODUTO_VENDA_EXERCICIO_PRODUTO_EXERCICIO_COD_FK FOREIGN KEY(COD_PRODUTO)
REFERENCES PRODUTO_EXERCICIO(COD)
);

SELECT * FROM PRODUTO_VENDA_EXERCICIO;
