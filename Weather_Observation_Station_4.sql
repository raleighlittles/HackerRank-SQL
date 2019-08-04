/* Use the count function to count the number of rows in the specified column. 
 * As requested, we want to count the difference between the number of entries in the CITY
 * column, and the number of distinct references in the CITY column.
 * 
 */
SELECT COUNT(CITY) - COUNT(DISTINCT(CITY)) FROM STATION