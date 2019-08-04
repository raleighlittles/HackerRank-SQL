/* 
 * Use the 'AVG' function to compute the average, and use the WHERE clause to filter by district.
 */
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = "California"