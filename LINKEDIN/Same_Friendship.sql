CREATE TRIGGER [dbo].[SAME_FRIENDSHIP] ON [dbo].[CONNECT_MEMBER]
AFTER INSERT
AS
DECLARE @AdderID int
DECLARE @AddedID int
SELECT @AddedID=inserted.AddedID,
@AdderID=inserted.AdderID
FROM inserted
INSERT INTO CONNECT_MEMBER(AdderID,AddedID) VALUES(@AddedID,@AdderID);