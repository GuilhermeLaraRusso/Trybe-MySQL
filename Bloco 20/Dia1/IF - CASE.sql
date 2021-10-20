SELECT * FROM sakila.film;

SELECT title, IF (rental_rate > 10.00, 'CARO', 'BARATO') FROM sakila.film;

SELECT title, rental_rate,
	CASE
		WHEN rental_rate = 10.00 THEN 'BARATO'
        WHEN rental_rate = 15.00 THEN 'MÉDIO'
        WHEN rental_rate = 20.00 THEN 'CARO'
	ELSE rental_rate = 'NÃO CLASSIFICADO'
END AS valor FROM sakila.film;