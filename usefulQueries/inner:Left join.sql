SELECT DISTINCT
	customer_id,
    first_name,
    last_name,
    p.name AS purchased
FROM customers
LEFT JOIN orders o USING(customer_id)
LEFT JOIN order_items oi USING(order_id)
LEFT JOIN products p USING(product_id)
WHERE product_id = 3