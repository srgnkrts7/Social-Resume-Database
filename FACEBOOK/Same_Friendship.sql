CREATE TRIGGER SAME_FRIENDSHIP ON FRIENDSHIP
AFTER INSERT
AS
DECLARE @addedPerson int
DECLARE @adderPerson int
SELECT @addedPerson=inserted.addedID,
@adderPerson=inserted.adderID
FROM inserted
INSERT INTO FRIENDSHIP(adderID,addedID) VALUES(@addedPerson,@adderPerson);