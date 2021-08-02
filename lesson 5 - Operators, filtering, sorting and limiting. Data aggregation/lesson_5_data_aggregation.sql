USE test;

# 1. Подсчитайте средний возраст пользователей в таблице users.
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	name VARCHAR(30),
	date_of_birth DATE not null
	);


INSERT INTO `Users` 
	(`name`, `date_of_birth`) 
VALUES 
	('Рома', '1987-02-18'), 
	('Петя', '1988-06-20'), 
	('Гоша', '1970-01-15'), 
	('Дарт Вейдер', '2000-08-02');

SELECT avg(timestampdiff(YEAR, date_of_birth, NOW())) FROM Users;

select * from Users;

# 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
# Следует учесть, что необходимы дни недели текущего года, а не года рождения.

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
 -- WEEKDAY(date)
 -- Возвращает индекс дня недели для аргумента date (0 =понедельник, 1 = вторник, ... 6 = воскресенье)
 
SELECT 
	WEEKDAY(CONCAT(year(now()), substring(birthday_at, 5, 10))) AS `weekday_of_this_year`, 
	COUNT(WEEKDAY(birthday_at)) AS `count_of_weekdays` 
FROM users 
GROUP BY `weekday_of_this_year`;

# 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.
