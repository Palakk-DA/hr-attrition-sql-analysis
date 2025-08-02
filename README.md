# hr-attrition-sql-analysis
SQL-based data analysis project to explore employee attrition trends, salary comparisons, and promotions using real IBM HR dataset.

# 🧠 HR Attrition Analysis with SQL

A SQL-based data analysis project focused on employee attrition using a real-world HR dataset.

## 📊 Objective
To uncover trends related to employee attrition, salary gaps, promotions, and department-wise metrics using advanced SQL techniques like `JOIN`, `GROUP BY`, `WINDOW FUNCTIONS`, and `CTEs`.

---

## 🗃️ Dataset
- Source: [Kaggle - HR Employee Attrition Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- Loaded in: **MySQL Workbench**

---

## 💡 Key Analyses

### 1. Employee Data Exploration
- Summary stats
- Null/missing value checks
- Distinct values in key fields

### 2. Attrition Analysis
- Attrition by department, gender, job role
- Attrition by age group (📌 younger employees show higher attrition)

### 3. Promotions & Performance
- Correlation between years since last promotion and attrition
- Performance rating vs attrition

### 4. Department-wise Salary Gap
- Compare employee salary to department average
- Labelled as: `'More'`, `'Less'`, or `'Same'`

### 5. Window Functions
- Ranked employees using `DENSE_RANK()` and `PERCENT_RANK()` by income
- Partitioned results by department

---

## 🛠️ SQL Skills Demonstrated
- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`
- `CASE WHEN`, `JOIN`, `CTE`
- `WINDOW FUNCTIONS`: `RANK()`, `PERCENT_RANK()`, `DENSE_RANK()`
- Aggregations, subqueries

---

## 📎 Certificate

![SQL Certificate](./Certificate/SQL_Certificate_Simplilearn.pdf)

---

## 🖼️ Snapshots

| Attrition by Age Group | Salary Comparison | Income Ranking |
|------------------------|-------------------|----------------|
| ![](./screenshots/attrition_by_age_group.png) | ![](./screenshots/department_avg_salary.png) | ![](./screenshots/income_ranking_window_function.png) |

---

## 📁 File Overview

| File                      | Purpose                                |
|---------------------------|----------------------------------------|
| `01_data_exploration.sql` | Explore structure + nulls              |
| `02_attrition_analysis.sql`| Attrition by age, department, gender   |
| `03_promotions_analysis.sql`| Correlation with years since promotion |
| `04_salary_by_department.sql`| Compare salaries vs department avg     |
| `05_window_functions.sql`| Rank employees by salary using windows |

---

## 🧑‍💻 Author
**Palakk**, aspiring Data Analyst 🚀  
Certified in SQL by Simplilearn | Built with MySQL Workbench

---

## 📌 Contact
[LinkedIn](https://www.linkedin.com) • [Email](mailto:yourname@example.com)
