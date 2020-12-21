-- SELECT * FROM sql_invoicing;

-- Create a view to see the balance for each client
-- Join that view to a table including client_id, 
-- name and balance owed

-- USE sql_invoicing;

CREATE VIEW clients_balance AS
SELECT
	c.client_id,
    c.name,
    SUM(invoice_total - payment_total) AS balacne
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id, name



-- View showing client_id, name, and total of all invoices
-- CREATE VIEW sales_by_client AS
-- SELECT 
-- 	c.client_id,
--     c.name,
--     SUM(invoice_total) AS total_sales
-- FROM clients c
-- JOIN invoices i USING (client_id)
-- GROUP BY client_id, name