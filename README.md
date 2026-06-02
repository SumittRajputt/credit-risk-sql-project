# 📊 Credit Risk Analysis using SQL

## 🔍 Project Overview

This project focuses on analyzing customer credit data and transaction behavior using SQL. The goal is to identify high-risk customers, understand spending patterns, and generate insights that can support decision-making in financial services.

---

## 📁 Dataset Description

### 🧾 Customers Dataset

* customer_id
* age
* income
* credit_score
* missed_payments

### 💳 Transactions Dataset

* transaction_id
* customer_id
* transaction_amount
* transaction_date
* merchant_category
* city

---

## 🛠️ Tools Used

* PostgreSQL (pgAdmin)
* SQL (Joins, Aggregations, CASE statements)

---

## 📌 Key Analysis Performed

### 🔹 Basic Analysis

* Total number of customers
* Average credit score

### 🔹 Risk Analysis

* Identified customers with high missed payments
* Categorized customers into Low, Medium, and High risk using CASE statements

### 🔹 Transaction Analysis

* Total spending per city
* Number of transactions per category
* Top customers based on total spending

### 🔹 Advanced Analysis

* Average transaction amount by risk category
* Top cities with highest average spending

---

## 📊 Key Insights

* Customers with lower credit scores tend to have higher missed payments
* High-risk customers show different spending behavior compared to low-risk customers
* Certain cities contribute significantly more to overall transaction volume
* Merchant categories like grocery and electronics have higher transaction counts
* A small number of customers contribute to a large portion of total spending

---

## 📂 Project Structure

```
credit-risk-sql-project/
│
├── datasets/
│   ├── customers.csv
│   └── transactions.csv
│
├── sql/
│   └── credit_risk_analysis.sql
│
└── README.md
```

---

## 🚀 How to Run

1. Create a database in PostgreSQL
2. Create tables for customers and transactions
3. Import CSV datasets
4. Run queries from `credit_risk_analysis.sql`

---

## 🎯 Conclusion

This project demonstrates strong SQL skills including data cleaning, joining multiple datasets, performing aggregations, and deriving business insights. It simulates real-world financial risk analysis and helps in understanding customer behavior for better decision-making.

---

## 📌 Author

**Sumit Kumar**
Data Analyst | SQL | Python | Power BI
