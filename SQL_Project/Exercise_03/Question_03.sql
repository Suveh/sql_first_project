/*
Question 3
Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID using the following information.
Score lower limit	Score upper limit	Icon
80	                99	                Very strong
60	                79	                Strong
40	                59	                Average
20	                39	                Weak
0	                19	                Very weak
*/

DROP PROCEDURE IF EXISTS UPDATE_LEADERS_SCORE;

DELIMITER $$

CREATE PROCEDURE UPDATE_LEADERS_SCORE (
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN
    -- First update the Leaders_Score
    UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;

    -- Then update the Leaders_Icon based on the score range
    IF in_Leader_Score BETWEEN 80 AND 99 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Very strong'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score BETWEEN 60 AND 79 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Strong'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score BETWEEN 40 AND 59 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Average'
        WHERE School_ID = in_School_ID;
    ELSEIF in_Leader_Score BETWEEN 20 AND 39 THEN
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Weak'
        WHERE School_ID = in_School_ID;
    ELSE
        UPDATE chicago_public_schools
        SET Leaders_Icon = 'Very weak'
        WHERE School_ID = in_School_ID;
    END IF;
END$$

DELIMITER ;
