select * from sakila.payment;

select 
	customer_id,
    amount,
    amount - (amount * 0.20) as discount
from sakila.payment
order by customer_id;
-- where customer_id = 1

-- select table payment order by date
select * from sakila.payment
order by payment_date;

-- select table payment and between specific date
select * from sakila.payment  
where payment_date between '2005-05-24' 
and '2005-05-30'
order by payment_date;

-- select table by where and like commands
select * from sakila.payment
where payment_date
like '2005-05-24%';

-- select table payment by specific date
select * from sakila.payment  where payment_date = '2005-05-25 11:30:37';

-- select table payment and between specific date
select * from sakila.payment  
where payment_date between '2005-05-24 22:53:30' 
and '2005-05-25 00:00:40';

-- select table payment and between specific date and specific staff_id
select * from sakila.payment  
where payment_date between '2005-05-24 22:53:30' 
and '2005-05-25 00:00:40'
and staff_id = 1;

