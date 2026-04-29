SELECT TOP 10
    u.displayname,
    u.reputation,
    p.score,
    DENSE_RANK() OVER (PARTITION BY p.owneruserid ORDER BY p.score DESC) AS postrank
FROM posts p
LEFT JOIN users u
    ON p.owneruserid = u.id
LEFT JOIN votes v
    ON v.postid = p.id;