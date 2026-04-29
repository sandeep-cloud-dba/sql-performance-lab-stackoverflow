SELECT TOP 10
    u.displayname,
    u.reputation,
    p.score,
    DENSE_RANK() OVER (PARTITION BY p.owneruserid ORDER BY p.score DESC) AS postrank
FROM posts p
LEFT JOIN users u ON p.owneruserid = u.id
LEFT JOIN votes v ON v.postid = p.id;


/*
Solution:
1. Create an index on the Votes table for the PostID column to improve the performance of the join between the Posts and Votes tables.
2. Create a composite index on the Posts table for the OwnerUserID and Score columns to improve the performance of the join between the Posts and Users tables, as well as to optimize the sorting of posts by score for each user.

By creating these indexes, we can significantly reduce the query execution time by allowing the database engine to quickly locate the relevant rows in the Votes and Posts tables, thus improving the overall performance of the query.
*/

CREATE NONCLUSTERED INDEX IX_Votes_PostID ON Votes (PostID);


CREATE NONCLUSTERED INDEX IX_Posts_OwnerUserID_Score ON Posts (OwnerUserID, Score DESC);