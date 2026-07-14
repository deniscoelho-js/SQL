USE w3res_sql_exercices_join;

select * from customer;
select * from salesman;
select * from orders;

-- 1. Sales & City Matching
-- From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

select 
	s.name as sales_name,
    c.cust_name,
    c.city
from customer c
join salesman s on s.salesman_id = c.salesman_id
where c.city = s.city;

-- 2. Orders in Amount Range
-- From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

select 
	o.ord_no,
	o.purch_amt,
    c.cust_name,
    c.city
from orders o
join customer c on c.customer_id = o.customer_id
where purch_amt between 500 and 2000;









