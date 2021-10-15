SELECT * FROM sakila.film;
SELECT title, release_year, length, rating, replacement_cost FROM sakila.film
ORDER BY length DESC, replacement_cost ASC LIMIT 20;