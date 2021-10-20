SELECT * FROM sakila.actor
WHERE first_name IN ('PENELOPE', 'NICK', 'ED', 'JENNIFER');

SELECT * FROM sakila.customer
WHERE customer_id IN (1, 2, 3, 4, 5);

SELECT * FROM sakila.payment
WHERE customer_id IN (269, 239, 126, 399, 142);

SELECT * FROM sakila.address
WHERE district IN ('QLD', 'nagasaki', 'california', 'attika', 'mandalay', 'Nantou', 'texas');