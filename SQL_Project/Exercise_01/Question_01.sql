-- Exercise 01: 
/*
You have been asked to produce some reports about the communities and crimes in the Chicago area. 
You will need to use SQL join queries to access the data stored across multiple tables.
*/

/*
Question 1
Write and execute a SQL query to list the school names, community names and average attendance for communities with a 
hardship index of 98.
*/


SELECT S.NAME_OF_SCHOOL,S.COMMUNITY_AREA_NAME,S.AVERAGE_STUDENT_ATTENDANCE,S.AVERAGE_TEACHER_ATTENDANCE
FROM chicago_public_schools S LEFT JOIN chicago_socioeconomic_data C
ON S.COMMUNITY_AREA_NAME=C.COMMUNITY_AREA_NAME
WHERE C.HARDSHIP_INDEX=98;