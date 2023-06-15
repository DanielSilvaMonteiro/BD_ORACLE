/*
O imposto est� diretamente associado � 
categoria do produto, usando a seguinte tabela:

Sucos = 10%
�guas = 20%
Mate = 15%
Fa�a uma fun��o, chamada RETORNA_IMPOSTO que, dado o 
ID do produto, temos o retorno do imposto.

Dica: Lembre-se que, baseado no ID, buscamos a categoria 
e depois com a categoria, obtemos o imposto. J� temos, 
inclusive, uma fun��o que, dado o ID, temos a categoria. 
Ela foi criada em atividades anteriores. Use-a dentro desta 
nova fun��o.
*/

SELECT * FROM PRODUTO_EXERCICIO;

CREATE OR REPLACE FUNCTION RETORNA_IMPOSTO
    (
    P_COD IN PRODUTO_EXERCICIO.COD%TYPE
    )
RETURN 
   PRODUTO_EXERCICIO.CATEGORIA%TYPE
IS
    V_IMPOSTO FLOAT;
    V_CATEGORIA VARCHAR2(100);
BEGIN
    SELECT CATEGORIA INTO V_CATEGORIA FROM PRODUTO_EXERCICIO 
    WHERE COD = P_COD;
    
    IF V_CATEGORIA = 'Sucos de Frutas' THEN
        V_IMPOSTO := 10;
    ELSIF V_CATEGORIA = '�guas' THEN
        V_IMPOSTO := 20;
    ELSIF V_CATEGORIA = 'Mate' THEN
        V_IMPOSTO := 15;
    ELSE 
        V_IMPOSTO := 'N�O ENCONTRADO';
    END IF;
    RETURN V_IMPOSTO;
END;

--VERIFICAR CODIGOS_ PRODUTO-----------
SELECT * FROM PRODUTO_EXERCICIO;

-----EXECUTAR FUNCAO----33854----67120-------41232-----------
VARIABLE G_IMPOSTO VARCHAR2(100);
EXECUTE :G_IMPOSTO := RETORNA_IMPOSTO('41232');
PRINT G_IMPOSTO;
