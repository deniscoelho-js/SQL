SELECT *
FROM Person.Person;

-- select nome, sobrenome
SELECT FirstName, LastName
FROM Person.Person

-- sobrenomes unicos
SELECT DISTINCT LastName
FROM Person.Person

-- -------------------------

-- produtos diferentes de vazio
SELECT * 
FROM Production.Product
WHERE Color <> 'NULL';

SELECT * 
FROM Production.Product
WHERE ListPrice > 1000 AND ListPrice < 1500 AND Color <> 'Red';

