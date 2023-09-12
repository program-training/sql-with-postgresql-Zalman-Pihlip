-- 1
SELECT product_id, product_name, category_id
FROM Products 
WHERE unit_price < 50
SELECT * FROM Customers
-- 2
SELECT contact_name FROM Customers 
WHERE country = 'Germany'
SELECT * FROM Orders 
-- 3
SELECT * FROM Orders 
WHERE customer_id = 'ALFKI'
-- 4
SELECT SUM(od.unit_price * (1 - od.discount) * od.quantity) AS total_price, Customers.contact_name
FROM Order_details od 
JOIN Orders o ON od.order_id = o.order_id
JOIN Customers  ON o.customer_id = Customers.customer_id
GROUP BY Customers.contact_name;
-- 5
SELECT * FROM Products
ORDER BY unit_price DESC LIMIT(5)
-- 6
SELECT * FROM Employees
SELECT * FROM Employees
WHERE birth_date < DATE('1960-01-01')
-- 7
SELECT * FROM Products
WHERE units_in_stock = 0
-- 8
SELECT AVG(unit_price) as avg_price FROM Products 
-- 9
SELECT product_id, SUM(unit_price * quantity * (1 - discount)) as profit 
FROM Order_details
WHERE product_id = 7
GROUP BY product_id
SELECT * FROM Order_details
-- 10 
SELECT COUNT(category_id), category_id FROM Products
GROUP BY category_id
-- 11
SELECT * FROM Products
WHERE discontinued = 1
-- 12
SELECT  COUNT(order_date) FROM Orders 
WHERE EXTRACT(YEAR FROM order_date) >= 1997;
-- 13
SELECT * FROM Customers
WHERE contact_title IN('CEO', 'Owner')
-- 14
SELECT * FROM Products
ORDER BY unit_price DESC LIMIT(1)
-- 15
SELECT AVG(CURRENT_DATE - DATE(birth_date))/365 FROM Employees
-- 16
SELECT * FROM Customers
WHERE phone LIKE '%123%'
-- 17
SELECT * FROM Products 
WHERE units_in_stock < 10 AND discontinued = 0
-- 18
SELECT MAX(unit_price) AS LowestPrice , 
MIN(unit_price) AS HighestPrice FROM Products
-- 19
SELECT * FROM Orders
WHERE order_date = DATE('05-05-1997');
-- 20
SELECT product_name, quantity_per_unit FROM Products
-- 21
SELECT product_name, unit_price, product_id FROM Products 
WHERE unit_price > (SELECT AVG(unit_price) FROM Products)
-- 22
SELECT COUNT(city), city FROM Employees
GROUP BY city