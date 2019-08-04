/* 
 * Very similar to Exercise #9, with the addition of a second clause.
 */ 

SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u') 
                                    OR  RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u') 