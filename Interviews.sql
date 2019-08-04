/*
 * Join Contests table with Colleges and Challenges.
 * Then LEFT JOIN, with a table that has the sum of the accepted submissions for each challenge.
 * Do the same thing as above for views_stats table.
 * 
 * Then use HAVING to filter out contests who received no submissions, had no views, and had no unique views,
 * as per the problem statement.
 */
 
SELECT contests_alias.contest_id, 
contests_alias.hacker_id, 
contests_alias.name, 
SUM(submissions_grouping_alias.total_submissions),
SUM(submissions_grouping_alias.total_accepted_submissions), 
SUM(view_stats_grouping_alias.total_views), 
SUM(view_stats_grouping_alias.total_unique_views)
FROM Contests AS contests_alias
JOIN Colleges AS colleges_alias
ON contests_alias.contest_id = colleges_alias.contest_id
JOIN Challenges AS challenges_alias
ON colleges_alias.college_id = challenges_alias.college_id
LEFT JOIN
(SELECT submission_stats_alias.challenge_id, SUM(submission_stats_alias.total_submissions) AS total_submissions, 
 SUM(submission_stats_alias.total_accepted_submissions) AS total_accepted_submissions 
 FROM Submission_Stats AS submission_stats_alias
 GROUP BY submission_stats_alias.challenge_id) AS submissions_grouping_alias
ON challenges_alias.challenge_id = submissions_grouping_alias.challenge_id
LEFT JOIN
(SELECT view_stats_alias.challenge_id, SUM(view_stats_alias.total_views) AS total_views, 
 SUM(view_stats_alias.total_unique_views) AS total_unique_views
FROM View_Stats AS view_stats_alias
 GROUP BY view_stats_alias.challenge_id) AS view_stats_grouping_alias
ON challenges_alias.challenge_id = view_stats_grouping_alias.challenge_id
GROUP BY contests_alias.contest_id, contests_alias.hacker_id, contests_alias.name
HAVING SUM(submissions_grouping_alias.total_submissions) +
       SUM(submissions_grouping_alias.total_accepted_submissions) +
       SUM(view_stats_grouping_alias.total_views) +
       SUM(view_stats_grouping_alias.total_unique_views) > 0
ORDER BY contests_alias.contest_id;