-- Практическое задание по теме “NoSQL”

-- Для выполнения ДЗ использован microsoftarchive/redis (https://github.com/microsoftarchive/redis/releases/tag/win-3.0.504)
-- !!!!!! Это sql файл, но в нем пердставлены команды для redis-cli, воспринимайте его как информационный файл, не для запуска

-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
-- Используем хэш:
127.0.0.1:6379> HMSET ip_count 10.14.162.1 0 10.14.162.2 0
OK

127.0.0.1:6379> HVALS ip_count
1) "0"
2) "0"

127.0.0.1:6379> HGETALL ip_count
1) "10.14.162.1"
2) "0"
3) "10.14.162.2"
4) "0"

127.0.0.1:6379> HINCRBY ip_count 10.14.162.1 1
(integer) 1

127.0.0.1:6379> HGETALL ip_count
1) "10.14.162.1"
2) "1"
3) "10.14.162.2"
4) "0"

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, 
-- поиск электронного адреса пользователя по его имени.

-- Надо 2 хэш таблицы
127.0.0.1:6379> HMSET users_names Dart_Veider no@jedi.com M_Ioda i-feel@power.org
OK
127.0.0.1:6379> HMSET users_emails no@jedi.com Dart_Veider i-feel@power.org M_Ioda
OK

-- Поиск email по имени 
127.0.0.1:6379> HGET users_names M_Ioda
"i-feel@power.org"
127.0.0.1:6379> HGET users_names Someone_Else
(nil)

-- Поиск имени по email:
127.0.0.1:6379> HGET users_emails no@jedi.com
"Dart_Veider"
127.0.0.1:6379> HGET users_emails some@email.org
(nil)

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
