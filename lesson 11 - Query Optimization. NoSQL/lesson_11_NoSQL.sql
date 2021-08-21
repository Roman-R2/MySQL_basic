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

-- Для решения использован MongoDB Community Edition on Windows (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/)
-- и mongosh (https://docs.mongodb.com/mongodb-shell/install/#std-label-mdb-shell-install)

test> show dbs
admin    41 kB
config  111 kB
local    41 kB

test> use shop
switched to db shop

-- Вставляем документы таблицы catalogs
shop> db.shop.insertOne({"table": "catalogs", "name":"Процессоры", "id": 1})
{
  acknowledged: true,
  insertedId: ObjectId("612103cff6c3a2968ffcb4e6")
}
shop> db.shop.insertMany([{"table": "catalogs", "name":"Материнские платы", "id": 2}, {"table": "catalogs", "name":"Видеокарты", "id": 3}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("61210474f6c3a2968ffcb4e7"),
    '1': ObjectId("61210474f6c3a2968ffcb4e8")
  }
}
shop> db.shop.insertMany([{"table": "catalogs", "name":"Жесткие диски", "id": 4}, {"table": "catalogs", "name":"Оперативная память", "id": 5}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("612104a0f6c3a2968ffcb4e9"),
    '1': ObjectId("612104a0f6c3a2968ffcb4ea")
  }
}

shop> db.shop.insertMany([
{"table": "products", "name": "Intel Core i3-8100", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "7890", "catalog_id": "1"}, 
{"table": "products", "name": "Intel Core i5-7400", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "12700", "catalog_id": "1"}, 
{"table": "products", "name": "AMD FX-8320E", "description": "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price": "4780", "catalog_id": "1"}, 
{"table": "products", "name": "AMD FX-8320", "description": "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price": "7120", "catalog_id": "1"}, 
{"table": "products", "name": "ASUS ROG MAXIMUS X HERO", "description": "Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX", "price": "19310", "catalog_id": "2"}, 
{"table": "products", "name": "Gigabyte H310M S2H", "description": "Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX", "price": "4790", "catalog_id": "2"}, 
{"table": "products", "name": "MSI B250M GAMING PRO", "description": "Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX", "price": "", "catalog_id": "2"}
])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("61210898f6c3a2968ffcb4eb"),
    '1': ObjectId("61210898f6c3a2968ffcb4ec"),
    '2': ObjectId("61210898f6c3a2968ffcb4ed"),
    '3': ObjectId("61210898f6c3a2968ffcb4ee"),
    '4': ObjectId("61210898f6c3a2968ffcb4ef"),
    '5': ObjectId("61210898f6c3a2968ffcb4f0"),
    '6': ObjectId("61210898f6c3a2968ffcb4f1")
  }
}