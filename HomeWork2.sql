/*
2. Выведите только чётные числа от 1 до 10.
Пример: 2,4,6,8,10
*/

DELIMITER $$
CREATE PROCEDURE even(number INT)
BEGIN
	DECLARE count INT DEFAULT 0;
    DECLARE res TEXT DEFAULT NULL;
    WHILE  count<= number DO
		IF count % 2 = 0 THEN
			IF res IS NULL THEN 
				SET res = concat(count);
			ELSE
				SET res = concat(res, ', ', count);
			END IF;
		END IF;
		SET count = count + 1;
    END WHILE;
	SELECT res;
END $$
DELIMITER ;

CALL even(20);