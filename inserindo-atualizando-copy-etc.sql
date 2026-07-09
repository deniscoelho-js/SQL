select * from sakila.language;

-- inserindo dados em apenas 1 tabela
insert into sakila.language
values (default, 'Portuguese', '2023-08-02 05:02:19');

-- procurando se o pais existe para nao colocar dados duplicados
select * from sakila.country;

-- procura diretamente pelo nome do país
select country, country_id 
from sakila.country
where country = 'Brazil';

-- procurando usando o comando like
select country, country_id 
from sakila.country
where country
like 'Br%';

-- inserindo dados em apenas 1 tabela
insert into sakila.country
values (default, 'Brazil2', '2023-08-02 05:02:19');

-- inserindo dados em multiplas tabelas por causa das foreign keys 
select * from sakila.city where country_id = 15; -- lista todas as cidades com id 15 que é o br

insert into sakila.city		-- aqui insere Fortaleza no Brazil2 por causa desse last_insert
values(default, 'Fortaleza', last_insert_id(), '2023-08-02 05:02:19');

insert into sakila.city 
values(default, 'Fortaleza', 15, '2023-08-02 05:02:19');

select * from sakila.city
where city
like 'For%';

