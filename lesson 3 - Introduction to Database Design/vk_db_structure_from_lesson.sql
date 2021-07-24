DROP database IF EXISTS vk;

CREATE database vk;

use vk;

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id BIGINT unsigned NOT NULL auto_increment PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100) UNIQUE,
	password_hash VARCHAR(100),
	phone_number BIGINT unsigned UNIQUE,
	
	INDEX Users_first_name_last_name_idx(first_name,
last_name)
);

DROP TABLE IF EXISTS Profiles;

CREATE TABLE Profiles (
	user_id BIGINT unsigned NOT NULL UNIQUE,
	gender CHAR(1),
	birthday DATE, 
	photo_id BIGINT unsigned NOT NULL,
-- Update
created_at DATETIME DEFAULT now(),
	hometown VARCHAR(100)
-- FOREIGN KEY (photo_id) REFERENCES media(id)
);

ALTER TABLE `Profiles` ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES Users(id)
    ON UPDATE CASCADE -- (значение по умолчанию)
    ON DELETE RESTRICT; -- (значение по умолчанию)

DROP TABLE IF EXISTS Messages;

CREATE TABLE Messages (
	id SERIAL,
-- SERIAL = BIGINT unsigned NOT NULL auto_increment UNIQUE,
from_iser_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	created_at DATETIME DEFAULT now(),
	
	FOREIGN KEY (from_iser_id) REFERENCES Users(id),
	FOREIGN KEY (to_user_id) REFERENCES Users(id)
);

DROP TABLE IF EXISTS Friend_requests;

CREATE TABLE Friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined', 'unfriended'),
	requested_at DATETIME DEFAULT now(),
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (initiator_user_id, target_user_id),
	FOREIGN KEY (initiator_user_id) REFERENCES Users(id),
	FOREIGN KEY (target_user_id) REFERENCES Users(id)
);

ALTER TABLE Friend_requests 
ADD CHECK(initiator_user_id <> target_user_id);

-- “аблица групп, в который может вступать пользователь
DROP TABLE IF EXISTS Communities;
CREATE TABLE Communities(
	id SERIAL,
	name VARCHAR(150),
	admin_user_id BIGINT UNSIGNED NOT NULL,
	
	INDEX communities_name_idx(name), -- индексу можно давать свое им€ (communities_name_idx)
	foreign key (admin_user_id) references Users(id)
);

-- “аблица дл€ реализации св€зи многие ко многим между пользовател€ми и грyппами
DROP TABLE IF EXISTS Users_communities;
CREATE TABLE Users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (community_id) REFERENCES Communities(id)
);

-- “аблица, дл€ определени€ какого типа файлы мы храним в базе
DROP TABLE IF EXISTS Media_types;
CREATE TABLE Media_types(
	id SERIAL,
	-- audio, video, picture, post
    name VARCHAR(255), -- записей мало, поэтому в индексе нет необходимости
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS Media;
CREATE TABLE Media(
	id SERIAL,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body TEXT,
    filename VARCHAR(255),
    -- file blob,    	
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (media_type_id) REFERENCES Media_types(id)
);

DROP TABLE IF EXISTS Likes;
CREATE TABLE Likes(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()

    -- PRIMARY KEY (user_id, media_id) Ц можно было и так вместо id в качестве PK
  	-- слишком увлекатьс€ индексами тоже опасно, рациональнее их добавл€ть по мере необходимости (напр., провисают по времени какие-то запросы)  

/* намеренно забыли, чтобы позднее увидеть их отсутствие в ER-диаграмме
    , FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (media_id) REFERENCES media(id)
*/
);

-- “аблица, дл€ хранени€ информации об альбомах фотографий пользователей
DROP TABLE IF EXISTS `Photo_albums`;
CREATE TABLE `Photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES Users(id),
  	PRIMARY KEY (`id`)
);

-- “аблица дл€ сопоставлени€ фотографий и альбомов дл€ св€зи многие ко многим
DROP TABLE IF EXISTS `Photos`;
CREATE TABLE `Photos` (
	id SERIAL,
	`album_id` BIGINT unsigned NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES Photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES Media(id)
);

ALTER TABLE vk.Likes 
ADD CONSTRAINT likes_fk 
FOREIGN KEY (media_id) REFERENCES vk.Media(id);

ALTER TABLE vk.Likes 
ADD CONSTRAINT Likes_fk_1 
FOREIGN KEY (user_id) REFERENCES vk.Users(id);

ALTER TABLE vk.Profiles 
ADD CONSTRAINT profiles_fk_1 
FOREIGN KEY (photo_id) REFERENCES Media(id);