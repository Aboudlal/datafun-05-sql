📘 DataFun-05-SQL

This project demonstrates how to initialize and work with an SQLite
database using SQL scripts, CSV data files, and optional Python scripts.
It is part of the Data Analytics Fundamentals course.

------------------------------------------------------------------------

🔗 Repository

👉 GitHub Repo – datafun-05-sql

------------------------------------------------------------------------

📂 Project Structure

    datafun-05-sql/
    │── data/                
    │   ├── authors.csv      # dataset of authors
    │   ├── books.csv        # dataset of books
    │
    │── sql/                 
    │   ├── initialize.sql   # schema creation & seed data
    │   ├── queries.sql      # example queries
    │
    │── project.sqlite3      # SQLite database file
    │── create_database.py   # Python script to create the database
    │── README.md            # project documentation
    │── requirements.txt     # dependencies
    │── .gitignore           # ignored files
    │── .venv/               # virtual environment (ignored in Git)

------------------------------------------------------------------------

⚙️ Step 1 – Initialize the Database

1.  Open sql/initialize.sql in VS Code.
2.  Use the SQLite extension (alexcvzz) and connect to project.sqlite3.
3.  Run all statements in initialize.sql:
    -   Drops existing tables if they exist
    -   Creates authors and books tables
    -   Inserts sample data
4.  Verify the tables exist:

    SELECT name FROM sqlite_master WHERE type='table';

✅ You should see:

    authors
    books

------------------------------------------------------------------------

📊 Step 2 – Example Queries

Stored in sql/queries.sql.

    -- View all authors
    SELECT * FROM authors;

    -- View all books
    SELECT * FROM books;

    -- Join authors with books
    SELECT a.first, a.last, b.title
    FROM authors AS a
    INNER JOIN books AS b ON a.author_id = b.author_id;

    -- Count books per year
    SELECT year_published, COUNT(*) AS total_books
    FROM books
    GROUP BY year_published
    ORDER BY year_published;

------------------------------------------------------------------------

🐍 Step 3 – Python Scripts

create_database.py

Initializes the database file (project.sqlite3).
If the file doesn’t exist, it creates it.

Usage:

    python create_database.py

Expected output:

    Database created successfully.

------------------------------------------------------------------------

🛠️ Tools Used

-   SQLite Viewer (alexcvzz) in VS Code (recommended)
-   Python 3 with sqlite3 and pandas libraries
-   CSV files for initial datasets

------------------------------------------------------------------------


💡 Notes

-   Standalone tables (like authors) must be inserted first because they
    do not depend on any other table.
-   books depends on authors (author_id foreign key).
-   GUIDs (unique IDs) must be stored as TEXT in SQLite because they are
    alphanumeric.

------------------------------------------------------------------------

✅ Git Commands

To update your repo with changes:

    git add .
    git commit -m "Initialize database, add SQL scripts, update README"
    git push origin main
