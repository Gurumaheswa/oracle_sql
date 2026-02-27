--1.Extract year from Order_Date.

select EXTRACT (YEAR FROM ORDER_DATE) AS ORDERED_DATE FROM ORDERS;

--2.Extract month from Order_Date.

SELECT EXTRACT (MONTH FROM ORDER_DATE) AS OREDERD_MONTH FROM ORDERS;

--3.Extract day from Order_Date.

SELECT EXTRACT (DAY FROM ORDER_DATE) AS ORDERED_DAY FROM ORDERS;

-- 4. Find current date.

SELECT SYSDATE FROM DUAL;

--5. Find current date.

SELECT SYSDATE FROM ORDERS;

--6.Add 7 days to Order_Date.

SELECT ORDER_DATE + 7 AS NEW_DATE FROM ORDERS;

--7.Subtract 30 days from Order_Date.

SELECT ORDER_DATE - 30 AS NEW_DATE FROM ORDERS;

--8. Find difference between two dates.

SELECT LAST_DAY(ORDER_DATE) - ORDER_DATE AS DIFFERENCE_DATE FROM ORDERS;

--9.Find number of months between two dates.

SELECT MONTHS_BETWEEN(SYSDATE,ORDER_DATE) AS MONTHS_DIFFERENCE FROM ORDERS;

--10.Find last day of the month.

SELECT LAST_DAY (ORDER_DATE) FROM ORDERS;

--11.Get first day of the year.

SELECT TRUNC(ORDER_DATE,'YEAR') AS DAY_1 FROM ORDERS;

--12.Format date as 'DD-MM-YYYY'.

SELECT TO_CHAR(ORDER_DATE,'DD-MM-YYYY') AS FORMATED_DATE FROM ORDERS;

--13. Convert string to date.

SELECT TO_DATE('24-01-2005','DD-MM-YYYY') AS SET_DATE FROM DUAL;

--14.DECLAREConvert date to string.

SELECT TO_CHAR(ORDER_DATE,'YYYY-DD-MM') AS ORDERED_DATE FROM ORDERS;

--15.Find week number of the year.

SELECT TO_CHAR(ORDER_DATE,'WW') AS WEEK_NUMBER FROM ORDERS;

--16.Find day name from date.

SELECT TO_CHAR(ORDER_DATE,'DAY') AS DAY_NAME FROM ORDERS;

--17. Find quarter of the year.

SELECT TO_CHAR(ORDER_DATE,'Q') AS quarter FROM ORDERS;

--18. Calculate age from DOB.

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,TO_DATE('2005-24-01','YYYY-DD-MM'))/12) AS AGE FROM ORDERS;

-- 19.Check if date is weekend.

SELECT CASE
WHEN TO_CHAR(ORDER_DATE,'D') IN (1,7) THEN 'WEEKEND'
ELSE 'WEEKDAY' END AS DAY_TYPE 
FROM ORDERS;    

-- 20.Find next Monday after a given date.

SELECT ORDER_DATE,
    NEXT_DAY(ORDER_DATE,'MONDAY') AS NEXT_MONDAY 
FROM ORDERS;