/* Use the hint about writing multiple queries! Simply make one query for the first element
 * (the city with the shortest name) and another query for the second element, and simply use the
 * limit function to make sure you only get 1 element from the query.
 * Then use the Union function to combine the two queries.
 * 
 */
 
(SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1)
UNION ALL
(SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY DESC LIMIT 1)