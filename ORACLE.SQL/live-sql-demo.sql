CREATE TABLE ORDERS(
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Store_Location VARCHAR(100)
);

INSERT INTO ORDERS(ORDER_ID,ORDER_DATE,CUSTOMER_ID,CUSTOMER_NAME,PRODUCT_CATEGORY,PRODUCT_NAME,QUANTITY,UNIT_PRICE,PAYMENT_MODE,STORE_LOCATION)
VALUES
    (1001, TO_DATE('2026-02-01','YYYY-MM-DD'), 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore'),
    (1002, TO_DATE('2026-02-02','YYYY-MM-DD'), 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad'),
    (1003, TO_DATE('2026-02-03','YYYY-MM-DD'), 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai'),
    (1004, TO_DATE('2026-02-04','YYYY-MM-DD'), 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai'),
    (1005, TO_DATE('2026-02-05','YYYY-MM-DD'), 'C005', 'Kiran Rao', 'Home', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore'),
    (1006, TO_DATE('2026-02-06','YYYY-MM-DD'), 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi'),
    (1007, TO_DATE('2026-02-07','YYYY-MM-DD'), 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata'),
    (1008, TO_DATE('2026-02-08','YYYY-MM-DD'), 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi'),
    (1009, TO_DATE('2026-02-09','YYYY-MM-DD'), 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad'),
    (1010, TO_DATE('2026-02-10','YYYY-MM-DD'), 'C010', 'Meena Iyer', 'Home', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');

select * from orders;

-- ALTER AND UPDATE TABLE


ALTER TABLE ORDERS
ADD Phone_Number VARCHAR2(13)
COMMIT;

UPDATE orders
SET phone_number =
CASE order_id
    WHEN 1001 THEN '9849373924'
    WHEN 1002 THEN '9843456754'
    WHEN 1003 THEN '6348454236'
    WHEN 1004 THEN '7834767458'
    WHEN 1005 THEN '6347856389'
    WHEN 1006 THEN '9476569567'
    WHEN 1007 THEN '9849373924'
    WHEN 1008 THEN '8456457364'
    WHEN 1009 THEN '9237927334'
    WHEN 1010 THEN '9232836945'
    END;
    SELECT PHONE_NUMBER FROM ORDERS;

--    ALTER AND UPDATE TABLE
    ALTER TABLE ORDERS
    ADD EMAIL_ID VARCHAR2(50)
    COMMIT;

    UPDATE ORDERS
    SET EMAIL_ID =
    CASE ORDER_ID
        WHEN 1001 THEN 'charanshama@gmail.com'
        WHEN 1002 THEN 'rameshumae@gmail.com'
        WHEN 1003 THEN 'priyasharma086@gmail.com'
        WHEN 1004 THEN 'google012.enm@gmail.com'
        WHEN 1005 THEN 'raleuk4444@gmail.com'
        WHEN 1006 THEN 'gurumaheswar@gmail.com'
        WHEN 1007 THEN 'kiransing@gmail.com'
        WHEN 1008 THEN 'rahul.kl@gmail.com'
        WHEN 1009 THEN 'aklrgh@gmail.com'
        WHEN 1010 THEN 'kasnik@gmail.com'
        END;
--       ALTER TABLE orders
-- DROP COLUMN email_id;
SELECT * FROM ORDERS;