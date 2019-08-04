/*
 * Simple example of a Join; use the mapping given in the description (country codes).
 * Also since we need an aggregate, use the GROUP BY function.
 * 
 * One important gotcha here is that the description specifies the populations rounded *down*, so
 * you need to use the FLOOR function.
 */
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
JOIN CITY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT
