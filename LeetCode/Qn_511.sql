-- Game Play Analysis I

SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

-- https://leetcode.com/problems/game-play-analysis-i/