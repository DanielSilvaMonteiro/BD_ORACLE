ALTER TABLE "TABELA_DE_VENDAS"
RENAME TO NOTAS;

ALTER TABLE TAB_DEPARTAMENTO
RENAME COLUMN "CIDADE_DEPARTAMENTO" TO CIDADE;

ALTER TABLE TAB_PROJETO
RENAME COLUMN "ORCAMENTO_PROJETO" TO ORCAMENTO;

ALTER TABLE TAB_PROJETO
RENAME COLUMN "DATA_INICIO_PROJETO" TO DATA_INICIO;

ALTER TABLE TAB_DEPENDENTE
RENAME COLUMN "TIPO_DEPENDENCIA" TO TIPO;

ALTER TABLE TAB_DEPENDENTE
RENAME COLUMN "IDADE_DEPENDENTE" TO IDADE;