/*
 * Use the WHERE clause to filter on the grades condition, and then use the ORDER BY to determine 
 * what criteria to sort on in the order that we're given:
 * 1) The last 3 letters of their name
 * 2) Their ID
*/
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3) ASC, ID ASC