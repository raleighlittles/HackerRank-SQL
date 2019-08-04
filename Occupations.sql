/*
* SQL Server solution.
*/

SELECT -- Make sure this list matches the order given in the problem.
    [Doctor],
    [Professor],
    [Singer],
    [Actor]
FROM
    (SELECT -- Assigns a number to each row. See https://docs.microsoft.com/en-us/sql/t-sql/functions/row-number-transact-sql?view=sql-server-2017
         ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) row_num,
         [Name],
         [Occupation] 
     FROM 
         Occupations
    ) AS source 
PIVOT -- Either MIN or MAX could be used here as an aggregation
    ( MIN([Name]) FOR [occupation] IN ([Doctor],[Professor],[Singer],[Actor]) ) as pvt -- The order of columns listed here needs to match the order selected out of.
ORDER BY row_num