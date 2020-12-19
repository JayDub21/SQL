-- Show each client's name, total sales,
-- average sale, and the difference.

-- USE sql_invoicing;

SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS totalSales,
	(SELECT AVG(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) AS saleAverage,
	(SELECT totalSales - saleAverage) AS difference
FROM clients c


-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- Compare each invoice to the invoice_average
-- and show the difference between them.

-- USE sql_invoicing;

-- SELECT
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) AS invoice_average,
-- 	invoice_total - (SELECT invoice_average) 
-- 		AS difference
-- FROM invoices