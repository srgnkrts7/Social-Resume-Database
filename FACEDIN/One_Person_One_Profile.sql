CREATE TRIGGER ONE_PERSON_ONE_PROFILE ON USER_PROFILE
INSTEAD OF INSERT
AS
DECLARE @userId_ int
DECLARE @userName_ varchar(10)
SELECT @userName_=inserted.username, @userId_=inserted.userID
FROM inserted
WHERE NOT EXISTS( SELECT USER_PROFILE.username
			FROM USER_PROFILE
			WHERE inserted.username=USER_PROFILE.username);

INSERT INTO USER_PROFILE(userID,username) VALUES(@userId_,@userName_);