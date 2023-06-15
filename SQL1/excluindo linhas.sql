SELECT * FROM TABELA_DE_PRODUTOS_FONTE;

DELETE FROM TABELA_DE_PRODUTOS_FONTE WHERE CODIGO_DO_PRODUTO = '9999999';




INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50);
	 
	   INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001000','Sabor dos Alpes 700 ml - Mel�o','Mel�o','700 ml','Garrafa',7.50);
	 
	   INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001005','Sabor dos Alpes 700 ml - A�ai','A�ai','700 ml','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001007','Sabor dos Alpes 1 Litro - Mel�o','Mel�o','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50);
	 
	  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50);
	
 
	 SELECT * from PRODUTOS WHERE SUBSTR(DESCRITOR,1,15) = 'Sabor dos Alpes';
     
     SELECT * FROM TABELA_DE_PRODUTOS_FONTE WHERE SUBSTR(NOME_DO_PRODUTO,1,15) = 'Sabor dos Alpes';
     
     DELETE FROM PRODUTOS WHERE CODIGO = '1001000';
     
     SELECT COUNT(*) FROM PRODUTOS;
     SELECT COUNT(*) FROM TABELA_DE_PRODUTOS;
     
---INNER JOIN PARA VER QUEM ESTA EM AMBOS AS TABELAS     
     SELECT TPF.CODIGO_DO_PRODUTO AS "CODIGO_FONTE", P.CODIGO AS "CODIGO_PRODUTO",
            TPF.NOME_DO_PRODUTO AS "DESCRITOR_FONTE", P.DESCRITOR AS "DESCRITOR_PRODUTO"
     FROM PRODUTOS P
     INNER JOIN TABELA_DE_PRODUTOS_FONTE TPF
     ON P.CODIGO = TPF.CODIGO_DO_PRODUTO ;

--LEFT JOIN-- TRAZ TODOS INCICANDO NULL EM QUEM NAO ESTA NA TABELA PRODUTOS_FONTE
     SELECT TPF.CODIGO_DO_PRODUTO AS "CODIGO_FONTE", P.CODIGO AS "CODIGO_PRODUTO",
            TPF.NOME_DO_PRODUTO AS "DESCRITOR_FONTE", P.DESCRITOR AS "DESCRITOR_PRODUTO"
     FROM PRODUTOS P
     LEFT JOIN TABELA_DE_PRODUTOS_FONTE TPF
     ON P.CODIGO = TPF.CODIGO_DO_PRODUTO ;
     
--EXCLUIR QUEM NAO EST� NA TABELA_FONTE
--SELECT PARA VERIFICAR QUEM � NULO NA TABELA_FONTE
SELECT P.CODIGO 
FROM PRODUTOS P 
LEFT JOIN TABELA_DE_PRODUTOS_FONTE TPF
ON CODIGO = TPF.CODIGO_DO_PRODUTO
WHERE TPF.CODIGO_DO_PRODUTO IS NULL;

DELETE FROM PRODUTOS P WHERE
P.CODIGO IN(
SELECT P.CODIGO 
FROM PRODUTOS P 
LEFT JOIN TABELA_DE_PRODUTOS_FONTE TPF
ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
WHERE TPF.CODIGO_DO_PRODUTO IS NULL
);