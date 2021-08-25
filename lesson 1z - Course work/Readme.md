# Требования к курсовому проекту:

1. Составить общее текстовое описание БД и решаемых ею задач

2. Минимальное количество таблиц - 10

3. Скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами)

4. Создать ERDiagram для БД

5. Скрипты наполнения БД данными

6. Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы)

7. Представления (минимум 2)

8. Хранимые процедуры / триггеры

> Примеры: описать модель хранения данных популярного веб-сайта: кинопоиск, booking.com, wikipedia, интернет-магазин, госуслуги...

# Описание курсового проекта.

Для курсового проекта выбрана система интернет-бронирования отелей. Пользователи могут просмотреть информацию об отеле, доступных номерах и их удобствах, забронировать отель, оставить отзыв о размещении, обмениваться сообщениями с администраторами отелей.

Данная база данных позволяет обеспечить базовый функционал для бронирования мест размещения при поездках.

ER-диаграмма представлена [в данном файле: ](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/ER_Diagram.png)
![ER диаграмма проекта](https://raw.githubusercontent.com/Roman-R2/MySQL_basic/main/lesson%201z%20-%20Course%20work/ER_Diagram.png)

## Таблицы проекта:

Проект включает в себя 12 таблиц, база данных приведена к [третьей нормальной форме](https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%84%D0%BE%D1%80%D0%BC%D0%B0):

1. **users** - таблица для хранения информации о пользователях системы, пользователи с правами администратора/контент-менеджера мест размещения помечены в специальном поле is_hotel_manager.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|first_name|varchar(50)|NO||||
|last_name|varchar(50)|NO||||
|email|varchar(100)|NO|UNI|||
|phone_number|bigint unsigned|NO|UNI|||
|password_hash|varchar(100)|NO||||
|is_hotel_manager|tinyint(1)|NO||0||

2. **messages** - таблица для обмена сообщениями между пользователями и администраторами/контент-менеджерами мест размещения. Используется для прямой связи с местом размещения.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|from_user_id|bigint unsigned|NO|MUL|||
|to_user_id|bigint unsigned|NO|MUL|||
|body|varchar(1000)|YES||||
|created_at|datetime|YES||CURRENT_TIMESTAMP|DEFAULT_GENERATED|

3. **bookings** - таблица предназначена для хранения информации о бронированиях с указанием даты заезда и ссылкой на конкретную комнату в объекте размещения.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|user_id|bigint unsigned|NO|MUL|||
|hotel_rooms_id|bigint unsigned|NO|MUL|||
|check_in_date|date|NO||||
|check_out_date|date|NO||||
|status|enum('Не подтветжнено','Подтверждено','Отменено')|NO||||
|created_at|datetime|YES||CURRENT_TIMESTAMP|DEFAULT_GENERATED|
|updated_at|datetime|YES|||on update CURRENT_TIMESTAMP|

4. **reviews** - Таблица для хранения отзывов о прошедшем проживании.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|booking_id|bigint unsigned|NO|MUL|||
|rating|decimal(3,1)|NO||||
|description|varchar(1000)|YES||Текст отзыва не указан||

5. **hotel_rooms** - таблица для хранения типов комнат в конкретном месте размещения, со ссылками на удобства в номерах и конкретный отель. В одном отеле может быть множество номеров/комнат. Также тут хранится цена за сутки проживания в конкретном номере.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|hotel_id|bigint unsigned|NO|MUL|||
|room_id|bigint unsigned|NO|MUL|||
|price|decimal(10,2)|NO||||


6. **rooms** - таблица для хранения типового наименования комнаты, типа "семейный номер на четверых", "улучшенный номер с одной кроватью размера king-size" и т.д.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|name|varchar(100)|NO||||


7. **hotel_rooms_to_room_fasilities** - таблица для организации связи многое ко многим между комнатой и ее удобствами.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|hotel_room_id|bigint unsigned|NO|PRI|||
|room_fasilities_id|bigint unsigned|NO|PRI|||


8. **room_fasilities** - таблица для хранения названий типовых удобств в номерах.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|name|varchar(100)|NO|UNI|||


9. **hotels** - таблица для хранения общей информации о местах размещений, таких как их название, тип, описание, рейтинг.

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|type|enum('Отель','Аппартаменты','Вилла','Гостевой дом')|NO||||
|rating|decimal(3,1)|NO||||
|name|varchar(100)|NO||||
|description|varchar(1000)|NO||||


10. **addresses** - таблица для хранения адресов мест размещения и других географических данных

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|hotel_id|bigint unsigned|NO|UNI|||
|city_id|bigint unsigned|NO|MUL|||
|street|varchar(100)|NO||||
|house_number|varchar(15)|NO||||
|latitude|decimal(10,8)|NO||||
|longitude|decimal(10,8)|NO||||


11. **cities** - таблица для хранения имен городов

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|region_id|bigint unsigned|NO|MUL|||
|name|varchar(200)|NO||||


12. **regions** - таблица для хранения имен стран

|Field|Type|Null|Key|Default|Extra|
|-----|----|----|---|-------|-----|
|id|bigint unsigned|NO|PRI||auto_increment|
|name|varchar(200)|NO||||



## Скрипты проекта

1. Скрипт создания структуры БД находится в файле [01_hotel_booking_canvas.sql](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/01_hotel_booking_canvas.sql)

2. Скрипт наполнения БД данными находится в файле [02_hotel_booking_data.sql.sql](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/02_hotel_booking_data.sql)

3. Скрипт характерных выборок находится в файле [03_hotel_booking_requests.sql](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/03_hotel_booking_requests.sql)

4. Скрипт представлений находится в файле [04_hotel_booking_views.sql](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/04_hotel_booking_views.sql)

5. Скрипт Хранимых процедур / триггеров находится в файле [05_hotel_booking_stored_procedures_functions_triggers.sql](https://github.com/Roman-R2/MySQL_basic/blob/main/lesson%201z%20-%20Course%20work/05_hotel_booking_stored_procedures_functions_triggers.sql)