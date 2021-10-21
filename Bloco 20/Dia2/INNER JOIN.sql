SELECT * FROM sakila.city;

-- MODELO
SELECT t1.coluna, t2.coluna
FROM tabela1 AS t1
INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;


SELECT city.city, city.country_id, country.country
FROM sakila.city AS city
INNER JOIN sakila.country AS country
ON city.country_id = country.country_id;


SELECT a.first_name, a.actor_id, f.actor_id
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS f
ON a.actor_id = f.actor_id;

-- OBS.: A palavra-chave AS pode ser omitida. Nesse caso, o alias é passado diretamente, após o nome da tabela:
SELECT a.first_name, a.actor_id, f.actor_id
FROM sakila.actor a
INNER JOIN sakila.film_actor f
ON a.actor_id = f.actor_id;