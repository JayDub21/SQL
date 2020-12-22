-- USE sql_store;

SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    points,
    CASE
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
	END AS status
FROM customers


-- SELECT
-- 	order_id,
--     order_date,
-- 	CASE
-- 		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
--         WHEN YEAR(order_date) = YEAR(NOW()) -1 THEN 'Last Year'
--         WHEN YEAR(order_date) < YEAR(NOW()) -1 THEN 'Archived'
--         ELSE 'Future'
-- 	END AS status
-- FROM orders