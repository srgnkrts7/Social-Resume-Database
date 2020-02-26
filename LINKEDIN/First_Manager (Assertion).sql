CREATE TRIGGER INSERT_MANAGE ON CREATED

AFTER INSERT
AS
DECLARE @createdID varchar (30) 
DECLARE @memberID int
SELECT @createdID=inserted.createdID,@memberID=inserted.MemberID
FROM inserted
INSERT INTO MANAGE(createdID,MemberID) VALUES (@createdID,@memberID)

