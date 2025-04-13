-- 1. Get all books with their authors
SELECT b.book_id, b.book_title, a.author_name
FROM books b
JOIN books_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
ORDER BY b.book_title;

-- 2. Find customers who made more than 1 order
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN customer_order o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING order_count > 1
ORDER BY order_count DESC;

-- 3. Show books published by 'Penguin Random House'
SELECT b.book_id, b.book_title, p.publisher_name
FROM books b
JOIN publisher p ON b.publisher_id = p.publisher_id
WHERE p.publisher_name = 'Penguin Random House';

-- 4. Top 5 bestselling books
SELECT b.book_id, b.book_title, SUM(ol.quantity) AS total_sold
FROM books b
JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY b.book_id, b.book_title
ORDER BY total_sold DESC
LIMIT 5;

-- 5. Monthly sales report
SELECT 
    DATE_FORMAT(oh.timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT o.order_id) AS orders,
    SUM(ol.quantity) AS items_sold,
    SUM(ol.quantity) / COUNT(DISTINCT o.order_id) AS avg_items_per_order
FROM order_history oh
JOIN customer_order o ON oh.order_id = o.order_id
JOIN order_line ol ON o.order_id = ol.order_id
WHERE oh.order_status_id = 'stat004' -- Delivered orders
GROUP BY month
ORDER BY month;

-- 6. Author performance analysis
SELECT 
    a.author_id, 
    a.author_name, 
    COUNT(DISTINCT ba.book_id) AS books_published,
    SUM(ol.quantity) AS copies_sold,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM author a
JOIN books_author ba ON a.author_id = ba.author_id
JOIN books b ON ba.book_id = b.book_id
JOIN order_line ol ON b.book_id = ol.book_id
JOIN customer_order o ON ol.order_id = o.order_id
GROUP BY a.author_id, a.author_name
ORDER BY copies_sold DESC;

-- 7. Customer order history with details
SELECT 
    c.customer_id,
    c.customer_name,
    o.order_id,
    os.status_name,
    sm.method_name,
    GROUP_CONCAT(b.book_title SEPARATOR ', ') AS books_ordered,
    SUM(ol.quantity) AS total_items,
    MAX(oh.timestamp) AS last_update
FROM customers c
JOIN customer_order o ON c.customer_id = o.customer_id
JOIN order_status os ON o.order_status_id = os.order_status_id
JOIN shipping_method sm ON o.shippingMethod_id = sm.shippingMethod_id
JOIN order_line ol ON o.order_id = ol.order_id
JOIN books b ON ol.book_id = b.book_id
JOIN order_history oh ON o.order_id = oh.order_id
GROUP BY c.customer_id, c.customer_name, o.order_id, os.status_name, sm.method_name
ORDER BY c.customer_name, last_update DESC;

-- 8. Inventory analysis by publisher and language
SELECT 
    p.publisher_name,
    l.language_name,
    COUNT(b.book_id) AS titles_available,
    SUM(ol.quantity) AS units_sold
FROM publisher p
JOIN books b ON p.publisher_id = b.publisher_id
JOIN book_language l ON b.language_id = l.language_id
LEFT JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY p.publisher_name, l.language_name
ORDER BY p.publisher_name, units_sold DESC;

-- Test customer permissions (run as customer_emily)
-- Should work:
SELECT * FROM books WHERE book_title LIKE '%Harry Potter%';
use bookstore;
-- Should fail:
INSERT INTO books (book_id, book_title) VALUES ('book999', 'Test Book');

-- Test staff permissions (run as staff_mike)
-- Should work:
UPDATE books SET book_title = 'Harry Potter and the Sorcerer''s Stone' 
WHERE book_id = 'book001';

-- Should fail:
DELETE FROM books WHERE book_id = 'book001';

-- Test manager permissions (run as manager_sarah)
-- Should work:
INSERT INTO books (book_id, book_title, publisher_id, language_id)
VALUES ('book999', 'New Test Book', 'pub001', 'lang001');

-- Should fail:
DROP TABLE books;