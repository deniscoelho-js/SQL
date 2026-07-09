-- 
select * from sakila.customer;
select * from sakila.payment;
select * from sakila.address;

-- seleciona algumas colunas da tabela customer
select 
	customer_id,
    first_name,
    last_name
from sakila.customer;

-- faz o join das tabelas customer e payment
select * 
from sakila.customer
join sakila.payment
on customer.customer_id = payment.payment_id;

-- faz o join das tabelas customer e payment com colunas especificas   
select 
	c.customer_id, 
	c.first_name, 
    c.last_name, 
    c.email, 
    p.rental_id, 
    p.amount
from sakila.customer c
join sakila.payment p 
on c.customer_id = p.payment_id;

-- faz o join das tabelas customer, payment e address com colunas especificas   
select 
	c.customer_id,
	c.first_name,
    c.last_name,
    p.rental_id,
    p.amount,
    a.address
from sakila.customer c
join sakila.payment p
	on c.customer_id = p.payment_id
join sakila.address a
	on c.customer_id = a.address_id;
    
    
    
    
    
    