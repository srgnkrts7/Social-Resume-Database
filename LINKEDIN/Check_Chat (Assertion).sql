CREATE TRIGGER CHECK_CHAT ON CHAT
INSTEAD OF INSERT
AS
DECLARE @senderID int
DECLARE @receiverID int
DECLARE @chatDate date
SELECT @senderID=inserted.SenderID, @receiverID=inserted.ReceiverID ,@chatDate = inserted.ChatDate
FROM inserted
WHERE EXISTS( SELECT CONNECT_MEMBER.AddedID
			FROM CONNECT_MEMBER
			WHERE CONNECT_MEMBER.AddedID = inserted.SenderID AND CONNECT_MEMBER.AdderID=inserted.ReceiverID);

INSERT INTO CHAT(SenderID,ReceiverID,ChatDate) VALUES(@senderID,@receiverID,@chatDate);