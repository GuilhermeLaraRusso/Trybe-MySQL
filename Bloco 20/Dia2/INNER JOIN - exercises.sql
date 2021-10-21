-- Monte uma query que exiba o id do ator , nome do ator e id do filme em que ele já atuou usando as tabelas actor e film_actor .
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film_actor;

SELECT a.actor_id, a.first_name, a.last_name, f.film_id
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS f
ON a.actor_id = f.actor_id;

-- Use o JOIN para exibir o nome , sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address .
SELECT * FROM sakila.staff;
SELECT * FROM sakila.address;

SELECT s.first_name, s.last_name, s.address_id, a.address
FROM sakila.staff AS s
JOIN sakila.address AS a
ON s.address_id = a.address_id;

-- Exiba o id do cliente , nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o endereço onde o cliente mora.
-- Essas informações podem ser encontradas nas tabelas customer e address .
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    a.address_id,
    a.address
FROM
    sakila.customer AS c
        INNER JOIN
    sakila.address AS a ON c.address_id = a.address_id
ORDER BY first_name DESC
LIMIT 100;

-- Exiba o nome , email , id do endereço , endereço e distrito dos clientes que moram no distrito da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas tabelas address e customer .
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;

SELECT c.first_name, c.email, c.address_id, a.address, a.district
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
WHERE district = 'California'
AND first_name LIKE '%rene%';

-- Exiba o nome e a quantidade de endereços dos clientes cadastrados. Ordene seus resultados por nomes de forma decrescente. Exiba somente os clientes ativos. As informações podem ser encontradas na tabela address e customer .
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;


-- Monte uma query que exiba o nome , sobrenome e a média de valor ( amount ) paga aos funcionários no ano de 2006. Use as tabelas payment e staff . 
-- Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.
SELECT * FROM sakila.payment;
SELECT * FROM sakila.staff;

SELECT 
    s.first_name,
    s.last_name,
    AVG(p.amount) AS 'Média de pagamento'
FROM
    sakila.staff AS s
        INNER JOIN
    sakila.payment AS p ON s.staff_id = p.staff_id
WHERE
    YEAR(p.payment_date) = 2006
GROUP BY s.first_name , s.last_name;



-- Monte uma query que exiba o id do ator , nome , id do filme e título do filme , usando as tabelas actor , film_actor e film . Dica: você precisará fazer mais de um JOIN na mesma query .
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film;

SELECT 
    ac.actor_id, ac.first_name, fa.film_id, fi.title
FROM
    sakila.actor AS ac
        INNER JOIN
    sakila.film_actor AS fa ON ac.actor_id = fa.actor_id
        INNER JOIN
    sakila.film AS fi ON fi.film_id = fa.film_id;