SELECT SOMA_EMBALAGENS.EMBALAGEM, SOMA_EMBALAGENS.SOMA_PRECO
FROM 
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS "SOMA_PRECO"
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM) "SOMA_EMBALAGENS"
WHERE SOMA_EMBALAGENS.SOMA_PRECO >= 80
GROUP BY SOMA_EMBALAGENS.EMBALAGEM, SOMA_EMBALAGENS.SOMA_PRECO;

CREATE VIEW VW_SOMA_EMBALAGENS AS
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM;

SELECT EMBALAGEM, SOMA_PRECO FROM VW_SOMA_EMBALAGENS
WHERE SOMA_PRECO >=80;

SELECT * FROM TABELA_DE_PRODUTOS TP
INNER JOIN VW_SOMA_EMBALAGENS VW
ON TP.EMBALAGEM = VW.EMBALAGEM
WHERE VW.SOMA_PRECO >=80;