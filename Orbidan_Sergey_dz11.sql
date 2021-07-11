							-- Оптимизация запросов
-- Задача 1
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(45) NOT NULL,
	str_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;

-- users log
DROP TRIGGER IF EXISTS users_log;
delimiter //
CREATE TRIGGER users_log AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
delimiter ;

-- catalogs log
DROP TRIGGER IF EXISTS catalogs_log;
delimiter //
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
delimiter ;

-- products log
delimiter //
CREATE TRIGGER products_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //
delimiter ;


				-- NoSql
-- задача 1
-- все значения в коллекции уникальны
SADD ipaddr '127.0.0.1' '127.0.0.2' '127.0.0.3' '127.0.0.4' '127.0.0.5'

-- список адресов
SMEMBERS ipaddr

-- количество адресов
SCARD ipaddr

-- Задача 2
set kate@gmail.com kate
set kate kate@gmail.com

get kate@gmail.com
get kate

-- Задача 3
db.products.insertMany([
	{"name": "AMD FX-8320", "description": "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price": "7120.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "AMD FX-8320E", "description": "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price": "4780.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "Intel Core i3-8100", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "7890.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "Intel Core i5-7400", "description": "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price": "12700.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "ASUS ROG MAXIMUS X HERO", "description": "Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX", "price": "19310.00", "catalog_id": "Материнские платы", "created_at": new Date(), "updated_at": new Date()},
	{"name": "Gigabyte H310M S2H", "description": "Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX", "price": "4790.00", "catalog_id": "Материнские платы", "created_at": new Date(), "updated_at": new Date()},
	{"name": "MSI B250M GAMING PRO", "description": "Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX", "price": "5060.00", "catalog_id": "Материнские платы", "created_at": new Date(), "updated_at": new Date()}])

db.catalogs.insertMany([{"name": "Процессоры"}, {"name": "Материнские платы"}, {"name": "Видеокарты"}, {"name": "Жесткие диски"}], {"name": "Оперативная память"}])