CREATE TRIGGER INSERT_JOIN ON CREATED

AFTER INSERT
AS
DECLARE @createdID varchar (30) 
DECLARE @memberID int
SELECT @createdID=inserted.createdID,@memberID=inserted.MemberID
FROM inserted
INSERT INTO JOIN_(createdID,MemberID) VALUES (@createdID,@memberID)