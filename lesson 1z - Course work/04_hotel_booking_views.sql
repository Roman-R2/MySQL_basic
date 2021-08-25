-- 7. Представления (минимум 2)

USE hotel_booking;

-- Создадим представления для обычных пользователей и администраторов/контент менеджеров отелей, чтоб разграничить их
CREATE OR REPLACE VIEW users_hotel_managers (first_name, last_name, email, phone_number, password_hash)
AS SELECT first_name, last_name, email, phone_number, password_hash FROM users WHERE is_hotel_manager = 1;

CREATE OR REPLACE VIEW users_not_hotel_managers (first_name, last_name, email, phone_number, password_hash)
AS SELECT first_name, last_name, email, phone_number, password_hash FROM users WHERE is_hotel_manager = 0;


SELECT * FROM users_hotel_managers;

SELECT * FROM users_not_hotel_managers;