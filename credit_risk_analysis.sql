-- 1. Create a database called bank_analysis
CREATE DATABASE bank_analysis;

-- 2. use database
USE bank_analysis;

-- 3. Create the Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    age INT,
    employment_years INT,
    annual_income DECIMAL(12,2),
    home_ownership VARCHAR(20) 
);

-- 4. Create the Loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),
    dti_ratio DECIMAL(4,2),  
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES 
(101, 32, 5, 45000.00, 'Rent'),
(102, 45, 12, 85000.00, 'Mortgage'),
(103, 28, 1, 30000.00, 'Rent'),
(104, 50, 20, 120000.00, 'Own'),
(105, 35, 3, 50000.00, 'Rent');

INSERT INTO loans VALUES 
(5001, 101, 15000.00, 12.50, 'Charged Off', 0.40),
(5002, 102, 30000.00, 8.50, 'Fully Paid', 0.25),
(5003, 103, 10000.00, 15.00, 'Charged Off', 0.55),
(5004, 104, 40000.00, 7.00, 'Fully Paid', 0.15),
(5005, 105, 12000.00, 11.00, 'Current', 0.30);

-- Business Goal: What is our total 
-- loan portfolio value, and what percentage of our money is lost to defaults?

SELECT 
    loan_status, 
    COUNT(*) AS total_loans, 
    SUM(loan_amount) AS total_amount_allocated,
    ROUND(SUM(loan_amount) * 100.0 / (SELECT SUM(loan_amount) FROM loans), 2) AS percentage_of_portfolio
FROM loans
GROUP BY loan_status;



SELECT * FROM loans WHERE loan_status = 'Charged Off';





SELECT 
    loan_status, 
    COUNT(*) AS total_loans, 
    SUM(loan_amount) AS total_amount_allocated,
    ROUND(SUM(loan_amount) * 100.0 / (SELECT SUM(loan_amount) FROM loans), 2) AS percentage_of_portfolio
FROM loans
GROUP BY loan_status;



SELECT 
    c.customer_id,
    c.annual_income,
    l.dti_ratio,
    CASE 
        WHEN l.dti_ratio >= 0.45 THEN 'Critical High Risk'
        WHEN l.dti_ratio BETWEEN 0.30 AND 0.44 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_classification
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id;





