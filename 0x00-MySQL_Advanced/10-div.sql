-- THE SQL SCRIPT CREATES A FUNCTION  SafeDiv()
-- THAT DIVIDES AND RETURNS THE FIRST BY THE SECOND NUMBER.
DELIMITER |
DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT
BEGIN
    DECLARE result FLOAT;
    IF b = 0 THEN SET result = 0;
    ELSE SET result = a / b;
    END IF;
    RETURN result;
END;
|
DELIMITER ;