-- 6. Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы)

use hotel_booking;

-- Выберем все бронирования пользователя по его id, которые являются подтвержденными
SELECT
	 u.first_name,
	 u.last_name,
	 h.name AS hotel_name,
	 r.name AS room_name,
	 b.check_in_date,
	 b.check_out_date
FROM 
	users u
JOIN bookings AS b ON u.id = b.user_id 
JOIN hotel_rooms AS hr ON b.hotel_rooms_id = hr.id 
JOIN hotels AS h ON h.id =hr.hotel_id 
JOIN rooms AS r ON r.id = hr.room_id 
WHERE 
	u.id = 1023
	AND 
	b.status = 'Подтверждено';
	
-- Выберем все отели, находящиеся в определенном городе и отсортируем их по наилучшему рейтингу начиная от 8
SELECT 
	h.name,
	h.rating,
	h.description,
	a.latitude,
	a.longitude 
FROM 
	hotels AS h
JOIN addresses AS a ON a.hotel_id = h.id 
JOIN cities AS c ON c.id = a.city_id 
WHERE 
	c.name = 'Москва'
	AND
	h.rating >= 8
ORDER BY h.rating DESC;

-- Выведем все отзывы для определенного отеля
SELECT 
	u.first_name,
	u.last_name,
	r.rating,
	r.description,
	r2.name, 
	b.check_in_date,
	b.check_out_date
FROM reviews AS r 
JOIN bookings AS b ON b.id = r.booking_id
JOIN hotel_rooms AS hr ON hr.id = b.hotel_rooms_id
JOIN hotels AS h ON h.id = hr.hotel_id 
JOIN users AS u ON b.user_id = u.id 
JOIN rooms AS r2 ON r2.id = hr.room_id 
WHERE 
	h.name = 'Come Inn'
ORDER BY r.rating DESC;