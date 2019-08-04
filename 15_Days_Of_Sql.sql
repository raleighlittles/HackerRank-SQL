
SELECT submission_date, -- Get all submission dates and the number of unique hackers (by id) who entered a submission on that date
(SELECT COUNT(DISTINCT(hacker_id))
 FROM Submissions AS submissions_alias_2  
 WHERE submissions_alias_2.submission_date = submissions_alias_1.submission_date
AND    
(SELECT COUNT(DISTINCT(submissions_alias_3.submission_date))
 FROM Submissions AS submissions_alias_3
WHERE submissions_alias_3.hacker_id = submissions_alias_2.hacker_id
AND submissions_alias_3.submission_date < submissions_alias_1.submission_date) = DATEDIFF(submissions_alias_1.submission_date , '2016-03-01')), -- The first date the contest started.
(SELECT hacker_id FROM Submissions AS submissions_alias_2
WHERE submissions_alias_2.submission_date = submissions_alias_1.submission_date 
GROUP BY hacker_id 
 ORDER BY COUNT(submission_id) DESC, hacker_id LIMIT 1) AS temporary,
(SELECT name FROM Hackers WHERE hacker_id = temporary)
FROM
(SELECT DISTINCT(submission_date) FROM Submissions) AS submissions_alias_1
GROUP BY submission_date;