-- EXISTS = Retorna os dados da Tabela A onde existe um relacionamento com os dados da Tabela B

SELECT * FROM hotel.Customers;
SELECT * FROM hotel.Reservations;

SELECT * FROM hotel.Customers AS c
WHERE EXISTS (
	SELECT * FROM hotel.Reservations
    WHERE c.CustomerID = hotel.Reservations.CustomerId
);

SELECT * FROM hotel.Customers AS c
WHERE NOT EXISTS (
	SELECT * FROM hotel.Reservations
    WHERE c.CustomerID = hotel.Reservations.CustomerId
);


SELECT * FROM praticando.manufacturers;
SELECT * FROM praticando.products;

SELECT `Name` FROM praticando.manufacturers AS m
WHERE NOT EXISTS (
	SELECT * FROM praticando.products
	WHERE Manufacturer = m.Code
);