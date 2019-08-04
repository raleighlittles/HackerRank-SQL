/*
 * Similar case to the other population-typbe problems. 
 */
SELECT SUM(CITY.POPULATION) FROM CITY
JOIN COUNTRY
ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE CONTINENT = "Asia"