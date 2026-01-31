# Task 3: SQL Basics – Filtering, Sorting & Aggregations

## 📌 Objective
The goal of this task is to practice basic SQL operations such as filtering, sorting, and aggregation using a real-world dataset. This task helps in understanding how to extract meaningful insights from data using SQL queries.

---

## 🛠 Tools Used
- SQLite
- SQLite Online / DB Browser for SQLite

---

## 📊 Dataset
**Chinook Database**

The Chinook database represents a digital media store and contains information about:
- Customers
- Invoices (sales)
- Tracks and genres

For this task, mainly the following tables were used:
- `Invoice`
- `Customer`

---

## 🧪 SQL Operations Performed

### 1. Basic Data Exploration
- Viewed sample records from tables using `SELECT *`
- Verified data structure and columns

### 2. Filtering Data (`WHERE`)
- Filtered invoices with total greater than a specific amount
- Filtered customers based on country

### 3. Sorting Data (`ORDER BY`)
- Sorted invoices by total sales (descending)
- Sorted customer names alphabetically

### 4. Aggregation Functions
- Calculated total sales using `SUM()`
- Calculated average invoice value using `AVG()`
- Counted total number of invoices using `COUNT()`

### 5. Grouping Data (`GROUP BY`)
- Calculated country-wise total sales
- Counted number of customers per country

### 6. Filtering Aggregated Results (`HAVING`)
- Displayed only countries with total sales greater than 100

### 7. Date Range Filtering (`BETWEEN`)
- Filtered invoices within a specific year

### 8. Pattern Matching (`LIKE`)
- Found customers whose names start with a specific letter
- Filtered email addresses containing specific text

---

## 📤 Exported Output
- **sales_summary.csv**  
  Contains country-wise total sales generated using `GROUP BY` and `SUM()` on the Invoice table.

---

## 📁 Files Included
- `queries_task3.sql` – Contains all SQL queries used in this task
- `sales_summary.csv` – Exported CSV file of country-wise sales summary
- `README.md` – Documentation of the task and queries performed

---

## ✅ Conclusion
This task provided hands-on experience with essential SQL concepts such as filtering, sorting, aggregation, and data summarization. These skills are fundamental for data analysis and reporting tasks in real-world projects.
