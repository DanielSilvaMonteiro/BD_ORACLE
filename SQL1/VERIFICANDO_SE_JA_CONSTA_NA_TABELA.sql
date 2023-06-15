SELECT * FROM PRODUTOS;

INSERT INTO PRODUTOS
VALUES
('1040111', 'Light - 350 ml - Jaca', 'Jaca', '350 ml', 'Lata', 3.70);

--VERIFICANDO O CAMPO QUE JA ESTA NA TABELA PRODUTOS
SELECT P.CODIGO, TPF.CODIGO_DO_PRODUTO
FROM
PRODUTOS P
INNER JOIN
TABELA_DE_PRODUTOS_FONTE TPF
ON P.CODIGO = TPF.CODIGO_DO_PRODUTO;

----MODELO DE COMO INSERIR
INSERT INTO PRODUTOS
SELECT
CODIGO_DO_PRODUTO AS CODIGO,
NOME_DO_PRODUTO AS DESCRITOR,
SABOR,
TAMANHO,
EMBALAGEM,
PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE CODIGO_DO_PRODUTO <> '1040107';

--VERIFICAR O CAMPO REPETIDO COM IN-----
SELECT
CODIGO_DO_PRODUTO AS CODIGO,
NOME_DO_PRODUTO AS DESCRITOR,
SABOR,
TAMANHO,
EMBALAGEM,
PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE (CODIGO_DO_PRODUTO) IN (
SELECT P.CODIGO
FROM
PRODUTOS P
INNER JOIN
TABELA_DE_PRODUTOS_FONTE TPF
ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
);

--- PARA TRAZER OS QUE NAO SE REPETEM USAR O NOT
SELECT
CODIGO_DO_PRODUTO AS CODIGO,
NOME_DO_PRODUTO AS DESCRITOR,
SABOR,
TAMANHO,
EMBALAGEM,
PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE NOT (CODIGO_DO_PRODUTO) IN (
SELECT P.CODIGO
FROM
PRODUTOS P
INNER JOIN
TABELA_DE_PRODUTOS_FONTE TPF
ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
);


--FORMA DE VERIFICACAO DE IGUAIS E INSERCAO DE DADOS
INSERT INTO PRODUTOS
SELECT
    CODIGO_DO_PRODUTO AS CODIGO,
    NOME_DO_PRODUTO AS DESCRITOR,
    SABOR,
    TAMANHO,
    EMBALAGEM,
    PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE NOT (CODIGO_DO_PRODUTO) IN (
    SELECT P.CODIGO
    FROM
    PRODUTOS P
    INNER JOIN
    TABELA_DE_PRODUTOS_FONTE TPF
    ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
);


--***************EXERCICIO***************************
INSERT INTO TABELA_DE_PRODUTOS_FONTE
VALUES('9999999','NOVO PRODUTO', 'PET', '1 Litro', 'INDEFINIDO', 10);

SELECT * FROM TABELA_DE_PRODUTOS_FONTE;

--FORMA DE VERIFICACAO DE IGUAIS E INSERCAO DE DADOS
INSERT INTO PRODUTOS
SELECT
    CODIGO_DO_PRODUTO AS CODIGO,
    NOME_DO_PRODUTO AS DESCRITOR,
    SABOR,
    TAMANHO,
    EMBALAGEM,
    PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE NOT (CODIGO_DO_PRODUTO) IN (
    SELECT P.CODIGO
    FROM
    PRODUTOS P
    INNER JOIN
    TABELA_DE_PRODUTOS_FONTE TPF
    ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
);