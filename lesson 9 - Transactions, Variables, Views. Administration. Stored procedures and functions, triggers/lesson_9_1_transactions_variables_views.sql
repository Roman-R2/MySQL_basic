-- Практическое задание по теме “Транзакции, переменные, представления”



-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;

INSERT INTO sample.users
    SELECT * FROM shop.users 
WHERE shop.users.id = 1;

COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW name_cat (name_products, name_catalogs)
AS SELECT p.name, c.name FROM products p
	JOIN catalogs c ON p.catalog_id = c.id; 

SELECT * FROM name_cat;

SHOW tables;

-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP TABLE IF EXISTS from_table;
CREATE TABLE from_table (
	id SERIAL,
    created_at DATE NOT NULL
);

INSERT INTO from_table VALUES 
	(NULL, STR_TO_DATE('2018-08-01', '%Y-%m-%d')),
	(NULL, STR_TO_DATE('2018-08-04', '%Y-%m-%d')),
	(NULL, STR_TO_DATE('2018-08-16', '%Y-%m-%d')),
	(NULL, STR_TO_DATE('2018-08-17', '%Y-%m-%d'));

SELECT * FROM from_table;
	
-- решим с помошью функции

DROP FUNCTION IF EXISTS fill_tmp;
delimiter $$
CREATE FUNCTION fill_tmp (start_date DATE)
RETURNS text DETERMINISTIC
BEGIN
	DECLARE day_in_month INT DEFAULT DAY(LAST_DAY(start_date));
	DECLARE d_count int DEFAULT 0;
	
	-- создадим временную таблицу
	DROP TEMPORARY TABLE IF EXISTS tmp;
	CREATE TEMPORARY TABLE tmp (
		dates DATE NOT NULL,
		`count` INT DEFAULT 0
	);

	WHILE day_in_month > 0 DO
		INSERT INTO tmp (dates, `count`) VALUES (start_date, IF((SELECT count(*) FROM from_table WHERE created_at IN (start_date)), 1, 0));
		SET start_date = start_date + INTERVAL 1 DAY;
		SET day_in_month = day_in_month - 1;
	END WHILE;

	RETURN 'tmp';
END
delimiter ;

SELECT fill_tmp('2018-08-01');

SELECT * FROM tmp;
-- не окончено

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

