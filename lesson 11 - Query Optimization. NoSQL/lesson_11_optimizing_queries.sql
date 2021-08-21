-- Практическое задание по теме “Оптимизация запросов”

USE test;

-- 1. Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время и дата создания записи' ,
	table_name varchar(20) COMMENT 'Название таблицы',
	id_stored_string BIGINT UNSIGNED NOT NULL COMMENT 'Идентификатор первичного ключа',
	name_field VARCHAR(255) COMMENT 'Содержимое поля name'
) ENGINE = Archive;

SELECT * FROM logs;

-- создадим нужные триггеры
DROP TRIGGER IF EXISTS log_for_users;
DELIMITER $$
CREATE TRIGGER log_for_users AFTER INSERT ON users
FOR EACH ROW
BEGIN 
   
	INSERT INTO logs 
		(created_at, table_name, id_stored_string, name_field) 
	VALUES 
		(now(), 'users', NEW.id, NEW.name);
	
   	IF NEW.name IS NULL THEN 
   		SIGNAL SQLSTATE '45000' SET message_text = 'name should not be NULL at the same time';
	END IF;
   
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS log_for_catalogs;
DELIMITER $$
CREATE TRIGGER log_for_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN 
   
	INSERT INTO logs 
		(created_at, table_name, id_stored_string, name_field) 
	VALUES 
		(now(), 'catalogs', NEW.id, NEW.name);
	
   	IF NEW.name IS NULL THEN 
   		SIGNAL SQLSTATE '45000' SET message_text = 'name should not be NULL at the same time';
	END IF;
   
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS log_for_products
DELIMITER $$
CREATE TRIGGER log_for_products AFTER INSERT ON products
FOR EACH ROW
BEGIN 
   
	INSERT INTO logs 
		(created_at, table_name, id_stored_string, name_field) 
	VALUES 
		(now(), 'products', NEW.id, NEW.name);
	
   	IF NEW.name IS NULL THEN 
   		SIGNAL SQLSTATE '45000' SET message_text = 'name should not be NULL at the same time';
	END IF;
   
END$$
DELIMITER ;



INSERT INTO users (id, name, birthday_at) VALUES (NULL, 'Вальдемар', STR_TO_DATE('1990-08-01', '%Y-%m-%d'));
INSERT INTO catalogs (id, name) VALUES (NULL, 'Переферия');
INSERT INTO products (id, name, description, price, catalog_id) VALUES (NULL, 'HP laser Jet 1100', 'Древний принтер', '999', 6);


SELECT * FROM users;
SELECT * FROM catalogs;
SELECT * FROM products;

SELECT * FROM logs;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP TABLE IF EXISTS million_rows;
CREATE TABLE million_rows (
	`count` varchar(7) NOT NULL DEFAULT 'error'
);

DROP PROCEDURE IF EXISTS million_dollars;
DELIMITER $$
CREATE PROCEDURE million_dollars(number_of_iterations INT)
BEGIN
    SET @x = 1;
    REPEAT 
        INSERT INTO million_rows (`count`) VALUES (@x);
        SET @x = @x + 1; 
    UNTIL @x > number_of_iterations END REPEAT;
END$$
DELIMITER ;

-- выполняется долго
CALL million_dollars(100);

EXPLAIN SELECT `count` FROM million_rows;
