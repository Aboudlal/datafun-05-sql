# DataFun-05-SQL

This project is an introduction to databases and SQL using SQLite.

---

## 🔗 Repository Link

https://github.com/Aboudlal/datafun-05-sql

---

## 📁 Project Structure

datafun-05-sql/
├── data/
│   ├── authors.csv
│   ├── books.csv
│
├── sql/
│   ├── initialize.sql ← Schema definition and data insertion
│   ├── queries.sql   ← Example SQL queries
│
├── project.sqlite3   ← The SQLite database file
├── README.md
├── requirements.txt
├── .gitignore
├── .venv/            ← Virtual environment (ignored by Git)
├── python create_database.py



---

---

## 🐍 Python Scripts

We also include Python scripts in the root project folder to make working with the database easier.

### `create_database.py`
This script initializes the SQLite database file (`project.sqlite3`).  
It connects to the database, and if the file does not already exist, it creates it.  

**Usage:**
```bash
python create_database.py


## ⚙️ Database Initialization

To initialize the database, follow these steps:

1.  Make sure you have a **SQLite extension** installed in VS Code.
2.  Open the `sql/initialize.sql` file.
3.  Select `project.sqlite3` as the target database in the SQLite extension.
4.  Run the script. It will:
    * Drop tables if they already exist.
    * Create the `authors` and `books` tables with the correct data types.
    * Insert sample data for testing.

To verify that the tables were created, run the following query:

```sql
SELECT name FROM sqlite_master WHERE type='table';
The result should show authors and books.

❓ Why Insert Authors First?
The books table has a foreign key (author_id) that references the authors table. To maintain data integrity, you must ensure that the "parent" table (authors) exists and contains the corresponding records before you can insert data into the "child" table (books).

📊 Example Queries
The sql/queries.sql file contains examples to help you manipulate the data:

Select all records:

SQL

SELECT * FROM authors;
SELECT * FROM books;
Join the authors and books tables:

SQL

SELECT a.first_name, a.last_name, b.title
FROM authors AS a
INNER JOIN books AS b ON a.author_id = b.author_id;
Count books published by year:

SQL

SELECT year_published, COUNT(*) AS total_books
FROM books
GROUP BY year_published
ORDER BY year_published;
🚀 Using the Project
Make sure you have Python and the required libraries (pandas, sqlite3) installed. You can install dependencies with pip install -r requirements.txt.

If you want to import data from CSV files, you can use a Python script as discussed in the course materials.

🖼️ Tools
I used the SQLite Viewer extension (developed by alexcvzz) in VS Code to view and run SQL queries.