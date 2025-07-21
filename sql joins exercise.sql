-- SQL Joins Excercise. Joining tables using INNER and LEFT joins. 

SELECT  t2.contactFirstName, t2.contactLastName, t1.orderDate, t1.status
FROM orders T1
INNER JOIN customers T2
ON T1.customerNumber = T2.customerNumber;

SELECT t1.contactFirstName, t1.contactLastName, t2.orderDate, t2.orderNumber
FROM customers T1
LEFT JOIN orders T2
ON T1.customerNumber = T2.customerNumber
WHERE T2.orderNumber IS NOT NULL