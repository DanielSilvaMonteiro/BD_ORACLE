SELECT V.MATRICULA AS MATRICULA_VENDEDOR,
       V.FERIAS AS FERIAS_VENDEDORES
FROM
        VENDEDORES V
WHERE EXISTS(
        SELECT 1 FROM TABELA_DE_VENDEDORES_FONTE TVF
        WHERE V.MATRICULA = SUBSTR(TVF.MATRICULA, 3,3)
        );
        
-- UPDATE COM EXISTS
UPDATE VENDEDORES V SET V.FERIAS =
(
    SELECT TVF.DE_FERIAS FROM TABELA_DE_VENDEDORES_FONTE TVF
    WHERE V.MARICULA = SUBSTR(TVF.MATRICULA, 3,3))
WHERE EXISTS(
        SELECT 1 FROM TABELA_DE_VENDEDORES_FONTE TVF
        WHERE V.MATRICULA = SUBSTR(TVF.MATRICULA, 3,3)
);

--CONSULTA COM INNER JOIN
SELECT V.MATRICULA AS MATRICULA_VENDEDOR,
       TVF.MATRICULA AS MATRICULA_FONTE,
       V.FERIAS AS FERIAS_VENDEDORES,
       TVF.DE_FERIAS AS FERIAS_FONTE
FROM
        VENDEDORES V
INNER JOIN 
        TABELA_DE_VENDEDORES_FONTE TVF
ON V.MATRICULA = SUBSTR(TVF.MATRICULA, 3,3);

--ATUALIZANDO A TABELA FONTE
UPDATE TABELA_DE_VENDEDORES_FONTE SET DE_FERIAS = 0 WHERE MATRICULA IN ('00236','00237');

--SINCRONIZANDO A TABELA VENDEDORES A PARTIR DA TABELA FONTE
UPDATE VENDEDORES V SET V.FERIAS =
(
    SELECT TVF.DE_FERIAS FROM TABELA_DE_VENDEDORES_FONTE TVF
    WHERE V.MATRICULA = SUBSTR(TVF.MATRICULA, 3,3))
WHERE EXISTS(
        SELECT 1 FROM TABELA_DE_VENDEDORES_FONTE TVF
        WHERE V.MATRICULA = SUBSTR(TVF.MATRICULA, 3,3)
);

-----tentativa de verificacao de codigo, semelhante ao exists
select tvf.matricula,  
       tvf.de_ferias as ferias_fonte, 
       v.ferias as ferias_vendedores 
from vendedores v
    inner join tabela_de_vendedores_fonte tvf 
    on v.matricula = substr(tvf.matricula, 3,3)
where tvf.de_ferias <> v.ferias ;
