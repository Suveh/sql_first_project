/*
Question 2
Update your stored procedure definition again. 
Add a statement to commit the current unit of work at the end of the procedure.
*/

DELIMITER $$

DROP PROCEDURE IF EXISTS UPDATE_LEADERS_SCORE $$

CREATE PROCEDURE UPDATE_LEADERS_SCORE (
    IN in_School_ID INT,
    IN in_Leader_Score INT
)
BEGIN

    START TRANSACTION;

    -- Validate score range
    IF in_Leader_Score BETWEEN 0 AND 99 THEN

        -- Update the Leaders_Score
        UPDATE chicago_public_schools
        SET Leaders_Score = in_Leader_Score
        WHERE School_ID = in_School_ID;

        -- Update the Leaders_Icon based on score range
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

        COMMIT;

    ELSE
        -- Invalid score, roll back the transaction
        ROLLBACK;
    END IF;
END $$

DELIMITER ;
