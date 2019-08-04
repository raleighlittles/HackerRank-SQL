/*
 * Do a series of multiple JOINs on each table to gather each student, their friend ID, and both salaries if the friend salary is greater than theirs.
*/

SELECT student_alias.name
  FROM Students AS student_alias
  JOIN Friends AS friend_alias
    ON friend_alias.ID = student_alias.ID
  JOIN Packages AS package_alias_1
    ON package_alias_1.ID = friend_alias.ID
  JOIN Packages AS package_alias_2
    ON package_alias_2.ID = friend_alias.Friend_ID
   AND package_alias_1.Salary < package_alias_2.Salary
ORDER BY package_alias_2.Salary ASC;