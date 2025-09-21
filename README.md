DataFun-05-SQL

Link to repo: https://github.com/Aboudlal/datafun-05-sql

------------------------------------------------------------------------

📂 Project Structure

    datafun-05-sql/
    │── data/                # CSV data files
    │   ├── authors.csv
    │   ├── books.csv
    │
    │── sql/                 # SQL scripts
    │   ├── initialize.sql   # schema creation & seed data
    │   ├── queries.sql      # example queries
    │
    │── project.sqlite3      # SQLite database file
    │── README.md            # project documentation
    │── requirements.txt     # dependencies
    │── .gitignore           # ignored files
    │── .venv/               # virtual environment (ignored in Git)

------------------------------------------------------------------------

⚙️ How to Initialize the Database

1.  Open sql/initialize.sql in VS Code (with SQLite extension
    installed).
2.  Select the project.sqlite3 database as the target in the SQLite
    extension.
3.  Run the script (initialize.sql) — it will:
    -   Drop tables if they already exist.
    -   Create authors and books tables with correct data types.
    -   Insert sample rows for testing.
4.  Verify that the tables exist by running:

    SELECT name FROM sqlite_master WHERE type='table';

✅ You should see: authors, books

------------------------------------------------------------------------

📊 Example Queries

Example Queries in sql/queries.sql

    -- View all authors
    SELECT * FROM authors;

    -- View all books
    SELECT * FROM books;

    -- Author full name + book title
    SELECT a.first, a.last, b.title
    FROM authors AS a
    INNER JOIN books AS b ON a.author_id = b.author_id;

    -- Count books per year
    SELECT year_published, COUNT(*) AS total_books
    FROM books
    GROUP BY year_published
    ORDER BY year_published;

------------------------------------------------------------------------

🛠️ Tools & Extensions

-   VS Code with SQLite Viewer extension (alexcvzz).
-   SQLite database file (project.sqlite3).
-   CSV files (authors.csv, books.csv).

------------------------------------------------------------------------

📸 Screenshots to Include in Submission

-   ✅ Project files in VS Code.
-   ✅ Example query results (authors, books, join, group by).
-   ✅ Database tables shown in SQLite Viewer.

------------------------------------------------------------------------

💡 Notes

-   Standalone tables (like authors) must be inserted first because they
    don’t depend on other tables.
-   books depends on authors (via author_id foreign key).
-   GUIDs or IDs should be stored as TEXT in SQLite since they are
    alphanumeric.


