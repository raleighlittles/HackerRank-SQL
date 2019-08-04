/*
 * Take advantage of boolean operators in the WHERE clause to filter the salary and months,
 * and then use the ORDER_BY statement to order your results as specified.
*/

SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC