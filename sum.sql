Select 
	customer_id,
	sum(amount) as total
From sakila.pahyment
Group by customer_id
