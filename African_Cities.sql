/*
 * Another example of a fairly straightforward join -- use the columns to merge specified in the 
 * table. 
 * Lastly, use the WHERE clause to filter on continents.
 */
SELECT CITY.NAME FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE 
WHERE COUNTRY.CONTINENT = "Africa"