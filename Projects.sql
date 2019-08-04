/*
 * Another way to think about this is that start dates which do NOT show up as an end date, mark
 * the start date of a new project. For example, in the sample input, notice that the date '2015-10-02' does appear in the end date, but '2015-10-01' does NOT appear as as end date, thus
 * 2015-10-01 is the start date of a project. Similar reasoning holds for the end date as well.
 * 
 * Armed with this information, we now know what to search for: we're looking for start dates
 * that don't show up in the end date column, and end dates that don't show up in the start date
 * column. For each pair of start and end dates, we'll print them ordered by their difference.
*/

/* Newer versions of MYSQL have the 'ONLY_FULL_GROUP_BY' flag set which prevents you from writing a SELECT query across multiple columns but not naming all columns selected in the group by clause. As a hack, we disable this warning for the current session. */

SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
                                    
SELECT Start_Date, End_Date
FROM (
    (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS A,
    (SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS B
                                
)
WHERE End_Date > Start_Date
GROUP BY Start_Date 

ORDER BY DATEDIFF(End_Date, Start_Date), Start_Date

