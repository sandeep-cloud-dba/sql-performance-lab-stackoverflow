--DECLARE @UserId int = ##UserId##

SELECT 
    Count(*) AS CommentCount,
    Score
FROM 
    Comments
--WHERE    UserId = @UserId
GROUP BY 
    Score
ORDER BY 
    Score DESC












/*
Create Index on Comments.Score to speed up the above query.this query is not using any index and doing a full scan on Comments table.
By creating an index on Score column, the query optimizer can quickly locate the relevant rows based on the Score value, improving the performance of the query.
*/
CREATE NONCLUSTERED INDEX IX_Comment_Score ON Comments (Score DESC);


 
 