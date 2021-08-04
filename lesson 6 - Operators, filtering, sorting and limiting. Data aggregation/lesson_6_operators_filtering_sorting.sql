-- Урок 6. Вебинар. Операторы, фильтрация, сортировка и ограничение. Агрегация данных

USE vk;

-- 2. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

# start block ---------------------------------------------
-- Cначала подготовим данные в таблице messages, так как у нас после генерации тестовых данных from_user_id равен to_user_id:
-- Немного размножим данные
INSERT INTO messages (`from_iser_id`, `to_user_id`, `body`, `created_at`) 
SELECT from_iser_id, to_user_id, body, created_at FROM messages;

-- Перетасуем ссылки на id.user в поле to_user_id
UPDATE `messages` SET
 `to_user_id` = ( SELECT id FROM `users` ORDER BY RAND() LIMIT 1 );
# end block ---------------------------------------------

-- Зададим id конкретного пользователя
SET @some_user_id = 1002;

SELECT count(*) AS `total_messages`, from_iser_id FROM messages WHERE to_user_id = @some_user_id GROUP BY from_iser_id ORDER BY total DESC LIMIT 1;

-- 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Мы понимаем, что в mysql все таблицы и делаем последовательность id ползователей без аггрегации, как бы убирая ее в вложенную таблицу
-- SELECT user_id FROM (SELECT user_id, timestampdiff(YEAR, birthday, NOW()) AS `age_of_user` FROM profiles ORDER BY age_of_user LIMIT 10) allias;

SELECT count(*) AS `likes_from_10_young` FROM likes WHERE user_id IN (SELECT user_id FROM (SELECT user_id, timestampdiff(YEAR, birthday, NOW()) AS `age_of_user` FROM profiles ORDER BY age_of_user LIMIT 10) temp_tab );

-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- SELECT count(*) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm');

SELECT 
	IF (
		(SELECT count(*) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) > 
		(SELECT count(*) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f')),
		'Мужчины лайкали больше!',
		'Женщины лайкали больше'
		);

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.