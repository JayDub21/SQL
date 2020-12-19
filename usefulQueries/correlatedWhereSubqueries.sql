-- Select clients that have an invoice
-- EXISTS is more efficient for larger db
-- than the IN opperator

-- USE sql_invoicing;

SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)


-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- Find the products that have never been ordered

-- USE sql_store;

-- SELECT *
-- FROM products p
-- WHERE NOT EXISTS (
-- 	SELECT product_id
--     FROM order_items
--     WHERE product_id = p.product_id
-- )


-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- Get invoices that are larger than the 
-- client's average invoice ammount

-- USE sql_invoicing;

-- SELECT *
-- FROM invoices i
-- WHERE invoice_total > (
-- 	SELECT AVG(invoice_total)
-- 	FROM invoices
-- 	WHERE client_id = i.client_id
-- )


-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- for each employee:
-- calculate the avg salary or each office_id
-- return the employee if salary > avg

-- USE sql_hr;

-- SELECT *
-- FROM employees e
-- WHERE salary > (
-- 	SELECT AVG(salary)
--     FROM employees
--     WHERE office_id = e.office_id
-- )
