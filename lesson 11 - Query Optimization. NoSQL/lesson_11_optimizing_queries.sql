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

DROP PROCEDURE IF EXISTS a_hundred;
DELIMITER $$
CREATE PROCEDURE a_hundred(number_of_iterations INT)
BEGIN
    SET @x = 1;
    REPEAT 
        INSERT INTO million_rows (`count`) VALUES 
       		(@x), (@x+1), (@x+2), (@x+3), (@x+4), (@x+5), (@x+6), (@x+7), (@x+8), (@x+9),
       		(@x+10), (@x+11), (@x+12), (@x+13), (@x+14), (@x+15), (@x+16), (@x+17), (@x+18), (@x+19),
       		(@x+20), (@x+21), (@x+22), (@x+23), (@x+24), (@x+25), (@x+26), (@x+27), (@x+28), (@x+29),
       		(@x+30), (@x+31), (@x+32), (@x+33), (@x+34), (@x+35), (@x+36), (@x+37), (@x+38), (@x+39),
       		(@x+40), (@x+41), (@x+42), (@x+43), (@x+44), (@x+45), (@x+46), (@x+47), (@x+48), (@x+49),
       		(@x+50), (@x+51), (@x+52), (@x+53), (@x+54), (@x+55), (@x+56), (@x+57), (@x+58), (@x+59),
       		(@x+60), (@x+61), (@x+62), (@x+63), (@x+64), (@x+65), (@x+66), (@x+67), (@x+68), (@x+69),
       		(@x+70), (@x+71), (@x+72), (@x+73), (@x+74), (@x+75), (@x+76), (@x+77), (@x+78), (@x+79),
       		(@x+80), (@x+81), (@x+82), (@x+83), (@x+84), (@x+85), (@x+86), (@x+87), (@x+88), (@x+89),
       		(@x+90), (@x+91), (@x+92), (@x+93), (@x+94), (@x+95), (@x+96), (@x+97), (@x+98), (@x+99);
        SET @x = @x + 1; 
    UNTIL @x > number_of_iterations END REPEAT;
END$$
DELIMITER ;

-- выполняется долго
CALL a_hundred(10000);

SELECT `count` FROM million_rows;
