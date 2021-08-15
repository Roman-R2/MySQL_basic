-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;

DELIMITER $$
CREATE FUNCTION hello ()
RETURNS text DETERMINISTIC 
BEGIN
	
	DECLARE tmp_time DATE;

	SET tmp_time = TIME(NOW());
	
	IF tmp_time >= CAST('06:00:00' AS time) AND tmp_time < CAST('11:59:59' AS time) THEN RETURN 'Доброе утро';
    ELSEIF tmp_time >= CAST('12:00:00' AS time) AND tmp_time < CAST('17:59:59' AS time) THEN RETURN 'Добрый день';
    ELSEIF tmp_time >= CAST('18:00:00' AS time) AND tmp_time < CAST('23:59:59' AS time) THEN RETURN 'Добрый вечер';
    ELSEIF tmp_time >= CAST('00:00:00' AS time) AND tmp_time < CAST('05:59:59' AS time) THEN RETURN 'Добрый вечер';
    ELSE RETURN 'ERROR: Не определено';
    END IF;
  
END$$
DELIMITER ;

SELECT hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TRIGGER IF EXISTS check_double_null;

DELIMITER $$
CREATE TRIGGER check_double_null BEFORE INSERT ON products
FOR EACH ROW
BEGIN 
   
   	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
   		SIGNAL SQLSTATE '45000' SET message_text = 'name and description should not be NULL at the same time';
	END IF;
   
END$$
DELIMITER ;

INSERT INTO products (name, description, price, catalog_id) VALUES
	(NULL, NULL, 5000, 2);

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.
