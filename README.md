# SQL Practice Repository

Welcome to my SQL Practice Repository! This is a structured collection of SQL queries I've written while building proficiency in database operations. Each query is commented for clarity and organized by difficulty to track my learning progress.

✨ **Goal**: Write clean, efficient, and production-ready SQL — one query at a time.


---

## 🗂️ What's Inside

### 🔹 Basic (`/basic`)
| File | Concept | Example Query |
|------|---------|--------------|
| `select_basics.sql` | SELECT, WHERE, LIMIT | `SELECT name FROM users WHERE age > 18` |
| `joins_intro.sql` | INNER JOIN, aliases | `SELECT o.id, c.name FROM orders o JOIN customers c...` |
| `aggregation.sql` | COUNT, SUM, GROUP BY | `SELECT department, AVG(salary) FROM employees GROUP BY...` |

### 🔹 Intermediate (`/intermediate`)
| File | Concept | Example Query |
|------|---------|--------------|
| `subqueries.sql` | Nested SELECT, IN/EXISTS | `SELECT name FROM products WHERE price > (SELECT AVG(price)...)` |
| `window_functions.sql` | ROW_NUMBER(), RANK() | `SELECT *, RANK() OVER (ORDER BY sales DESC) FROM...` |

### 🔹 Advanced (`/advanced`)
| File | Concept | Example Query |
|------|---------|--------------|
| `cte_optimization.sql` | Common Table Expressions | `WITH monthly_sales AS (...) SELECT * FROM monthly_sales...` |
| `indexing_demo.sql` | EXPLAIN, index creation | `CREATE INDEX idx_email ON users(email);` |
---

## 📌 Key Features
- Clean, well-commented SQL files for clarity
- Organized by difficulty for easy navigation
- Professional structure for recruiters and portfolio
- Includes examples of multiple SQL concepts and real-world query patterns

---

## ⚙️ How to Run These Queries

### Option 1: MySQL (Recommended)
```bash
# 1. Create test database
mysql -u root -p
CREATE DATABASE practice_db;
USE practice_db;

# 2. Load sample data (if provided)
source basic/sample_data.sql

# 3. Run a query file
source basic/select_basics.sql

