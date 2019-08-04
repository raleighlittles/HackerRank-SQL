/*
 * Very similar example to the other revising aggregations examples, but with using the sum
 * function instead.
 */
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = "California"