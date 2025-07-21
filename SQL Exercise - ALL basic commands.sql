-- Excercise combining all basic SQL commands. 

SELECT customername, count(orderNumber) AS orders
FROM orders t1
INNER JOIN customers t2
ON t1.customernumber = t2.customernumber
GROUP BY customername
ORDER BY orders desc
limit 1;

SELECT CUSTOMERName, min(orderdate) AS first_orderdate, max(orderdate) AS latest_orderdate
FROM orders t1
INNER JOIN customers t2
ON t1.customernumber = t2.customernumber
GROUP BY customername