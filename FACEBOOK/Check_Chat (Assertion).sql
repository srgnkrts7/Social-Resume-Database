CREATE TRIGGER CHECK_CHAT ON CHAT
INSTEAD OF INSERT
AS
DECLARE @senderID int
DECLARE @receiverID int
DECLARE @chatDate date
DECLARE @text_ varchar(140) 
SELECT @senderID=inserted.SenderID, @receiverID=inserted.ReceiverID ,@chatDate = inserted.dates , @text_=inserted.text_
FROM inserted
WHERE EXISTS( SELECT FRIENDSHIP.AddedID 
			FROM FRIENDSHIP
			WHERE FRIENDSHIP.AddedID = inserted.SenderID AND FRIENDSHIP.adderID=inserted.receiverID);

INSERT INTO CHAT(SenderID,ReceiverID,dates,text_) VALUES(@senderID,@receiverID,@chatDate,@text_);