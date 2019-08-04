/* 
 * Uses the aggregate query example that we've seen a lot so far. Requires knowing about the 
 * SUM function and using the WHERE clause to filter on what fields we care about.
 */ 
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN'