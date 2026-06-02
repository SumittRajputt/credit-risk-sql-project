-- =========================================
-- CREDIT RISK ANALYSIS PROJECT (SQL)
-- =========================================


-- =========================
-- 1. BASIC ANALYSIS
-- =========================

-- Question 1:
-- Find total number of customers in the dataset
SELECT COUNT(*) AS total_customers
FROM customers;


-- Question 2:
-- Find the average credit score of customers
SELECT AVG(credit_score) AS avg_credit_score
FROM customers;


-- Question 3:
-- Find customers who have missed more than 2 payments
SELECT customer_id, credit_score, missed_payments
FROM customers
WHERE missed_payments > 2;


-- Question 4:
-- Count number of customers in each credit score category
SELECT 
  CASE
    WHEN credit_score < 600 THEN 'Low'
    WHEN credit_score BETWEEN 600 AND 700 THEN 'Medium'
    ELSE 'High'
  END AS risk_category,
  COUNT(*) AS total_customers
FROM customers
GROUP BY risk_category;


-- Question 5:
-- Find customer_id, credit_score, and transaction_amount by joining both tables
SELECT c.customer_id, c.credit_score, t.transaction_amount 
FROM customers AS c
INNER JOIN transactions AS t 
ON c.customer_id = t.customer_id;


-- Question 6:
-- Find average transaction amount for each risk category
SELECT 
  CASE
    WHEN c.credit_score < 600 THEN 'Low'
    WHEN c.credit_score BETWEEN 600 AND 700 THEN 'Medium'
    ELSE 'High'
  END AS risk_category,
  ROUND(AVG(t.transaction_amount),2) AS avg_transaction_amount
FROM customers AS c
JOIN transactions AS t
ON c.customer_id = t.customer_id
GROUP BY risk_category;


-- Question 7:
-- Find top 5 customers based on total transaction amount
SELECT 
  c.customer_id, 
  SUM(t.transaction_amount) AS total_spent
FROM customers AS c 
JOIN transactions AS t 
ON c.customer_id = t.customer_id
GROUP BY c.customer_id 
ORDER BY total_spent DESC 
LIMIT 5;


-- Question 8:
--Find total transaction_amount for each city.
SELECT city,
       SUM(transaction_amount) AS total_transaction_per_city 
FROM transactions
GROUP BY city 
ORDER BY total_transaction_per_city DESC;


-- Question 9:
-- Find the number of transactions for each merchant category
-- This helps understand which categories have the highest transaction volume
SELECT 
  merchant_category, 
  COUNT(*) AS total_transactions
FROM transactions
GROUP BY merchant_category
ORDER BY total_transactions DESC;


-- Question 10:
-- Find top 3 cities with highest average transaction amount
-- This helps identify cities with higher spending behavior
SELECT 
  city, 
  ROUND(AVG(transaction_amount),2) AS avg_transaction_amount
FROM transactions
GROUP BY city 
ORDER BY avg_transaction_amount DESC 
LIMIT 3;










































