CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);


-- 1 Insert a single row
INSERT INTO Orders2 VALUES (1,'Ravi','Laptop',50000,1);

-- 2 Insert another row
INSERT INTO Orders2 VALUES (2,'Anjali','Mobile',20000,2);

-- 3 Insert multiple rows
INSERT INTO Orders2 VALUES
(3,'Kiran','Headphones',2000,3),
(4,'Sneha','Tablet',15000,1),
(5,'Arjun','Mouse',500,4);


-- 4 Update price of a product
UPDATE Orders2
SET price = 48000
WHERE order_id = 1;
select * from orders

-- 5 Update quantity
UPDATE Orders2
SET quantity = 5
WHERE product_name = 'Mouse';

-- 6 Update multiple columns
UPDATE Orders2
SET price = 21000, quantity = 1
WHERE order_id = 2;

-- 7 Delete a specific order
DELETE FROM Orders2
WHERE order_id = 5;

-- 8 Delete orders with price less than 1000
DELETE FROM Orders2
WHERE price < 1000;

-- 10 Delete all rows
DELETE FROM Orders2;