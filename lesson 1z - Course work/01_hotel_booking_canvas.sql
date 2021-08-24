DROP database IF EXISTS hotel_booking;

CREATE database hotel_booking;

use hotel_booking;

-- **users** - таблица пользователей системы.
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
	description VARCHAR(1000) NOT NULL COMMENT 'Текстовое описание объекта размещения',
	-- Надо бы отдельные таблицы сделать адресу для лучшего поиска по городам и местам, но я здесь сосредоточился на бронировании
	adress VARCHAR(500) NOT NULL COMMENT 'Адрес объекта размещения' ,
	hotel_rooms_id BIGINT UNSIGNED NOT NULL COMMENT 'Ключ к таблице hotel_rooms для соотношения номеров с местом размещения'
	
	-- FOREIGN KEY (hotel_rooms_id) REFERENCES Users(id),
);


DROP TABLE IF EXISTS hotel_rooms;
CREATE TABLE hotel_rooms (
	hotel_id BIGINT UNSIGNED NOT NULL,
	room_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (hotel_id, room_id),
    -- FOREIGN KEY (user_id) REFERENCES Users(id),
    -- FOREIGN KEY (community_id) REFERENCES Communities(id)

);

-- **booking** - таблица заявок на бронирование


-- **reviews** - таблица отзывов о проживании
