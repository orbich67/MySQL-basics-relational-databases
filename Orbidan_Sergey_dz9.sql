-- 						Практическое задание №9
-- “Транзакции, переменные, представления”

-- 1) Задача
-- подготовка
-- создали базу sample
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample;

-- создали в базе sample таблицу users; 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

-- решение
START TRANSACTION;
INSERT INTO sample.users (SELECT * FROM shop.users WHERE shop.users.id = 1);
COMMIT;

-- 2) Задача
CREATE OR REPLACE VIEW vw_name_catalogs AS 
  SELECT products.name AS p_name, catalogs.name AS c_name 
    FROM products,catalogs 
      WHERE products.catalog_id = catalogs.id;

SELECT * FROM vw_name_catalogs;



-- “Хранимые процедуры и функции, триггеры"
-- 1) Задача
DROP PROCEDURE IF EXISTS hello;
delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT 'Добрый вечер';
		ELSE
			SELECT 'Доброй ночи';
	END CASE;
END //
delimiter ;

CALL hello();

-- 2) Задача
DROP TRIGGER IF EXISTS nullsTrigger;
delimiter //
CREATE TRIGGER nullsTrigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error!  Products name or description can not be NULL';
	END IF;
END //
delimiter ;

-- проверка
INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 3599, 3); -- ошибка, сработал триггер.