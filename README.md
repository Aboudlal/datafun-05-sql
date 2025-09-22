DataFun-05-SQL

This project is an introduction to databases and SQL using SQLite.

---

## 🔗 Repository Link

https://github.com/Aboudlal/datafun-05-sql

------------------------------------------------------------------------

📂 Project Structure

datafun-05-sql/
│── data/
│ ├── authors.csv
│ ├── books.csv
│
│── sql/
│ ├── initialize.sql ← schema creation & seed data
│ ├── queries.sql ← example queries
│
│── project.sqlite3 ← SQLite database file
│── README.md
│── requirements.txt
│── .gitignore
│── .venv/ ← virtual environment (ignored in Git)
│── create_database.py




---

## ⚙️ How to Initialize the Database

### `create_database.py`
This script initializes the SQLite database file (`project.sqlite3`).  
It connects to the database, and if the file does not already exist, it creates it.  

1. Open `sql/initialize.sql` in VS Code (with SQLite extension installed).  
2. Select the `project.sqlite3` database as the target in the SQLite extension.  
3. Run the script (`initialize.sql`):  
   - Drops tables if they already exist.  
   - Creates `authors` and `books` tables with correct data types.  
   - Inserts sample rows for testing.  

4. Verify that the tables exist by running:

   ```sql
   SELECT name FROM sqlite_master WHERE type='table';
You should see:

nginx
Copy code
authors
books
📊 Example Queries in sql/queries.sql
SELECT * FROM authors; — view all authors

SELECT * FROM books; — view all books

Join authors with their books:

sql
Copy code
SELECT a.first, a.last, b.title
FROM authors AS a
INNER JOIN books AS b
  ON a.author_id = b.author_id;
Count books per year:

sql
Copy code
SELECT year_published, COUNT(*) AS total_books
FROM books
GROUP BY year_published
ORDER BY year_published;
🚀 Using the Project
Make sure you have Python and pandas installed (see requirements.txt).

If you want to import the full CSV data (beyond sample rows), you can use a Python loader script.

❓ Why insert authors first?
Because books table has a foreign key referencing authors.author_id.
So authors (the parent table) must exist and have its IDs before adding rows in books that point to them.

🖼️ Tools & Screenshots
SQLite Viewer extension by alexcvzz in VS Code is used to view and run SQL queries.

