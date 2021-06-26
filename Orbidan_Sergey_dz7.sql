-- 1) Задание

-- заполняем таблицу orders
INSERT INTO
orders(user_id)
VALUES
(1), -- Геннадий
(4), -- Иван
(5); -- Мария

-- заполняем таблицу orders_products заказ Геннадия
INSERT INTO
orders_products(order_id, product_id, total)
VALUES
(1, 3, 1),
(1, 6, 2),
(1, 7, 4);

-- заполняем таблицу orders_products заказ Ивана
INSERT INTO
orders_products(order_id, product_id, total)
VALUES
(4, 4, 6);

-- заполняем таблицу orders_products заказ Маши
INSERT INTO
orders_products(order_id, product_id, total)
VALUES
(5, 1, 1),
(5, 5, 1);

-- Решение
SELECT 
	u.id AS user_id, u.name,
	o.id AS order_id
FROM 
	users AS u
RIGHT JOIN
	orders AS o 
ON
	u.id = o.user_id;
	
-- 2) Задание
SELECT 
	pr.id, pr.name, pr.price,
	cat.id AS cat_id,
	cat.name AS catalog
FROM
	products AS pr
JOIN
	catalogs AS cat
ON 
	pr.catalog_id = cat.id;