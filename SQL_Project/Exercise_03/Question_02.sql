/*
Question 2
Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID to the value in the in_Leader_Score parameter.
*/

DELIMITER $$

CREATE PROCEDURE UPDATE_LEADERS_SCORE (
    IN in_School_ID INT, 
    IN in_Leader_Score INT
)   
BEGIN
	UPDATE chicago_public_schools
	SET Leaders_Icon = in_Leader_Score
	WHERE School_ID = in_School_ID;
	
END$$

DELIMITER ;