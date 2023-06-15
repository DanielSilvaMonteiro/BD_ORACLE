SELECT SYSDATE FROM DUAL;

-- TO_CHAR PODE DETERMINAR A VISUALIZACAO DO CONTEUD DA DATA
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH:MI:SS') FROM DUAL;

SELECT NOME, DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES;

--DAY MOSTRA O DIA POR ESCRITO
SELECT NOME, TO_CHAR(DATA_DE_NASCIMENTO, 'DD/MM/YYYY, DAY') 
FROM TABELA_DE_CLIENTES;

SELECT SYSDATE + 127 FROM DUAL;

SELECT NOME, IDADE, TO_CHAR(DATA_DE_NASCIMENTO, 'DD/MM/YYYY, DAY') 
FROM TABELA_DE_CLIENTES;

-- MOSTRA OS DIAS DE VIDA DO CLIENTE
SELECT NOME, IDADE, SYSDATE - DATA_DE_NASCIMENTO 
FROM TABELA_DE_CLIENTES;

--SABER QUANTOS ANOS TEM
SELECT NOME, IDADE, (SYSDATE - DATA_DE_NASCIMENTO)/365 
FROM TABELA_DE_CLIENTES;

SELECT NOME, IDADE, MONTHS_BETWEEN(SYSDATE, DATA_DE_NASCIMENTO)/12 
FROM TABELA_DE_CLIENTES;

--CONTA MESES A PARTIR DA DATA ADICIONADA NESTE CASO SYSDATE DATA ATUAL
SELECT ADD_MONTHS(SYSDATE,10) FROM DUAL;

--VERIFICA A PROXIMA SEXTA
SELECT SYSDATE, NEXT_DAY(SYSDATE,'SEXTA') FROM DUAL;

--MOSTRA O ULTIMO DIA DO MES
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;

--PEGA O PRIMEIRO DIA DO ANO
SELECT SYSDATE, TRUNC(SYSDATE, 'YEAR') FROM DUAL;

-- PEGA O PRIMEIRO DIA DO MES
SELECT SYSDATE, TRUNC(SYSDATE, 'MONTH') FROM DUAL;

--ARREDONDA A DATA PASSOU DA METADE PEGA O PRIMEIRO DO PROXIMO ANO
SELECT SYSDATE, ROUND(SYSDATE, 'YEAR') FROM DUAL;