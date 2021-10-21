-- UNION ALL Mantém dados duplicados
SELECT first_name, last_name FROM sakila.actor
UNION ALL
SELECT first_name, last_name FROM sakila.customer;


-- UNION Remove dados duplicados
SELECT first_name, last_name FROM sakila.actor
UNION
SELECT first_name, last_name FROM sakila.customer;

-- inserindo colunas que existe apenas em uma das tabelas
SELECT first_name, last_name, '-' AS 'customer_id' FROM sakila.actor
UNION ALL
SELECT first_name, last_name, customer_id FROM sakila.customer;


-- inserindo colunas que existe apenas em uma das tabelas, ordenando e paginando
(SELECT first_name, last_name, '-' AS 'customer_id' FROM sakila.actor LIMIT 20)
UNION ALL
(SELECT first_name, last_name, customer_id FROM sakila.customer LIMIT 20)
ORDER BY first_name
LIMIT 10
OFFSET 10;