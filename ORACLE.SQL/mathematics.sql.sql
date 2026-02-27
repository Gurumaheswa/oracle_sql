--1. Find sine value of an angle.

SELECT sin(30 * (ACOS(-1)/180)) from orders;

-- 2.Find cosine value of an angle.

select cos(60 * (ACOS(-1)/180)) from orders;

-- 3.Find tangent value.

select tan(45 * (ACOS(-1)/180)) from orders;

-- 4.Convert degrees to radians.

select 90 * (ACOS(-1)/180) from orders;

-- 5.Find logarithm (base 10) of a number.

select log(10,100) from dual;

-- 6.Find natural log of a number.

select LN(10) from dual;

-- 7.Find square of a number.

select power(5,2) from dual;

-- 8.Find cube of a number.

select power(5,3) from dual;

-- 9.Calculate factorial of a number.

select fact(5) from dual;

-- 10.Find greatest value among three numbers.

SELECT GREATEST(10,20,30) from orders;

-- 11.Find least value among three numbers.

SELECT LEAST(20,30,10) from dual;

-- 12.Calculate variance of sales.

select VARIANCE(quantity * unit_price) from orders;

-- 13.Calculate standard deviation of sales.

select stddev(quantity * unit_price) From orders;

-- 14.Find average deviation.

SELECT AVG(unit_price * quantity) from orders;