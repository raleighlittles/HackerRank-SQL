/* Use the DISTINCT function to remove duplicates from the results you're selecting over.
 * To check if a number is even, remember that even numbers are multiples of 2, so dividing an even number by 2 yields a remainder of 0.
 */
SELECT DISTINCT(CITY) FROM STATION WHERE ID % 2 = 0