USE test;

-- ������������ ������� �� ���� ����������, ����������, ���������� � �����������

# 1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	name VARCHAR(30),
	created_at DATETIME default null,
	updated_at DATETIME default null
	);
	
INSERT INTO `Users` (`name`) VALUES ('����'), ('����'), ('����'), ('���� ������');

UPDATE `Users` set created_at = NOW(), updated_at = NOW() where created_at IS NULL and updated_at IS null;

select * from Users;

# 2. ������� users ���� �������� ��������������. 
# ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� 20.10.2017 8:10. 
# ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.

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
		('����', '20.10.2017 8:10', '20.10.2017 8:10'), 
		('����', '21.10.2017 8:10', '21.10.2017 8:10'), 
		('����', '22.10.2017 8:10', '22.10.2017 8:10'), 
		('���� ������', '23.10.2017 8:10', '23.10.2017 8:10');

update Users set created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i"),  updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %k:%i");

ALTER TABLE `Users` MODIFY created_at  DATETIME not null;

ALTER TABLE `Users` MODIFY updated_at  DATETIME not null;

describe `Users`;

select * from Users;
	
# 3. � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, 
# ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
# ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
# ������ ������� ������ ������ ���������� � �����, ����� ���� �������.

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
	
# 4. (�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
# ������ ������ � ���� ������ ���������� �������� (may, august)


# 5. (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. 
# SELECT * FROM catalogs WHERE id IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN.