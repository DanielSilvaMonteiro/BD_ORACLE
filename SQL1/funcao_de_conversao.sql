-- EXTRACT PARA EXTRAIR PARTE DE UMA DATA
SELECT EXTRACT(MONTH FROM TO_DATE ('12/11/2019', 'DD/MM/YYYY')) AS "MES" FROM DUAL;

SELECT EXTRACT(MONTH FROM TO_DATE ('12/11/2019', 'MM/DD/YYYY')) AS "MES" FROM DUAL;

--TO_NUMBER CONVERTE STRING PARA NUMERO
SELECT TO_NUMBER('10')+10 FROM DUAL

--VISUALIZACAO DE FORMATO 4 NUMEROS INTEIROS
SELECT TO_CHAR(1234.123, '9999') FROM DUAL;

SELECT TO_CHAR(1234.123, '9999,999'), TO_CHAR(1234.123, '9999.999') FROM DUAL;

--VERIFICA SE � NULO E TRAS 0
SELECT NVL(10,0), NVL(NULL,0) FROM DUAL;

SELECT
NVL(TV.NOME,'N�O ENCONTRADO') AS NOME_VENDEDOR,
NVL(TV.BAIRRO,'N�O ENCONTRADO') AS NOME_BAIRRO_VENDEDOR,
NVL(TC.NOME,'N�O ENCONTRADO') AS NOME_CLIENTE,
NVL(TV.BAIRRO,'N�O ENCONTRADO') AS NOME_BAIRRO_CLIENTE
FROM
TABELA_DE_VENDEDORES TV
FULL JOIN
TABELA_DE_CLIENTES TC
ON TV.BAIRRO = TC.BAIRRO;
