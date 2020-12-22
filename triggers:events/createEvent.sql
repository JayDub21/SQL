-- how to create an even

--  ↓↓↓ event_scheduler on / off ↓↓↓
-- SHOW VARIABLES LIKE 'event%' ; 

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	EVERY 1 YEAR STARTS '2021-01-01'
DO BEGIN
		DELETE FROM payments_audit
        WHERE action_date < NOW () - INTERVAL 1 YEAR;
END $$

DELIMITER ;

-- ↓↓↓ to see events already created ↓↓↓
-- SHOW EVENTS;

-- ↓↓↓ to ALTER events already created or ENABLE / DISABLE ↓↓↓
-- ALTER EVENT yearly_delete_stale_audit_rows DISABLE