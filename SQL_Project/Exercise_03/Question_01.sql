/*
Exercise 3: Creating a Stored Procedure
The icon fields are calculated based on the value in the corresponding score field. You need to make sure that when a score field is updated, the icon field is updated too. 
To do this, you will write a stored procedure that receives the school id and a leaders score as input parameters, calculates the icon setting and updates the fields appropriately.
*/

/*
Question 1
Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer.
*/

DELIMITER $$

CREATE PROCEDURE UPDATE_LEADERS_SCORE (
    IN in_School_ID INT, 
    IN in_Leader_Score INT
)  
BEGIN
   
END$$

DELIMITER ;

