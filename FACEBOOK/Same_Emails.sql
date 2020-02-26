CREATE TRIGGER SAME_EMAILS ON PROFILE_MAIL
INSTEAD OF INSERT
AS
DECLARE @userEmail_ varchar(50)
DECLARE @userName_ varchar(30)
SELECT @userName_=inserted.username, @userEmail_=inserted.mail
FROM inserted
WHERE NOT EXISTS( SELECT PROFILE_MAIL.mail
			FROM PROFILE_MAIL
			WHERE inserted.mail=PROFILE_MAIL.mail);

INSERT INTO PROFILE_MAIL(username,mail) VALUES(@userName_,@userEmail_);
