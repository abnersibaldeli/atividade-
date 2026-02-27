# 1)Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida,
# selecione a vendedora com o nome de ‘Cláudia Morais’, cujo bairro é ‘Jardins’. Ela está de férias?
select nome, de_ferias, bairro from tabela_de_vendedores where nome = 'Claúdia Morais' and bairro = 'Jardins';
 #ela está de férias pois correspondeu a verdadeiro verdadeiro
 
# 2)A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.
select percentual_comissao, nome, de_ferias from tabela_de_vendedores where PERCENTUAL_COMISSAO >0.10 and DE_FERIAS =1;


# 3)Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015.
# Por que o CPF desta tabela não é uma chave primária (PK)?
select matricula, data_venda from notas_fiscais where matricula = 00237 or data_venda = '2015-01-12';
 #Por que o nosso CPF sempre se repete pois é único, já o numero da nota não, ele pode mudar

# 4)Na tabela dos itens das notas fiscais, selecione o código do produto e a quantidade vendida dos 
# itens que possuam quantidade de venda igual ou maior do que 99. Qual ou quais itens representam o maior valor de venda?
select codigo_do_produto, numero, quantidade, preco from itens_notas_fiscais where quantidade >= 99 and preco > 44;
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = 1022450;

# 5)Quem é o cliente que comprou 84 produtos com o número de código igual a 1101035, 
# cujo número da nota fiscal foi 102? Quem foi o vendedor ou vendedora responsável e qual o nome do produto e seu sabor?
# Gere o Diagrama de Entidade - Relacionamento para melhor compreensão.
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = 1101035;
select * from tabela_de_clientes where CPF = 850268733;
select * from tabela_de_vendedores where MATRICULA = 00236;
select * from itens_notas_fiscais where numero = 102 and quantidade = 84;
select * from notas_fiscais where numero = 102;


