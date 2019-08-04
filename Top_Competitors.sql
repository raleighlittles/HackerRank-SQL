/*
 * Another nasty join, no real way of getting out of it.
 * 
 * Key point to notice here is that the hackers who got a full score are those whose score matches the score associated with the difficulty of that submission.
 * Thus, if the submission has a difficult of D, and on the difficulty table, a difficulty of D is matched with a score of S, then you need to check if the user's
 * score on that submission matches S.
*/

SELECT hackers_alias.hacker_id, hackers_alias.name FROM Hackers AS hackers_alias
JOIN Submissions AS submissions_alias ON hackers_alias.hacker_id = submissions_alias.hacker_id
JOIN Challenges AS challenges_alias ON submissions_alias.challenge_id = challenges_alias.challenge_id
JOIN Difficulty AS difficulty_alias ON challenges_alias.difficulty_level = difficulty_alias.difficulty_level
WHERE submissions_alias.score = difficulty_alias.score
GROUP BY hackers_alias.hacker_id, hackers_alias.name
HAVING COUNT(*)>1 ORDER BY COUNT(*) DESC, hackers_alias.hacker_id
