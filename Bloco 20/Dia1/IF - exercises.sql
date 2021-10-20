-- Usando o IF na tabela sakila.film , exiba o id do filme , o título e uma coluna extra chamada 'conheço o filme?' 
-- , em que deve-se avaliar se o nome do filme é ' ACE GOLDFINGER '. Caso seja, exiba "Já assisti a esse filme".
-- Caso contrário, exiba "Não conheço o filme". Não esqueça de usar um alias para renomear a coluna da condicional.

SELECT * FROM sakila.film;

SELECT film_id, title, 
	IF (title = 'ACE GOLDFINGER', 'Já assisti a esse filme', 'Não conheço o filme') 
    AS 'chonheço o filme?' 
FROM sakila.film;