-rameter Sniffing Demo

CREATE OR ALTER PROCEDURE GetUserPosts
    @OwnerUserId INT
AS
BEGIN
	    SELECT *
	    FROM Posts
	    WHERE OwnerUserId = @OwnerUserId;
END
GO

-- Test with skewed values
EXEC GetUserPosts 1;
EXEC GetUserPosts 99999;
- Parameter Sniffing Demo


