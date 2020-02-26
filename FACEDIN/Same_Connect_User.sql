CREATE TRIGGER SAME_FRIENDSHIP ON CONNECT_USER
AFTER INSERT
AS
DECLARE @addedPerson int
DECLARE @adderPerson int
SELECT @addedPerson=inserted.addedID,
@adderPerson=inserted.adderID
FROM inserted
INSERT INTO CONNECT_USER(adderID,addedID) VALUES(@addedPerson,@adderPerson);