select * from sakila.payment;

-- atualiza uma coluna
update sakila.payment
	set amount = 3.00
where payment_id = 2;

-- atualiza duas colunas
update sakila.payment
	set amount = 9.00, payment_date = '2005-05-28 22:00:00'
where payment_id = 4;