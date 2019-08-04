/*
* Interesting nested query example...
* First key here is to realize that the MAX function can handle expressions, so you can maximize
* over the result of salary times months.
* However, you can't also use this result itself in a WHERE clause, so you have to write one 
* separate query to retrieve the maximum 'earnings' and then use that to search over.
*/
SELECT MAX(SALARY * MONTHS) AS EARNINGS, COUNT(NAME) FROM EMPLOYEE WHERE SALARY * MONTHS = (SELECT MAX(SALARY * MONTHS) FROM EMPLOYEE) 

                                                              