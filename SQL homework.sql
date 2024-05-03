--task two
SELECT product_name, units_in_stock, 
CASE
	WHEN units_in_stock >= 100 THEN 'too expensive'
	WHEN units_in_stock >= 50 AND units_in_stock < 100 THEN 'average'
	WHEN units_in_stock < 50 THEN 'low price'
END AS rezultat
FROM products


--task three
SELECT contact_name, order_id, 
CASE
	WHEN order_id IS NULL THEN 'no order'
	ELSE contact_name
END
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id


SELECT order_id
FROM orders
WHERE order_id IS NULL

--task four
SELECT first_name, last_name, 
CASE 
	 WHEN title = 'Sales Representative' THEN 'Sales Stuff'
	 ELSE title
END AS rezultat
FROM employees

