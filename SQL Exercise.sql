-- Exercise. An overview of sales in 2004. Breakdown of data by product, country, and city including the sales value, cost of sales and net profit. 

SELECT t1.orderdate, t1.ordernumber, quantityOrdered, priceEach, productName, productline, buyprice, country, city
FROM orders t1
INNER JOIN orderdetails t2
ON t1.ordernumber = t2.ordernumber
INNER JOIN products t3
ON t2.productCode = t3.productcode
INNER JOIN customers t4
ON t1.customernumber = t4.customernumber
WHERE year(orderDate) = 2004