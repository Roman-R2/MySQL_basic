USE test;

-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

# 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

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


# 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
# SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.