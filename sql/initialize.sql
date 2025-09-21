-- Drop and create tables (idempotent)
DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
    author_id TEXT PRIMARY KEY,   
    first     TEXT NOT NULL,
    last      TEXT NOT NULL,
    birth_year INTEGER, 
    nationality TEXT
);

DROP TABLE IF EXISTS books;
CREATE TABLE books (
    book_id        TEXT PRIMARY KEY,  
    author_id      TEXT NOT NULL,
    title          TEXT NOT NULL,
    year_published INTEGER,
    language TEXT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- (Optional) seed a few rows so queries work before CSV import
INSERT INTO authors (author_id, first, last) VALUES
('a001','Jane','Austen'),
('a002','Mark','Twain');

INSERT INTO books (book_id, author_id, title, year_published) VALUES
('b001','a001','Pride and Prejudice',1813),
('b002','a002','Adventures of Huckleberry Finn',1884);
