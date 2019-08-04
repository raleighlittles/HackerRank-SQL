/*
 * Out of the last 3 cases we've done:
 *   1) Finding all city names that start with vowels
 *   2) Finding all city names that end with vowels
 *   3) Finding all city names that start and end with vowels
 *   
 *  This example is most similar to the first case. However, instead of needing to use multiple OR 
 *  statements, we know about the LEFT and IN statements. Thus, we just add the 'NOT' statement
 *  to negate the condition.
 */

SELECT DISTINCT(CITY) FROM STATION WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u') 