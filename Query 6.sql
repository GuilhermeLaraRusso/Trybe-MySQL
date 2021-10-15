SELECT * FROM sakila.actor;
SELECT DISTINCT last_name FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
SELECT * FROM sakila.actor
ORDER BY last_name ASC, first_name DESC;