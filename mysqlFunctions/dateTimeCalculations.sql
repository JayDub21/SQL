-- USE sql_store;

-- Find how many seconds have elapsed between times.
SELECT TIME_TO_SEC('9:00') - TIME_TO_SEC('9:02')

-- Find how many days apart two dates are
-- SELECT DATEDIFF('1989-02-21', '1962-06-28')

-- TODAYS DATE 1 YEAR FROM NOW
-- SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR)

-- TODAYS DATE 1 YEAR AGO
-- SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR)
