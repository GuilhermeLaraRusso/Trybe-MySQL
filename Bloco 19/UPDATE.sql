/* UPDATE nome_da_tabela
SET propriedade_a_ser_alterada = 'novo valor para coluna'
WHERE alguma_condicao; -- importantíssimo aplicar o WHERE para não alterar a tabela inteira!
*/

SELECT * FROM sakila.staff;

INSERT INTO sakila.staff (first_name, last_name, address_id, email, store_id, active, username)
VALUES('ravein', 'Bezos', '6', 'ravein.bezos@sakilastaff.com', 1, 1, 'Ravein');

-- Uma curiosidade sobre o UPDATE e o DELETE no MySQL Server é que, por padrão, existe uma configuração chamada safe updates mode que só vai te permitir executá-los caso eles incluam quais IDs devem ser modificados. Então, caso você tente fazer a query abaixo, ela não funcionaria por não incluir o ID.

UPDATE sakila.staff
SET first_name = 'Rannveig'
WHERE first_name = 'ravein';

-- Para evitar essa restrição, rode o seguinte comando em uma janela de query dentro do MySQL Workbench sempre que abri-lo para desabilitar essa funcionalidade, antes de executar seus comandos de UPDATE ou DELETE :

SET SQL_SAFE_UPDATES = 0;


-- Alterando mais de uma coluna ao mesmo tempo

UPDATE sakila.staff
SET first_name = 'Rannveig', last_name = 'Jordan', email = 'rannveig.jordan@sakilastaff.com', username = 'Rannveig'
WHERE staff_id = 6;
