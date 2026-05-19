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
| Top Book | "Realigned multi-tasking installation" | "Patrick Contreras" | 28         |      


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

--Top 3 Best-Selling Books per Genre
WITH GenreRanking AS (
    SELECT 
        b.genre,
        b.title,
        SUM(o.quantity) AS total_sold,
        DENSE_RANK() OVER (PARTITION BY b.genre ORDER BY SUM(o.quantity) DESC) AS rank
    FROM books b
    JOIN orders o ON b.book_id = o.book_id
    GROUP BY b.genre, b.title
)
SELECT * FROM GenreRanking WHERE rank <= 3;

| Genre           | Title                                            | Total Sold | Rank |
|-----------------|--------------------------------------------------|------------|------|
| Biography       | Advanced didactic time-frame                     | 24         | 1    |
| Biography       | Balanced dynamic project                         | 16         | 2    |
| Biography       | Persevering tertiary product                     | 16         | 2    |
| Biography       | Robust attitude-oriented attitude                | 15         | 3    |
| Fantasy         | Synergized intangible methodology                | 23         | 1    |
| Fantasy         | Pre-emptive intangible adapter                   | 20         | 2    |
| Fantasy         | Grass-roots systematic moderator                 | 19         | 3    |
| Fiction         | Implemented encompassing conglomeration          | 27         | 1    |
| Fiction         | Multi-tiered responsive parallelism              | 22         | 2    |
| Fiction         | Assimilated composite archive                    | 17         | 3    |
| Fiction         | Reverse-engineered directional conglomeration    | 17         | 3    |
| Mystery         | Realigned multi-tasking installation             | 28         | 1    |
| Mystery         | Expanded local infrastructure                    | 23         | 2    |
| Mystery         | Horizontal hybrid forecast                       | 20         | 3    |
| Non-Fiction     | Integrated secondary access                      | 23         | 1    |
| Non-Fiction     | Robust tangible hardware                         | 19         | 2    |
| Non-Fiction     | Automated client-driven open architecture        | 17         | 3    |
| Non-Fiction     | Stand-alone hybrid framework                     | 17         | 3    |
| Romance         | Devolved zero administration process improvement | 24         | 1    |
| Romance         | Cross-platform next generation website           | 21         | 2    |
| Romance         | Switchable modular moratorium                    | 21         | 2    |
| Romance         | Decentralized multi-tasking data-warehouse       | 17         | 3    |
| Science Fiction | Re-contextualized real-time Graphic Interface    | 23         | 1    |
| Science Fiction | Phased context-sensitive task-force              | 22         | 2    |
| Science Fiction | Triple-buffered neutral adapter                  | 21         | 3    |

--Running Total of Revenue per Customer
SELECT 
    customer_id,
    order_id,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_id) AS running_total
FROM orders;

/* Sample Output (First 5 rows):
| Customer ID | Order ID | Total Amount | Running Total |
| ----------- | -------- | ------------ | ------------- |   
| 2           | 347      | 16.56        | 16.56         |
| 2           | 482      | 298.06       | 314.62        |
| 6           | 47       | 148.02       | 148.02        |
| 6           | 288      | 24.04        | 172.06        |
| 7           | 110      | 10.07        | 10.07         |

... (truncated for readability)
*/