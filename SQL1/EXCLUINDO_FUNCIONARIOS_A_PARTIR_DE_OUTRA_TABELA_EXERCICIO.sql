CREATE TABLE TAB_RH_DEMITIDOS (COD_FUNCIONARIO VARCHAR(5));

INSERT INTO TAB_RH_DEMITIDOS VALUES ('F0001');
INSERT INTO TAB_RH_DEMITIDOS VALUES ('F0005');
INSERT INTO TAB_RH_DEMITIDOS VALUES ('F0012');
INSERT INTO TAB_RH_DEMITIDOS VALUES ('F0022');
INSERT INTO TAB_RH_DEMITIDOS VALUES ('F0033');

--VERIFICA��O DAS TABELAS INDIVIDUALMENTE
SELECT * FROM TAB_RH_DEMITIDOS;
SELECT * FROM TAB_FUNCIONARIO;
SELECT * FROM TAB_DEPENDENTE;


--VERIFICACAO DO SELECT COM INNER JOIN
SELECT F.COD_FUNCIONARIO AS "COD_FUNC", 
       RH.COD_FUNCIONARIO AS "FUNC_RH"
FROM TAB_FUNCIONARIO F
    INNER JOIN TAB_RH_DEMITIDOS RH    ON F.COD_FUNCIONARIO = RH.COD_FUNCIONARIO;

    
SELECT D.COD_FUNCIONARIO AS "FUNC_DEP", 
       RH.COD_FUNCIONARIO AS "FUNC_RH"
FROM TAB_DEPENDENTE D
    INNER JOIN TAB_RH_DEMITIDOS RH    ON D.COD_FUNCIONARIO = RH.COD_FUNCIONARIO;



--ADICIONANDO O DELETE
DELETE FROM TAB_DEPENDENTE D
WHERE D.COD_FUNCIONARIO IN(
SELECT D.COD_FUNCIONARIO AS "FUNC_DEP"
FROM TAB_DEPENDENTE D
    INNER JOIN TAB_RH_DEMITIDOS RH    ON D.COD_FUNCIONARIO = RH.COD_FUNCIONARIO
);

DELETE FROM TAB_FUNCIONARIO F
WHERE F.COD_FUNCIONARIO IN (
    SELECT F.COD_FUNCIONARIO AS "COD_FUNC"
FROM TAB_FUNCIONARIO F
    INNER JOIN TAB_RH_DEMITIDOS RH    ON F.COD_FUNCIONARIO = RH.COD_FUNCIONARIO
);

