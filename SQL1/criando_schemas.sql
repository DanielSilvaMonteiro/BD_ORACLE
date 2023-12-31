CREATE TABLE SEGMERCADO
(ID NUMBER(5),
DESCRICAO VARCHAR2(100)
);

CREATE TABLE CLIENTE
(ID NUMBER(5),
RAZAO_SOCIAL VARCHAR2(100),
CNPJ VARCHAR2(20),
SEGMERCADO_ID NUMBER(5),
DATA_INCLUSAO DATE,
FATURAMENTO_PREVISTO NUMBER(10,2),
CATEGORIA VARCHAR2(20)
);

--CRIANDO PRIMARY KEYS
ALTER TABLE SEGMERCADO
ADD CONSTRAINT SEGMERCADO_ID_PK
PRIMARY KEY(ID);

ALTER TABLE CLIENTE
ADD CONSTRAINT CLIENTE_ID_PK
PRIMARY KEY(ID);

--CRIANDO FOREIGN KEY
ALTER TABLE CLIENTE
ADD CONSTRAINT CLIENTE_SEGMERCADO_FK
FOREIGN KEY(SEGMERCADO_ID) 
REFERENCES SEGMERCADO(ID);

COMMIT;