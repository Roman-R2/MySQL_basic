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
 

# 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.