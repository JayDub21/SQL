-- Return Sales Summary only for clients
-- that have an invoice.
-- Put select subquery inside FROM
-- This is better converted into a view

-- USE sql_invoicing;

SELECT *
FROM (
	SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total)
			FROM invoices
			WHERE client_id = c.client_id) AS total_sales,
		(SELECT AVG(invoice_total)
			FROM invoices
			WHERE client_id = c.client_id) AS sales_average,
		(SELECT total_sales - sales_average) AS difference
	FROM clients c
) AS sales_summary
WHERE total_sales IS NOT NULL