CREATE TRIGGER INSERT_MANAGE ON CREATED

AFTER INSERT
AS
DECLARE @createdID int 
DECLARE @userID int
SELECT @createdID=inserted.createdID,@userID=inserted.userID
FROM inserted
INSERT INTO FACEBOOK__.dbo.MANAGE(createdID,userID) VALUES (@createdID,@userID)

