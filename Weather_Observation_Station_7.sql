/* Essentially identical to the previous example, but this time we swap the order of the wildcard
 * and our desired character since we want to match at the end instead of the beginning.
 * 
 * Note that in the previous example, we could get away with not using DISTINCT() because
 * there were no city names beginning with a vowel that were duplicates, but this time 
 * we have to use DISTINCT since there are duplicates.
 */

SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE '%a' 
                            OR CITY LIKE '%e'
                            OR CITY LIKE '%i'
                            OR CITY LIKE '%o'
                            OR CITY LIKE '%u'