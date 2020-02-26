CREATE TABLE USER_(
userID int NOT NULL,
pw varchar(30),
fname varchar(30),
lname varchar(30)
primary key(userID));

CREATE TABLE PROFILE_(
username varchar(30) NOT NULL,
hometown varchar(30),
sex varchar(30),
birthdate date,
region varchar(30),
primary key(username));

ALTER TABLE PROFILE_ ADD CONSTRAINT SEX_CHECK
CHECK (sex IN ('Male','Female','Others'));

CREATE TABLE EDUCATION(
eduID int NOT NULL,
eduname varchar(30),
primary key(eduID));

CREATE TABLE COMPANY(
companyID int NOT NULL,
companyName varchar(30),
primary key(companyID));

CREATE TABLE BOOK_MARK(
book_markID int NOT NULL,
primary key(book_markID));

CREATE TABLE PRIVACY(
privacy_type int NOT NULL CONSTRAINT PRIVACY_TYPE_CHECK CHECK(privacy_type > 0 AND privacy_type <= 4),
privacy_name varchar(30) NOT NULL CONSTRAINT PRIVACY_NAME_CHECK CHECK (privacy_name IN ('Only Me','Public','Friends','Specific Friends')),
primary key(privacy_type));

CREATE TABLE POST(
postID int NOT NULL,
dates date,
privacy_type int,
book_markID int,
primary key(postID),
foreign key(privacy_type) references PRIVACY(privacy_type),
foreign key(book_markID) references BOOK_MARK(book_markID));

CREATE TABLE USER_PROFILE(
userID int NOT NULL,
username varchar(30) NOT NULL,
primary key(userID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(username) references PROFILE_(username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE STUDY(
userID int NOT NULL,
eduID int NOT NULL,
startDate date,
endDate date,
primary key(userID, eduID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(eduID) references EDUCATION(eduID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CAREER(
userID int NOT NULL,
companyID int NOT NULL,
startDate date,
endDate date,
primary key(userID, companyID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(companyID) references COMPANY(companyID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CREATED(
createdID int NOT NULL,
userID int NOT NULL,
book_markID int,
createdType varchar(30) NOT NULL,
createdName varchar(30),
location_ varchar(50),
startDate date,
endDate date,
mainCategory varchar(30),
subCategory varchar(30),
about varchar(150),
primary key(createdID),
foreign key(userID) references USER_(userID),
foreign key(book_markID) references BOOK_MARK(book_markID));

ALTER TABLE CREATED ADD CONSTRAINT CREATEDTYPE_CHECK
CHECK (createdType IN ('group','page','activity'));

CREATE TABLE JOIN_(
userID int NOT NULL,
createdID int NOT NULL,
primary key(userID, createdID),
foreign key(userID) references USER_(userID) ON DELETE CASCADE ON UPDATE CASCADE ,
foreign key(createdID) references CREATED(createdID) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE MANAGE(
userID int NOT NULL,
createdID int NOT NULL,
primary key(userID, createdID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(createdID) references CREATED(createdID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE FRIENDSHIP(
adderID int NOT NULL,
addedID int NOT NULL,
dates date,
primary key(adderID, addedID),
foreign key(adderID) references USER_(userID),
foreign key(addedID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CHAT(
senderID int NOT NULL,
receiverID int NOT NULL,
text_ varchar(140),
dates date,
primary key(senderID, receiverID),
foreign key(senderID) references USER_(userID),
foreign key(receiverID) references USER_(userID));

CREATE TABLE SAVES(
userID int NOT NULL,
book_markID int NOT NULL,
dates date,
primary key(userID,book_markID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(book_markID) references BOOK_MARK(book_markID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE COMMENT(
userID int NOT NULL,
postID int NOT NULL,
dates date,
text_ varchar(140),
primary key(userID,postID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SHARE(
userID int NOT NULL,
postID int NOT NULL,
dates date,
primary key(userID, postID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE LIKE_(
userID int NOT NULL,
postID int NOT NULL,
dates date,
primary key(userID, postID),
foreign key(userID) references USER_(userID)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_LANGUAGE(
username varchar(30) NOT NULL,
language_ varchar(30) NOT NULL,
primary key(username, language_),
foreign key(username) references PROFILE_(username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_MAIL(
username varchar(30) NOT NULL,
mail varchar(30) NOT NULL,
primary key(username, mail),
foreign key(username) references PROFILE_(username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_PHONE(
username varchar(30) NOT NULL,
phone varchar(30) NOT NULL,
primary key(username, phone),
foreign key(username) references PROFILE_(username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_ADDRESS(
username varchar(30) NOT NULL,
address_ varchar(30) NOT NULL,
primary key(username, address_),
foreign key(username) references PROFILE_(username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE EVENT_(
eventID int NOT NULL,
postID int NOT NULL,
primary key(eventID),
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE VIDEO(
videoID int NOT NULL,
postID int NOT NULL,
videoname varchar(30),
primary key(videoID),
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PHOTO(
photoID int NOT NULL,
postID int NOT NULL,
photoname varchar(30),
primary key(photoID),
foreign key(postID) references POST(postID)ON DELETE CASCADE ON UPDATE CASCADE);

