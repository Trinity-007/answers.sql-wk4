SHOW TABLES;
DESCRIBE payments;

-- Q1: Total payment amount for each payment date
SELECT 
    paymentDate, 
    SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Q2: Average credit limit per customer
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- Q3: Total price of products ordered
SELECT 
    productCode, 
    quantityOrdered, 
    (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

-- Q4: Highest payment amount per check number
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;

