import sqlite3
from pathlib import Path

db_file = Path("project.sqlite3")

def create_database():
    conn = sqlite3.connect(db_file)
    conn.close()
    print("Database created successfully.")

if __name__ == "__main__":
    create_database()
