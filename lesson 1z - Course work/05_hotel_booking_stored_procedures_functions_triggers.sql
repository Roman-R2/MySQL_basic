-- 8. Хранимые процедуры / триггеры

USE hotel_booking;

-- Создадим триггер который быудет проверять при вставке в таблицу bookings что дата вьезда меньше даты выезда и находится не в прошлом.
DROP TRIGGER IF EXISTS check_check_in_check_out_dates;

DELIMITER $$
CREATE TRIGGER check_check_in_check_out_dates BEFORE INSERT ON bookings
FOR EACH ROW
BEGIN 
   
   	IF NEW.check_in_date > NEW.check_out_date THEN 
   		-- Говорим о том, что дата отъезда ранее даты заезад
   		SIGNAL SQLSTATE '45000' SET message_text = 'Error! Check-out date before check-in date.';
	END IF;

	IF NEW.check_in_date < curdate() THEN 
   		-- Говорим о том, что нельзя выбрать прошедшую дату
   		SIGNAL SQLSTATE '45000' SET message_text = 'Error! You cannot select past dates.';
	END IF;
   
END$$
DELIMITER ;


INSERT INTO bookings 
	(user_id, hotel_rooms_id, check_in_date, check_out_date, status) 
VALUES
	(1001, 19, STR_TO_DATE('2021-08-25', '%Y-%m-%d'), STR_TO_DATE('2021-08-31', '%Y-%m-%d'), 'Не подтветжнено');
	



-- Создадим хранимую процедуру, которая выведет самый дешевый вариант размещения в конкретном городе
drop procedure if exists dubious_option;

delimiter $$
create procedure dubious_option(in some_city TEXT)
  begin
	SELECT 
		c.name AS city,
		h.`type` AS hotel_type,
		h.name AS hotel_name,
		h.rating AS hotel_rating,
		r.name AS room_name,
		hr.price AS price_per_night
	FROM hotel_rooms AS hr 
	JOIN hotels AS h ON h.id = hr.hotel_id 
	JOIN addresses AS a ON h.id = a.hotel_id 
	JOIN cities AS c ON a.city_id = c.id
	JOIN rooms AS r ON r.id = hr.room_id 
	WHERE c.name = 'Москва'
	ORDER BY hr.price 
	LIMIT 1;
  END$$
DELIMITER ;

CALL dubious_option('Москва');


