/*
Question 4
Write a query to call the stored procedure, passing a valid school ID and a leader score of 50, to check that the procedure works as expected.
*/
CALL UPDATE_LEADERS_SCORE(610281,50);
SELECT School_ID, Name_of_School, Leaders_Score, Leaders_Icon
FROM chicago_public_schools
WHERE School_ID = 610281;
