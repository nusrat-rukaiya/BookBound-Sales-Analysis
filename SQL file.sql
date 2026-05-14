-- ============================================
-- BOOKBOUND SALES ANALYSIS
-- SQL Portfolio Project
-- Author: Nusrat Ruakiya
-- ============================================

-- Total Revenue ,Number of Orders and Unique Customers

SELECT
    SUM(total_amount) AS revenue,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM orders;

| Revenue | Total Orders | Total Customers |
| ------- | ------------ | --------------- |
| 75628.66| 500          | 307             |


-- Total Stock by Genre
SELECT 
    genre,
    SUM(stock) AS total_stock
FROM books
GROUP BY genre;

| Genre          | Total Stock |
| -------------- | ----------- |
| Romance        | 3540        |
| Biography      | 3149        |
| Mystery        | 3932        |
| Fantasy        | 3764        |
| Fiction        | 3049        |
| Non-Fiction    | 3574        |
| Science Fiction| 4048        |

-- Book with the lowest and highest stock
SELECT title, stock
FROM books
WHERE stock IN (
    (SELECT MIN(stock) FROM books),
    (SELECT MAX(stock) FROM books)
);

| Title                                         | Stock |
|-----------------------------------------------|-------|
| "Configurable modular throughput"             | 100   |
| "Quality-focused multi-tasking challenge"     | 100   |
| "Synergistic dedicated concept"               | 100   |
| "Networked systemic implementation"           | 0     |
| "Robust eco-centric capacity"                 | 0     |
| "Business-focused real-time benchmark"        | 0     |
| "Object-based eco-centric challenge"          | 0     |
| "Ergonomic foreground Graphic Interface"      | 100   |
| "Customer-focused tertiary methodology"       | 100   |
| "Team-oriented bandwidth-monitored project"   | 100   |
| "Diverse responsive focus group"              | 100   |
| "Future-proofed heuristic function"           | 0     |
| "Stand-alone zero administration emulation"   | 100   |

-- Total number of books sold for each genre.
SELECT 
    b.genre,
    SUM(o.quantity) AS total_books_sold
FROM books AS b
JOIN orders AS o
    ON b.book_id = o.book_id
GROUP BY b.genre
ORDER BY total_books_sold DESC;

| Genre             | Total Books Sold|
| ----------------- | ----------------|
| Mystery           | 504             |
| Science Fiction   | 447             |
| Fantasy           | 446             |
| Romance           | 439             |
| Non-Fiction       | 351             |
| Biography         | 285             |
| Fiction           | 225             |

--The book that sold the most along with its author.

SELECT 
    'Top Book' AS type,
    b.title AS name,
    b.author,
    SUM(o.quantity) AS total_sold
FROM books b
JOIN orders o
    ON b.book_id = o.book_id
GROUP BY b.book_id, b.title, b.author
ORDER BY total_sold DESC
LIMIT 1;

| Type     | Name                                   | Author              | Total Sold |
| -------- | -------------------------------------- | ------------------- | ---------- |
| Top Book | "Realigned multi-tasking installation" | "Patrick Contreras" | 150        |      


--Books received the highest number of orders

SELECT 
    b.book_id,
    b.title,
    COUNT(o.order_id) AS counted_order
FROM orders AS o
JOIN books AS b
    ON o.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY counted_order DESC LIMIT 7;

| Book ID | Title                                             | Counted Order |
| ------- | --------------------------------------------------| ------------- |   
| 73      | Realigned multi-tasking installation              | 4             |
| 31      | Implemented encompassing conglomeration           | 4             |
| 491     | Pre-emptive intangible adapter                    | 4             |
| 120     | Integrated secondary access                       | 4             |
| 273     | Devolved zero administration process improvement  | 4             |
| 88      | Robust tangible hardware                          | 4             |
| 333     | Advanced responsive extranet                      | 4             |



--The customer who spent the most on orders
SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 1;

| Customer ID | Name              | Total Spent |
| ----------- | ----------------- | ----------- |
| 457         | Kim Turner        | 1398.90     |

