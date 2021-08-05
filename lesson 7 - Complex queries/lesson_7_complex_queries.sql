-- Урок 7. Сложные запросы

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

-- Заполним пустую таблицу orders тестовыми данными
INSERT INTO `orders` VALUES 
	(1,6,'2018-03-25 17:57:41','1985-07-28 21:05:17'),
	(2,4,'1988-10-11 06:24:59','1992-06-23 23:57:43'),
	(3,1,'2016-07-29 23:41:58','2017-03-13 20:21:35'),
	(4,4,'1982-05-29 22:57:23','2014-08-26 12:41:02'),
	(5,2,'1996-09-10 20:21:39','2018-02-03 14:19:24'),
	(6,1,'2006-04-15 02:59:44','1981-06-01 09:45:17'),
	(7,2,'2002-11-30 02:44:16','1992-08-15 17:38:44'),
	(8,1,'1977-07-05 16:20:34','2003-08-27 17:36:16'),
	(9,4,'1976-02-04 02:21:46','1976-12-29 15:25:43'),
	(10,2,'2012-11-06 12:50:34','2002-05-09 11:43:26'),
	(11,4,'2014-09-30 06:56:58','2012-04-15 15:55:13'),
	(12,2,'2011-02-01 13:47:30','2020-04-25 06:09:53'),
	(13,4,'1998-07-24 13:46:28','1977-05-01 09:00:52'),
	(14,2,'2005-08-28 22:23:28','1990-11-17 06:41:24'),
	(15,1,'1975-05-11 22:09:18','2008-01-20 02:45:38');
	
SELECT id, name FROM users WHERE id IN (SELECT DISTINCT user_id FROM orders);

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT 
	(SELECT c.name FROM catalogs AS c WHERE p.catalog_id = c.id),
	p.name, 
	p.description, 
	p.price 
FROM products AS p;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	`from` VARCHAR(30),
	`to` VARCHAR(30)
);

INSERT INTO flights VALUES
	(NULL, 'moscow', 'omsk'),
	(NULL, 'novgorod', 'kazan'),
	(NULL, 'irkutsk', 'moscow'),
	(NULL, 'omsk', 'irkutsk'),
	(NULL, 'moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	label VARCHAR(30),
	name VARCHAR(30)
);

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

SELECT 
	f.id AS `str num`,
	(SELECT c.name FROM cities AS c WHERE c.label = f.`from`) AS `from`,
	(SELECT c.name FROM cities AS c WHERE c.label = f.`to`) AS `to`
FROM flights AS f;