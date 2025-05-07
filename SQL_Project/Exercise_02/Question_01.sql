/*
For privacy reasons, you have been asked to create a view that enables users to select just the school name and the icon fields from the CHICAGO_PUBLIC_SCHOOLS table. 
By providing a view, you can ensure that users cannot see the actual scores given to a school, just the icon associated with their score. 
You should define new names for the view columns to obscure the use of scores and icons in the original table.
*/
/*
Question 1
Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.
Column name in CHICAGO_PUBLIC_SCHOOLS	Column name in view
NAME_OF_SCHOOL	                        School_Name
Safety_Icon	                            Safety_Rating
Family_Involvement_Icon	                Family_Rating
Environment_Icon	                    Environment_Rating
Instruction_Icon	                    Instruction_Rating
Leaders_Icon	                        Leaders_Rating
Teachers_Icon	                        Teachers_Rating
*/

CREATE VIEW SCHOOL_RATINGS_VIEW AS
SELECT
  NAME_OF_SCHOOL AS School_Name,
  Safety_Icon AS Safety_Rating,
  Family_Involvement_Icon AS Family_Rating,
  Environment_Icon AS Environment_Rating,
  Instruction_Icon AS Instruction_Rating,
  Leaders_Icon AS Leaders_Rating,
  Teachers_Icon AS Teachers_Rating
FROM
  chicago_public_schools; 
  
/*
  Write and execute a SQL statement that returns all of the columns from the view.
*/
SELECT * FROM SCHOOL_RATINGS_VIEW;
/*
  Write and execute a SQL statement that returns just the school name and leaders rating from the view.
*/
SELECT School_Name, Leaders_Rating FROM SCHOOL_RATINGS_VIEW;
