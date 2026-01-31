/* =========================================================
   Task 3: SQL Basics – Filtering, Sorting & Aggregations
   Dataset: Chinook Database
   Database: SQLite
   ========================================================= */


/* -------------------------------
   1. View sample data
-------------------------------- */
SELECT * FROM Invoice LIMIT 5;
SELECT * FROM Customer LIMIT 5;


/* -------------------------------
   2. Filtering using WHERE
-------------------------------- */

-- Invoices with total greater than 10
SELECT InvoiceId, CustomerId, Total
FROM Invoice
WHERE Total > 10;

-- Customers from USA
SELECT FirstName, LastName, Country
FROM Customer
WHERE Country = 'USA';


/* -------------------------------
   3. Sorting using ORDER BY
-------------------------------- */

-- Top 10 highest invoice totals
SELECT InvoiceId, Total
FROM Invoice
ORDER BY Total DESC
LIMIT 10;

-- Customers sorted alphabetically
SELECT FirstName, LastName
FROM Customer
ORDER BY FirstName ASC;


/* -------------------------------
   4. Aggregation functions
-------------------------------- */

-- Total sales
SELECT SUM(Total) AS Total_Sales
FROM Invoice;

-- Average invoice value
SELECT AVG(Total) AS Average_Invoice_Value
FROM Invoice;

-- Total number of invoices
SELECT COUNT(*) AS Invoice_Count
FROM Invoice;


/* -------------------------------
   5. GROUP BY (summary reports)
-------------------------------- */

-- Country-wise total sales
SELECT 
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS Total_Sales
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total_Sales DESC;

-- Number of customers per country
SELECT 
    Country,
    COUNT(*) AS Customer_Count
FROM Customer
GROUP BY Country;


/* -------------------------------
   6. HAVING clause
-------------------------------- */

-- Countries with sales greater than 100
SELECT 
    BillingCountry AS Country,
    SUM(Total) AS Total_Sales
FROM Invoice
GROUP BY BillingCountry
HAVING Total_Sales > 100;


/* -------------------------------
   7. BETWEEN (date filtering)
-------------------------------- */

-- Invoices from year 2012
SELECT InvoiceId, InvoiceDate, Total
FROM Invoice
WHERE InvoiceDate BETWEEN '2012-01-01' AND '2012-12-31';


/* -------------------------------
   8. LIKE (pattern matching)
-------------------------------- */

-- Customers whose first name starts with 'A'
SELECT FirstName, LastName
FROM Customer
WHERE FirstName LIKE 'A%';

-- Customers with Gmail accounts
SELECT Email
FROM Customer
WHERE Email LIKE '%gmail%';


/* -------------------------------
   9. EXPORT THIS QUERY AS CSV
-------------------------------- */

-- Country-wise sales summary (export as sales_summary.csv)
SELECT 
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS Total_Sales
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total_Sales DESC;

