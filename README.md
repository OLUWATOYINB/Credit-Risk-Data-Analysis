# Bank Credit Risk & Loan Default Analysis (SQL)

## Project Overview
This project simulates an institutional credit risk assessment for a retail bank. As a Junior Data Analyst, I designed a relational database to track customer demographics and loan metrics, identified critical default patterns, and automated a risk-tier classification system using advanced SQL queries.

## Key Business Insights Discovered
* **Portfolio Risk Vulnerability:** The bank has allocated **23.36%** of its total capital (\$25,000) to loans that have been officially **Charged Off (Defaulted)**.
* **Debt Load Correlation:** Data filtering revealed that 100% of the bank's defaults occurred among borrowers with a high **Debt-to-Income (DTI) ratio** of 40% or greater, highlighting an immediate need for stricter lending thresholds.

## Technical Skills Demonstrated
* **Database Schema Design:** Engineered tables with strict primary/foreign key relationships (`CREATE TABLE`).
* **Data Aggregation & Subqueries:** Structured mathematical portfolio breakdowns utilizing `SUM`, `COUNT`, `ROUND`, and nested query logic.
* **Relational Data Mapping:** Bridged isolated customer profile tables and loan activity tables via complex inner `JOIN` operators.
* **Conditional Logic Automation:** Programmed a dynamic risk grading matrix using `CASE WHEN` statements to categorize borrowers based on financial thresholds.

## How to Run the Script
1. Clone this repository.
2. Open your preferred SQL database engine (MySQL, PostgreSQL, or SQL Server).
3. Execute the `credit_risk_analysis.sql` script to automatically generate the database, insert the mock records, and render the analytics output.
# Credit-Risk-Data-Analysis
SQL database design and portfolio risk analysis for evaluating loan defaults based on Debt-to-Income (DTI) metrics.
