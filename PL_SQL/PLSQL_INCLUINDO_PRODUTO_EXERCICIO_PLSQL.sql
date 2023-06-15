/*Este � o primeiro produto a ser inclu�do na tabela 
PRODUTO_EXERCICIO:
COD: 41232
DESCRICAO: Sabor de Ver�o - Laranja - 1 Litro
CATEGORIA: Sucos de Frutas

Fa�a um programa em PL/SQL que inicialize 3 vari�veis 
que recebam os valores acima e os incluam na tabela 
PRODUTO_EXERCICIO. N�o esque�a de executar o comando.
*/

SELECT * FROM PRODUTO_EXERCICIO;

DECLARE
    PE_COD VARCHAR2(5) := '41232';
    PE_DESCRICAO VARCHAR2(100) := 'Sabor de Ver�o - Laranja - 1 Litro';
    PE_CATEGORIA VARCHAR2(100):= 'Suco de Frutas';
BEGIN
    INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) 
    VALUES (PE_COD, PE_DESCRICAO, PE_CATEGORIA);
    COMMIT;
END;