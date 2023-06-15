-- AND(E) OR (OU)
-- V AND V = VERDADEIRO
-- V AND F = FALSO
-- F OR V = VERDADEIRO 
-- V OR F = VERDADEIRO

-- NOT(V AND V )= FALSO
-- NOT (V AND F) = VERDADEIRO
-- NOT (F OR V) = FALSO 
-- NOT (V OR F) = FALSO

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO_LISTA >= 16;

SELECT * FROM TB_PRODUTOS 
WHERE PRECO_LISTA >= 16 
AND PRECO_LISTA <= 21;

SELECT * FROM TB_PRODUTOS 
WHERE PRECO_LISTA > 16 
AND SABOR = 'Laranja';

SELECT * FROM TB_PRODUTOS 
WHERE NOT (PRECO_LISTA > 16 
AND SABOR = 'Laranja');

SELECT * FROM TB_PRODUTOS 
WHERE PRECO_LISTA > 16 
OR SABOR = 'Laranja';

SELECT * FROM TB_PRODUTOS 
WHERE NOT (PRECO_LISTA > 16 
OR SABOR = 'Laranja');

SELECT * FROM TB_CLIENTES 
WHERE (IDADE > 18 AND SEXO = 'F') 
AND BAIRRO = 'Jardins';

SELECT * FROM TB_CLIENTES 
WHERE (IDADE >= 18 AND SEXO = 'F') 
AND (CIDADE = 'Sao Paulo' OR BAIRRO = 'Barra da Tijuca');

SELECT * FROM TB_CLIENTES 
WHERE (IDADE >= 18 AND SEXO = 'F' 
AND CIDADE = 'Sao Paulo') OR BAIRRO = 'Barra da Tijuca';