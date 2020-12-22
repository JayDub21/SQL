-- To create Stored Procedures in MySQL, change the DELIMITER so
-- that the statements are given to MySQL as a single unit. 

-- Create a stored procedure called
-- get_invoices_with_balance
-- to return all the invoices with a balance > 0
-- USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN

	SELECT *
    FROM invoices_with_balance
    WHERE balance > 0;
    
END$$

DELIMITER ;


-- DELIMITER $$
-- CREATE PROCEDURE get_clients()
-- BEGIN
-- 	SELECT * FROM clients;
-- END$$

-- DELIMITER ;

-- ↓↓↓ to call call stored procedure ↓↓↓
-- CALL get_clients()