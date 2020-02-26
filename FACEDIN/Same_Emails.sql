CREATE TRIGGER SAME_EMAILS ON PROFILE_MAILS
INSTEAD OF INSERT
AS
DECLARE @userEmail_ varchar(50)
DECLARE @userName_ varchar(30)
SELECT @userName_=inserted.username, @userEmail_=inserted.mail
FROM inserted
WHERE NOT EXISTS( SELECT PROFILE_MAILS.mail
			FROM PROFILE_MAILS
			WHERE inserted.mail=PROFILE_MAILS.mail);

INSERT INTO PROFILE_MAILS(username,mail) VALUES(@userName_,@userEmail_);