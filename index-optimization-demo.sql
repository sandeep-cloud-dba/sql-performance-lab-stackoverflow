--Missing Index Demo

SELECT COUNT(*)
FROM Posts
WHERE OwnerUserId = 22656
AND PostTypeId = 1;

-- Recommended Index
CREATE INDEX IX_Posts_Owner_PostType
ON Posts (OwnerUserId, PostTypeId);

