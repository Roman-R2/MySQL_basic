DROP database IF EXISTS hotel_booking;

CREATE database hotel_booking;

use hotel_booking;

-- Таблица пользователей системы
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL COMMENT 'Имя пользовтеля',
	last_name VARCHAR(50) NOT NULL COMMENT 'Фамилия пользователя',
	email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Уникальный email пользоватетя',
	phone_number BIGINT unsigned UNIQUE NOT NULL COMMENT 'Уникальный номер телефона пользоватетя',
	password_hash VARCHAR(100) NOT NULL COMMENT 'Хэш пароля пользователя',
	is_hotel_manager boolean DEFAULT 0 NOT NULL COMMENT 'Метка, является ли пользователь администратором/контент менеджером отеля'
);

-- Таблица с общим описанием места размещения
DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels (
	id SERIAL PRIMARY KEY,
	`type` ENUM('Отель', 'Аппартаменты', 'Вилла', 'Гостевой дом') NOT NULL COMMENT 'Тип объекта размещения',
	rating DECIMAL(3,1) NOT NULL COMMENT 'Рейтинг от 0.0 до 10.0',
	name VARCHAR(100) NOT NULL COMMENT 'Название места размещения',
	description VARCHAR(1000) NOT NULL COMMENT 'Текстовое описание объекта размещения'
);

-- Таблица для названия комнат, типа одноместный номер, семейныи номер и пр.
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL COMMENT 'Название комнаты для размещения гостей'
);


-- Таблица для соединения отелей и комнат, организация связи многие ко многим
DROP TABLE IF EXISTS hotel_rooms;
CREATE TABLE hotel_rooms (
	id SERIAL PRIMARY KEY,
	hotel_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на отель, в котором находится эта комната',
	room_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на название комнаты',
	price DECIMAL(10,2) NOT NULL COMMENT 'Цена за место размещения в сутки',
  
    FOREIGN KEY (hotel_id) REFERENCES hotels(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)

);

-- Таблица, где перечислены удобства в номере
DROP TABLE IF EXISTS room_fasilities;
CREATE TABLE room_fasilities (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL COMMENT 'Название удобств в комнате'
);

-- Таблица для соединения удобств в номере с конкретным номером
DROP TABLE IF EXISTS hotel_rooms_to_room_fasilities;
CREATE TABLE hotel_rooms_to_room_fasilities (
	hotel_room_id BIGINT UNSIGNED NOT NULL,
	room_fasilities_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (hotel_room_id, room_fasilities_id),
    FOREIGN KEY (hotel_room_id) REFERENCES hotel_rooms(id),
    FOREIGN KEY (room_fasilities_id) REFERENCES room_fasilities(id)

);

-- Таблица бронирований
DROP TABLE IF EXISTS bookings;
CREATE TABLE bookings (
	id SERIAL PRIMARY KEY,
	user_id BIGINT unsigned NOT NULL COMMENT 'Ссылка на пользователя, который забронировал номер',
	hotel_rooms_id BIGINT unsigned NOT NULL COMMENT 'Ссылка на номер, который забронировал пользователь',
	check_in_date DATE NOT NULL COMMENT 'Дата регистрации',
	check_out_date DATE NOT NULL COMMENT 'Дата отъезда',
	status ENUM('Не подтветжнено', 'Подтверждено', 'Отменено') NOT NULL COMMENT 'Статус бронирования',
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (hotel_rooms_id) REFERENCES hotel_rooms(id)
);

-- Таблица сообщений между пользователем и администратором объекта размещения
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body VARCHAR(1000),
	created_at DATETIME DEFAULT now(),
	
	FOREIGN KEY (from_user_id) REFERENCES users(id),
	FOREIGN KEY (to_user_id) REFERENCES users(id),
	
	CHECK(from_user_id <> to_user_id)
);

-- Таблица для отзывов пользователях о проживании
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
	id SERIAL PRIMARY KEY,
	booking_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на бронирование, о котором оставляется отзыв',
	rating DECIMAL(3,1) NOT NULL COMMENT 'Рейтинг конкретного размещения от 0.0 до 10.0',
	description VARCHAR(1000) DEFAULT 'Текст отзыва не указан' COMMENT 'Текст отзыва по желанию',
	
	FOREIGN KEY (booking_id) REFERENCES bookings(id)
);

-- Таблица для хранения наименований стран
DROP TABLE IF EXISTS regions;
CREATE TABLE regions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL COMMENT 'Название страны'
);

-- Таблица для хранения наименований городов
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	region_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на страну',
	name VARCHAR(200) NOT NULL COMMENT 'Название города',
	
	FOREIGN KEY (region_id) REFERENCES regions(id)
);

-- Таблица для хранения адресов мест размещения
DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
	id SERIAL PRIMARY KEY,
	hotel_id BIGINT UNSIGNED NOT NULL UNIQUE COMMENT 'Ссылка на отель',
	
	city_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на город',
	street VARCHAR(100) NOT NULL COMMENT 'Название улицы',
	house_number VARCHAR(15) NOT NULL COMMENT 'Номер дома',
	latitude DECIMAL(10,8) NOT NULL COMMENT 'Координата широты', 
	longitude DECIMAL(10,8) NOT NULL COMMENT 'Координата долготы',
	
	FOREIGN KEY (hotel_id) REFERENCES hotels(id),
	FOREIGN KEY (city_id) REFERENCES cities(id)
);


