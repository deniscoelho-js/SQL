use vendas;
select * from venda;
select * from empregado;

-- 1 Liste o maior salário, o menor salário e o salário médio de cada Departamento
select 
	d.nome as departamento,
    max(e.salario) as maior_salario,
    min(e.salario) as menor_salario,
    avg(e.salario) as media_salario
from empregado e
join departamento d on e.Departamento_Codigo = d.Codigo
group by d.Nome;

-- 2 Liste o número da NF, Nome do cliente e itens comprados com o valor de cada Item

select 
	v.Numero as NF, 
    c.Primeiro_Nome as nome_cliente,
    p.Nome as nome_produto,
    i.Preco_Unidade as valor_item
from venda v
join cliente c on c.CPF = v.Cliente_CPF
join item i on i.Venda_Numero = v.Numero
join produto p on p.Codigo = i.Produto_Codigo
order by NF asc;

-- 3 Liste o numero da NF, data, nome do cliente, nome do vendedor e valor total da NF
select 
	v.Numero as NF,
    v.Data as data_compra,
    c.Primeiro_Nome as nome_cliente,
    e.Primeiro_Nome as nome_empregado,
    sum(i.Preco_Unidade * i.Quantidade) as valor_total_NF
from venda v
join cliente c on c.CPF = v.Cliente_CPF
join empregado e on e.Matricula = v.Empregado_Matricula
join item i on i.Venda_Numero = v.Numero
GROUP BY v.Numero;

-- 4 Liste o nome do cliente e valor total comprado por cada cliente
select 
	c.Primeiro_Nome as nome_cliente,
	sum(i.Preco_Unidade * i.Quantidade) as valor_total_comprado_cliente
from cliente c
join venda v on v.Cliente_CPF = c.CPF
join item i on i.Venda_Numero = v.Numero
group by c.Primeiro_Nome
order by valor_total_comprado_cliente asc;

-- 5 Liste o nome do Produto e valor vendido de cada produto
select
	p.Nome as nome_produto,
    sum(i.Preco_Unidade * i.Quantidade) as valor_vendido_produto
from produto p
join item i on i.Produto_Codigo = p.Codigo
GROUP BY p.Nome;

-- 6 Liste o nome do vendedor e valor total vendido por cada vendedor
select
	e.Primeiro_Nome as nome_vendedor,
    sum(i.Preco_Unidade * i.Quantidade) as valor_total_vendido_vendedor
from empregado e
join venda v on v.Empregado_Matricula = e.Matricula
join item i on i.Venda_Numero = v.Numero
group by e.Matricula;

-- 7 Liste a categoria do produto, preço médio e valor total vendido por categoria
select
	p.Categoria,
    avg(i.Preco_Unidade * i.Quantidade) as preco_medio_categoria,
    sum(i.Preco_Unidade * i.Quantidade) as valor_total_vendido_categoria
from produto p
join item i on i.Produto_Codigo = p.Codigo
join venda v on v.Numero = i.Venda_Numero
group by p.Categoria;

-- 8 Liste o valor médio das NF

select 
	avg(valor_total) as valor_medio_NF
from(
	select
		v.Numero,
        sum(i.Preco_Unidade * i.Quantidade) as valor_total
	from venda v
    join item i on i.Venda_Numero = v.Numero
    group by v.Numero
    )
as sub;

-- 9 Crie uma visão que facilite listar o valor total da NF utilizando o número da NF ou cliente ou o vendedor

CREATE VIEW vw_ValorTotalNF AS
SELECT 
    v.Numero AS NumeroNF,
    c.Primeiro_Nome AS Cliente,
    e.Primeiro_Nome AS Vendedor,
    SUM(i.Preco_Unidade * i.Quantidade) AS ValorTotal
FROM venda v
JOIN cliente c ON v.Cliente_CPF = c.CPF
JOIN empregado e ON v.Empregado_Matricula = e.Matricula
JOIN item i ON v.Numero = i.Venda_Numero
GROUP BY v.Numero, c.Primeiro_Nome, e.Primeiro_Nome;

-- 10 Liste o nome do vendedor e a quantidade de vendas realizadas.
select e.Primeiro_Nome as nome_empregado,
	count(v.Numero) as quantidade_vendas
from venda v
join empregado e on e.Matricula = v.Empregado_Matricula
group by e.Primeiro_Nome;
    



























