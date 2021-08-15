-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)

USE shop;

-- 1. Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
-- второму пользователю shop — любые операции в пределах базы данных shop.
DROP USER 'shop_read'@'%';
CREATE USER 'shop_read'@'%' IDENTIFIED WITH sha256_password BY 'shop_read';
GRANT SELECT ON shop.* TO 'shop_read'@'%';

DROP USER 'shop'@'%';
CREATE USER 'shop'@'%' IDENTIFIED WITH sha256_password BY 'shop';
GRANT SELECT ON shop.* TO 'shop'@'%';

SELECT `host`, `user` FROM mysql.`user`;

-- SHOW grants;

-- 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, 
-- содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
-- Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	id serial,
	name varchar(30),
	`password` varchar(50)
);

INSERT INTO accounts VALUES (NULL, 'Vasa', 'pass');

CREATE OR REPLACE VIEW username AS SELECT id, name FROM accounts;

DROP USER 'user_read'@'%';
CREATE USER 'user_read'@'%' IDENTIFIED WITH sha256_password BY 'user_read';
GRANT SELECT ON shop.username TO 'user_read'@'%';