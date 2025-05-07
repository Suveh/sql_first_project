/*
Exercise 4: Using Transactions
You realise that if someone calls your code with a score outside of the allowed range (0-99), then the score will be updated with the invalid data and the icon will remain at its previous value. 
There are various ways to avoid this problem, one of which is using a transaction.
*/

/*
Question 1
Update your stored procedure definition. 
Add a generic ELSE clause to the IF statement that rolls back the current work if the score did not fit any of the preceding categories.
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

        -- Update score
        UPDATE chicago_public_schools
        SET Leaders_Score = in_Leader_Score
        WHERE School_ID = in_School_ID;

        -- Update icon
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

    ELSE
        -- Invalid input, rollback
        ROLLBACK;
    END IF;
END $$

DELIMITER ;
