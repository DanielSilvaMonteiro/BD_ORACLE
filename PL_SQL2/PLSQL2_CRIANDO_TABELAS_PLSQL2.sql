CREATE TABLE SEGMERCADO
(
ID NUMBER(5)
,DESCRICAO VARCHAR2(100)
);

CREATE TABLE CLIENTE
(
ID NUMBER(5)
,RAZAO_SOCIAL VARCHAR2(100)
,CNPJ VARCHAR2(20)
,SEGMERCADO_ID NUMBER(5)
,DATA_INCLUSAO DATE
,FATURAMENTO_PREVISTO NUMBER(10,2)
,CATEGORIA VARCHAR2(20)
);

ALTER TABLE SEGMERCADO ADD CONSTRAINT SEGMERCACO_ID_PK
PRIMARY KEY (ID);

ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_ID_PK
PRIMARY KEY (ID);

ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_SEGMERCADO_ID
FOREIGN KEY (SEGMERCADO_ID) REFERENCES SEGMERCADO (ID);


CREATE TABLE PRODUTO_EXERCICIO
(
COD VARCHAR2(5)
,DESCRICAO VARCHAR2(100)
,CATEGORIA VARCHAR2(100)
);

CREATE TABLE PRODUTO_VENDA_EXERCICIO
(
ID NUMBER(5)
,COD_PRODUTO VARCHAR2(5)
,DATA DATE
,QUANTIDADE FLOAT
,PRECO FLOAT
,VALOR_TOTAL FLOAT
,PERCENTUAL_IMPOSTO FLOAT
);

ALTER TABLE PRODUTO_EXERCICIO ADD CONSTRAINT PRODUTO_EXERCICIO_COD_PK
PRIMARY KEY (COD);

ALTER TABLE PRODUTO_VENDA_EXERCICIO ADD CONSTRAINT PRODUTO_VENDA_EXERCICIO_ID_PK
PRIMARY KEY (ID);

ALTER TABLE PRODUTO_VENDA_EXERCICIO ADD CONSTRAINT PRODUTO_VENDA_EXERCICIO_PRODUTO_EXERCICIO_COD
FOREIGN KEY (COD_PRODUTO) REFERENCES PRODUTO_EXERCICIO (COD);

Insert into SEGMERCADO (ID,DESCRICAO) values ('3','ATACADISTA');
Insert into SEGMERCADO (ID,DESCRICAO) values ('1','VAREJISTA');
Insert into SEGMERCADO (ID,DESCRICAO) values ('2','INDUSTRIAL');
Insert into SEGMERCADO (ID,DESCRICAO) values ('4','FARMACEUTICOS');

Insert into CLIENTE (ID,RAZAO_SOCIAL,CNPJ,SEGMERCADO_ID,DATA_INCLUSAO,FATURAMENTO_PREVISTO,CATEGORIA) values ('3','SUPERMERCADO CARIOCA','22222222222','1',to_date('13/06/22','DD/MM/RR'),'30000','M�DIO');
Insert into CLIENTE (ID,RAZAO_SOCIAL,CNPJ,SEGMERCADO_ID,DATA_INCLUSAO,FATURAMENTO_PREVISTO,CATEGORIA) values ('1','SUPERMERCADOS CAMPEAO','1234567890','1',to_date('12/06/22','DD/MM/RR'),'90000','MEDIO GRANDE');
Insert into CLIENTE (ID,RAZAO_SOCIAL,CNPJ,SEGMERCADO_ID,DATA_INCLUSAO,FATURAMENTO_PREVISTO,CATEGORIA) values ('2','SUPERMERCADO DO VALE','11111111111','1',to_date('13/06/22','DD/MM/RR'),'90000','M�DIO GRANDE');

Insert into PRODUTO_EXERCICIO (COD,DESCRICAO,CATEGORIA) values ('41232','Sabor de Ver�o > Laranja > 1 Litro','Sucos de Frutas');
Insert into PRODUTO_EXERCICIO (COD,DESCRICAO,CATEGORIA) values ('32223','Sabor de Ver�o > Uva > 1 Litro','Sucos de Frutas');
Insert into PRODUTO_EXERCICIO (COD,DESCRICAO,CATEGORIA) values ('67120','Frescor da Montanha > Aroma Lim�o > 1 Litro','�guas');
Insert into PRODUTO_EXERCICIO (COD,DESCRICAO,CATEGORIA) values ('92347','Aroma do Campo > Mate > 1 Litro','Mate');
Insert into PRODUTO_EXERCICIO (COD,DESCRICAO,CATEGORIA) values ('33854','Frescor da Montanha > Aroma Laranja > 1 Litro','�guas');

Insert into PRODUTO_VENDA_EXERCICIO (ID,COD_PRODUTO,DATA,QUANTIDADE,PRECO,VALOR_TOTAL,PERCENTUAL_IMPOSTO) values ('1','41232',to_date('01/01/22','DD/MM/RR'),'100','10','1000','100');
Insert into PRODUTO_VENDA_EXERCICIO (ID,COD_PRODUTO,DATA,QUANTIDADE,PRECO,VALOR_TOTAL,PERCENTUAL_IMPOSTO) values ('2','92347',to_date('01/01/22','DD/MM/RR'),'200','25','5000','15');