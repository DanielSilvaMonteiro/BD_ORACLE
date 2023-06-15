select * from tabela_de_clientes;

-- idade diferente de 18 ( nao é igual 18)
select * from tabela_de_clientes where not(idade = 18);

-- idade maior que 18 e cidade = rio
select * from tabela_de_clientes where idade > 18 and cidade = 'Rio de Janeiro';

-- idade menor / igual 18 (idade nao é maior que 18)
select * from tabela_de_clientes where not(idade > 18 );

-- cidade diferent do rio (cidade nao é igual rio)
select * from tabela_de_clientes where not(cidade = 'Rio de Janeiro');

-- idade menor que 18 ou cidade diferente do rio
select * from tabela_de_clientes where not(idade > 18 and cidade = 'Rio de Janeiro');

-- idade menor = 22 e cidade diferente de rio de janeiro
select * from tabela_de_clientes where not(idade > 22 or cidade = 'Rio de Janeiro');
select * from tabela_de_clientes where not(idade > 18 or cidade = 'Pantanal');
