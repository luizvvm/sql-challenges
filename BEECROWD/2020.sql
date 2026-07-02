SELECT name, orders.id
FROM customers INNER JOIN orders
ON customers.id = id_customers
WHERE orders_date < '2016-06-30';