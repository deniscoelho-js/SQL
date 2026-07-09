select count(*), ci.cidade from vendedores v
join concessionarias c on c.id_concessionarias = c.id_concessionarias
join cidades ci on ci.id_cidades = c.id_cidades
group by ci.cidade
order by 1 desc;
-- ---------------------
select * from vendedores;
select * from concessionarias;
--
-- 01 
select * from veiculos
where tipo ILIKE '%SUV Compacta%'
and valor < 300000
-- 02
select * from clientes
select * from concessionarias

select 
	cl.cliente, 
	co.concessionaria
from clientes cl
join concessionarias co
	on cl.id_concessionarias = co.id_concessionarias
-- ----------------------------------------
03 
select * from concessionarias
select * from vendedores

select 
	c.concessionaria,
	count(v.id_vendedores) as total_vendedores
from concessionarias c
join vendedores v
	on c.id_concessionarias = v.id_concessionarias
group by c.concessionaria
order by total_vendedores desc
-- ----------------------------------------
04
select 
	tipo, max(valor) as valor_maximo
from veiculos
group by tipo
-- ----------------------------------------
05
select * from clientes
select * from veiculos
select * from vendas

select 
	c.cliente,
	vcl.nome as veiculo,
	vd.valor_pago
from vendas vd
join clientes c
	on vd.id_clientes = c.id_clientes
join veiculos vcl
	on vd.id_veiculos = vcl.id_veiculos
order by vd.valor_pago desc
-- ----------------------------------------
06
select * from concessionarias
select * from vendas

select 
	c.concessionaria,
	count(vd.id_vendas) as total_vendas
from concessionarias c
join vendas vd
	on c.id_concessionarias = vd.id_concessionarias
group by c.concessionaria
having count(vd.id_vendas) > 5
order by total_vendas desc
-- ----------------------------------------
07
select * from veiculos

select
	nome,
	valor
from veiculos
order by valor desc
limit 3
-- ----------------------------------------
09
select * from cidades
select * from concessionarias

select ci.cidade, co.concessionaria
from cidades ci
left join concessionarias co
on ci.id_cidades = co.id_cidades
order by ci.cidade

-- ----------------------------------------


