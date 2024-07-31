/*
1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/

DELIMITER $$
CREATE FUNCTION converter_seconds(seconds INT) 
RETURNS VARCHAR(255)
DETERMINISTIC 
BEGIN 
	DECLARE d INT ;
	DECLARE h INT; 
    DECLARE min INT; 
    DECLARE sec INT; 
    DECLARE res VARCHAR(100);  
    SET d = seconds DIV 86400; 
    SET seconds = seconds MOD 86400; 
    SET h = seconds DIV 3600; 
    SET seconds = seconds MOD 3600;
    SET min = seconds DIV 60;
    SET seconds = seconds MOD 60;
    SET res = CONCAT(d, ' days ', h, ' hours ', min, ' minutes ', seconds, ' seconds ');  
    RETURN res; 
END $$
DELIMITER ;

SELECT converter_seconds(123456);


