INSERT INTO sakila.actor (first_name, last_name)
VALUES('Marcelo', 'Santos');

SELECT * FROM sakila.actor;

-- INSERT SELECT (Inserindo dados de uma outra tabela)
-- É possível inserir dados a partir de outra tabela usando INSERT INTO SELECT :

/* INSERT INTO tabelaA (coluna1, coluna2)
    SELECT tabelaB.coluna1, tabelaB.coluna2
    FROM tabelaB
    WHERE tabelaB.nome_da_coluna <> 'algumValor'
    ORDER BY tabelaB.coluna_de_ordenacao; */
    
INSERT INTO sakila.actor (first_name, last_name)
SELECT first_name, last_name FROM sakila.staff;


INSERT IGNORE INTO pessoas (id, name) VALUES
(4,'Gloria'), -- Sem o IGNORE, essa linha geraria um erro e o INSERT não continuaria.
(5,'Amanda');

-- Pesquisando agora, você verá que a informação duplicada não foi inserida.
-- Porém os dados corretos foram inseridos com sucesso.
SELECT * FROM pessoas;