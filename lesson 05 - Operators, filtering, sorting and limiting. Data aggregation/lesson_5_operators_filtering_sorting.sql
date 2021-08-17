USE test;

-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

# 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем .

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	name VARCHAR(30),
	created_at DATETIME default null,
	updated_at DATETIME default null
	);
	
INSERT INTO `Users` (`name`) VALUES ('Вася'), ('Петя'), ('Гоша'), ('Дарт Вейдер');

UPDATE `Users` set created_at = NOW(), updated_at = NOW() where created_at IS NULL and updated_at IS null;

select * from Users;

# 2. Таблица users была неудачно спроектирована. 
# Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
# Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	name VARCHAR(30),
	created_at VARCHAR(30),
	updated_at VARCHAR(30)
	);

INSERT INTO `Users` 
		(`name`, `created_at`, `updated_at`) 
VALUES 
		('Вася', '20.10.2017 8:10', '20.10.2017 8:10'), 
		('Петя', '21.10.2017 8:10', '21.10.2017 8:10'), 
		('Гоша', '22.10.2017 8:10', '22.10.2017 8:10'), 
		('Дарт Вейдер', '23.10.2017 8:10', '23.10.2017 8:10');

update Users set created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i"),  updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %k:%i");

ALTER TABLE `Users` MODIFY created_at  DATETIME not null;

ALTER TABLE `Users` MODIFY updated_at  DATETIME not null;

describe `Users`;

select * from Users;
	
# 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
# если товар закончился и выше нуля, если на складе имеются запасы. 
# Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
# Однако нулевые запасы должны выводиться в конце, после всех записей.

DROP TABLE IF EXISTS storehouses_products;

CREATE TABLE storehouses_products (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	value INT unsigned not NULL
	);
	
insert into `storehouses_products`
	(`value`)
values
	(0),
	(5),
	(0),
	(1),
	(6),
	(4),
	(0),
	(7),
	(11),
	(15),
	(20),
	(30);

select value from storehouses_products order by value = 0, value asc;
	
# 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
# Месяцы заданы в виде списка английских названий (may, august)

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  birthbay_mounth VARCHAR(20) COMMENT 'Месяц рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

-- January, February, March, April, May, June, July, August, September, October, November, December

INSERT INTO users (name, birthday_at, birthbay_mounth) VALUES
  ('Геннадий', '1990-10-05', 'оctober'),
  ('Наталья', '1984-11-12', 'november'),
  ('Александр', '1985-05-20', 'may'),
  ('Сергей', '1988-02-14', 'february'),
  ('Иван', '1998-01-12', 'january'),
  ('Мария', '1992-08-29', 'august');

SELECT name, birthday_at, birthbay_mounth FROM users WHERE birthbay_mounth = 'may' OR birthbay_mounth = 'august';
 
# 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
# SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.

DROP TABLE IF EXISTS catalogs;

CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
  
 SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id = 2, id = 1, id = 5;