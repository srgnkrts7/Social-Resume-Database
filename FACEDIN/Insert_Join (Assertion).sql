CREATE TRIGGER INSERT_JOIN ON CREATED

AFTER INSERT
AS
DECLARE @createdID int 
DECLARE @userID int
SELECT @createdID=inserted.createdID,@userID=inserted.userID
FROM inserted
INSERT INTO FACEBOOK__.dbo.JOIN_(createdID,userID) VALUES (@createdID,@userID)