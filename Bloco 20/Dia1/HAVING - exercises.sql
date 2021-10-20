-- Usando a query a seguir, exiba apenas as durações médias que estão entre 115.0 a 121.50. Além disso, dê um alias (apelido) à coluna gerada por AVG(length) , de forma que deixe a query mais legível. Finalize ordenando os resultados de forma decrescente.
 SELECT * FROM sakila.film;
 SELECT rating, AVG(length) AS duracao_media
 FROM sakila.film
 GROUP BY rating
 HAVING duracao_media BETWEEN 115.0 AND 121.50;

-- Usando a query a seguir, exiba apenas os valores de custo de substituição que estão acima de $3950.50. Dê um alias que faça sentido para SUM(replacement_cost) , de forma que deixe a query mais legível. Finalize ordenando os resultados de forma crescente.
SELECT rating, SUM(replacement_cost) AS custo_de_substituicao
FROM sakila.film
GROUP by rating
HAVING custo_de_substituicao > 3950.50
ORDER BY custo_de_substituicao;