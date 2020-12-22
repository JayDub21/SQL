USE sql_store;


SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'Unknown') AS phone
FROM customers
 


-- SELECT 
-- 	order_id,
--     -- Returns non null between shiper_id and comments, if both null = not assigned
--     COALESCE(shipper_id, comments, 'Not Assigned') 
--     -- IFNULL(shipper_id, 'Not assigned') AS shipper 
-- FROM orders