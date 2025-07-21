-- SQL UNION excersise 

SELECT *
FROM customers;

SELECT *
FROM employees;

SELECT 'Customer' AS type, contactFirstName AS firstname, contactLastName AS lastname
FROM customers

UNION ALL

SELECT 'employee' AS type,firstname, lastname
FROM employees