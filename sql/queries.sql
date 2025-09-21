-- All authors and books
SELECT * FROM authors;

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
