-- Invalid Tweets

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;


-- LENGTH() -> bytes
-- CHAR_LENGTH() -> char 


-- https://leetcode.com/problems/invalid-tweets/