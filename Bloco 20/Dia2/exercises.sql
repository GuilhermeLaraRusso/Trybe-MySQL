SELECT * FROM Pixar.BoxOffice;
SELECT * FROM Pixar.Movies;
SELECT * FROM Pixar.Theater;


-- Exercício 1: Utilizando o INNER JOIN , encontre as vendas nacionais ( domestic_sales ) e internacionais ( international_sales ) de cada filme.
SELECT 
    m.id, m.title, b.domestic_sales, b.international_sales
FROM
    Pixar.Movies AS m
        INNER JOIN
    Pixar.BoxOffice AS b ON m.id = b.movie_id;

-- Exercício 2: Utilizando o INNER JOIN , faça uma busca que retorne o número de vendas para cada filme que possui um número maior de vendas internacionais ( international_sales ) do que vendas nacionais ( domestic_sales ).
SELECT 
    m.id, m.title, b.domestic_sales, b.international_sales
FROM
    Pixar.Movies AS m
        INNER JOIN
    Pixar.BoxOffice AS b ON m.id = b.movie_id
    WHERE b.international_sales > b.domestic_sales;

-- Exercício 3: Utilizando o INNER JOIN , faça uma busca que retorne os filmes e sua avaliação ( rating ) em ordem decrescente.
SELECT 
    m.id, m.title, b.rating
FROM
    Pixar.Movies AS m
        INNER JOIN
    Pixar.BoxOffice AS b ON m.id = b.movie_id
ORDER BY b.rating DESC;

-- Exercício 4: Utilizando o LEFT JOIN , faça uma busca que retorne todos os dados dos cinemas, mesmo os que não possuem filmes em cartaz e, adicionalmente, os dados dos filmes que estão em cartaz nestes cinemas. Retorne os nomes dos cinemas em ordem alfabética.
SELECT 
    t.id, t.name, t.location, m.title
FROM
    Pixar.Theater AS t
        LEFT JOIN
    Pixar.Movies AS m ON m.theater_id = t.id
ORDER BY name;

-- Exercício 5: Utilizando o RIGHT JOIN , faça uma busca que retorne todos os dados dos filmes, mesmo os que não estão em cartaz e, adicionalmente, os dados dos cinemas que possuem estes filmes em cartaz. Retorne os nomes dos cinemas em ordem alfabética.
SELECT 
    t.id, t.name, t.location, m.title
FROM
    Pixar.Theater AS t
        RIGHT JOIN
    Pixar.Movies AS m ON m.theater_id = t.id
ORDER BY name;

-- Exercício 6: Faça duas buscas, uma utilizando SUBQUERY e outra utilizando INNER JOIN , que retornem os títulos dos filmes que possuem avaliação maior que 7.5.
SELECT 
    m.id, m.title, b.rating
FROM
    Pixar.Movies AS m
        INNER JOIN
    Pixar.BoxOffice AS b ON m.id = b.movie_id
    WHERE rating > 7.5;
    
SELECT 
    id, title
FROM
    Pixar.Movies
WHERE
    id IN (SELECT 
            movie_id
        FROM
            Pixar.BoxOffice
        WHERE
            rating > 7.5);

-- Exercício 7: Faça duas buscas, uma utilizando SUBQUERY e outra utilizando INNER JOIN , que retornem as avaliações dos filmes lançados depois de 2009.


-- Exercício 8: Utilizando o EXISTS , selecione o nome e localização dos cinemas que possuem filmes em cartaz.


-- Exercício 9: Utilizando o EXISTS , selecione o nome e localização dos cinemas que não possuem filmes em cartaz.

