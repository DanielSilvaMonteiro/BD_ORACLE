INSERT INTO TB_CLIENTES
(CPF_CLIENTE, NOME_CLIENTE, ENDERECO_CLIENTE, ENDERECO2_CLIENTE,
BAIRRO_CLIENTE, ESTADO_CLIENTE, CEP_CLIENTE, DATA_NASC_CLIENTE,
IDADE_CLIENTE, SEXO_CLIENTE, LIMITE_CREDITO, VOLUME_COMPRA_CLIENTE,
PRIMEIRA_COMPRA_CLIENTE,CIDADE_CLIENTE)
VALUES
('00333434577', 'Jo�o da Silva', 'Rua Projetada numero 10', NULL,
'BARRA DA TIJUCA', 'RJ', '22222222', '12/10/1965', 56, 'M', 100000,
2000, 0, 'RIO DE JANEIRO');


SELECT * FROM TB_CLIENTES;