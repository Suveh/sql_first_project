/*Question 2
Write and execute a SQL query to list all crimes that took place at a school. 
Include case number, crime type and community name.
*/

SELECT CC.CASE_NUMBER,CC.PRIMARY_TYPE,C.COMMUNITY_AREA_NAME
FROM chicago_crime CC LEFT JOIN chicago_socioeconomic_data C
ON C.COMMUNITY_AREA_NUMBER=CC.COMMUNITY_AREA_NUMBER
WHERE CC.LOCATION_DESCRIPTION='SCHOOL';