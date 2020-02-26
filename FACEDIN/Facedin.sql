CREATE TABLE USER_(
UserID int NOT NULL,
Password_ varchar(20),
Fname varchar(15),
Lname varchar(20),
Primary Key(UserID));

CREATE TABLE PROFILE_(
UserName varchar(20) NOT NULL,
Sex varchar(10),
Birthdate date,
Religion varchar(10),
Hometown varchar(15),
Primary Key(UserName));

CREATE TABLE EDUCATION(
EducationID int NOT NULL,
EducationName varchar(20),
Primary Key(EducationID));

CREATE TABLE COMPANY(
CompanyID int NOT NULL,
CompanyName varchar(20),
CompanyLocation varchar(20),
Primary Key(CompanyID));

CREATE TABLE BOOKMARK(
BookmarkID int NOT NULL,
Primary Key(BookmarkID));

CREATE TABLE PRIVACY(
PrivacyType int NOT NULL CONSTRAINT PRIVACY_TYPE_CHECK CHECK(privacyType > 0 AND privacyType <= 4),
PrivacyName varchar(20) CONSTRAINT PRIVACY_NAME_CHECK CHECK (privacyName IN ('Only Me','Public','Friends','Specific Friends')),
Primary Key(PrivacyType));

CREATE TABLE ACHIEVEMENTS(
AchievementID int NOT NULL,
Primary Key(AchievementID));

CREATE TABLE USER_TALENTS(
UserID int NOT NULL,
TalentName varchar(20) NOT NULL,
Primary Key(UserID,TalentName),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE USER_PROFILE(
UserID int NOT NULL,
UserName varchar(20)NOT NULL,
Primary Key(UserID,UserName),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(UserName) references PROFILE_(UserName)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE STUDY(
UserID int NOT NULL,
EducationID int NOT NULL,
StartDate date,
EndDate date,
Degree varchar(10),
Primary Key(UserID,EducationID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(EducationID) references EDUCATION(EducationID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CAREER(
UserID int NOT NULL,
CompanyID int NOT NULL,
StartDate date,
EndDate date,
Degree varchar(10),
Primary Key(UserID,CompanyID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CompanyID) references COMPANY(CompanyID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CONNECT_USER(
AdderID int NOT NULL,
AddedID int NOT NULL,
ConnectDate date,
Primary Key( AdderID,AddedID),
Foreign Key(AdderID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(AddedID) references USER_(UserID));

CREATE TABLE CHAT(
SenderID int NOT NULL,
ReceiverID int NOT NULL,
ChatDate date,
Primary Key(SenderID,ReceiverID),
Foreign Key(SenderID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ReceiverID) references USER_(UserID));

CREATE TABLE SAVE_(
UserID int NOT NULL,
BookmarkID int NOT NULL,
SaveDate date,
Primary Key(userID,BookmarkID),
Foreign Key(userID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PUBLISHED(
PublishedID int NOT NULL,
PublishedDate date,
PrivacyType int,
BookmarkID int,
Primary Key(PublishedID),
Foreign Key(PrivacyType) references PRIVACY(PrivacyType)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE COMMENT(
UserID int NOT NULL,
PublishedID int NOT NULL,
CommentDate date,
CommentText varchar(200),
Primary Key(UserID,PublishedID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SHARE(
UserID int NOT NULL,
PublishedID int NOT NULL,
ShareDate date,
Primary Key(UserID,PublishedID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID));

CREATE TABLE LIKE_(
UserID int NOT NULL,
PublishedID int NOT NULL,
LikeDate date,
Primary Key(UserID,PublishedID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID));

CREATE TABLE VIEW_PROFILE(
ViewerID int NOT NULL,
ViewedID int NOT NULL,
ViewDate date,
Primary Key(ViewerID,ViewedID),
Foreign Key(ViewerID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ViewedID) references USER_(UserID));

CREATE TABLE REFERENCE(
ReferencerID int NOT NULL,
ReferencedID int NOT NULL,
Primary Key(ReferencerID,ReferencedID),
Foreign Key(ReferencerID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ReferencedID) references USER_(UserID));

CREATE TABLE SUCCESS(
UserID int NOT NULL,
AchievementID int NOT NULL,
Primary Key( UserID,AchievementID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(AchievementID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_MAILS(
Username varchar(20) NOT NULL,
Mail varchar(50),
Primary Key(Username,Mail),
Foreign Key(Username) references PROFILE_(Username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_PHONE(
Username varchar(20) NOT NULL,
Phone varchar(20),
Primary Key(UserName,Phone),
Foreign Key(Username) references PROFILE_(Username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_ADDRESS(
Username varchar(20) NOT NULL,
Address_ varchar(50),
Primary Key(Username,Address_),
Foreign Key(Username) references PROFILE_(Username)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CREATED(
CreatedID int NOT NULL,
CreatedDate date,
CreatedType varchar(10),
UserID int NOT NULL,
BookmarkID int,
Primary Key(CreatedID),
Foreign Key(UserID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkId));
ALTER TABLE CREATED ADD CONSTRAINT CREATEDTYPE_CHECK
CHECK (createdType IN ('group','page','activity','want_ad'));

CREATE TABLE WANT_AD(
CreatedID int NOT NULL,
JobAddress varchar(50),
JobLocation varchar(30),
CompanyID int NOT NULL,
Primary Key(CreatedID),
Foreign Key(CompanyID) references COMPANY(CompanyID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE GROUP_(
CreatedID int NOT NULL,
GroupName varchar(20),
Primary Key(CreatedID));


CREATE TABLE ACTIVITY(
CreatedID int NOT NULL,
ActivityName varchar(20),
ActivityLocation varchar(30),
Primary Key(CreatedID));


CREATE TABLE PAGE_(
CreatedID int NOT NULL,
SubCategory varchar(20),
MainCategory varchar(20),
Primary Key(CreatedID));

CREATE TABLE INTEREST(
InterestID int NOT NULL,
InterestType varchar(10),
LeaderID int,
GroupID int,
CompanyID int,
EduID int,
Primary Key(InterestID),
Foreign Key(LeaderID) references USER_(UserID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(GroupID) references GROUP_(CreatedID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CompanyID) references COMPANY(CompanyID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(EduID) references EDUCATION(EducationID)ON DELETE CASCADE ON UPDATE CASCADE);
ALTER TABLE INTEREST ADD CONSTRAINT TYPE_CHECK_INTEREST
CHECK (InterestType IN ('leader','group','company','education'));


CREATE TABLE CERTIFICATE_(
AchiID int NOT NULL,
CertificateName varchar(20),
CertDate date,
Primary Key(AchiID),
Foreign Key(AchiID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE LANGUAGE_(
AchiID int NOT NULL,
LanguageName varchar(20),
Primary Key(AchiID),
Foreign Key(AchiID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROJECT_(
AchiID int NOT NULL,
ProjectName varchar(20),
ProjDate date,
Primary Key(AchiID),
Foreign Key(AchiID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE ORGANIZATION_(
AchiID int NOT NULL,
OrganizationName varchar(20),
Primary Key(AchiID),
Foreign Key(AchiID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE ARTICLE(
ArticleID int NOT NULL,
ArticleName varchar(20),
PublishedID int NOT NULL,
Primary Key(ArticleID),
Foreign Key(PublishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE EVENT_(
EventID int NOT NULL,
PublishedID int NOT NULL,
Primary Key(EventID),
Foreign Key(PublishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PHOTO(
PhotoID int NOT NULL,
PublishedID int NOT NULL,
Primary Key(PhotoID),
Foreign Key(PublishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE VIDEO(
VideoID int NOT NULL,
PublishedID int NOT NULL,
VideoLength int CONSTRAINT VIDEO_LENGTH_CHECK CHECK(VideoLength > 0 AND VideoLength <= 3600),
Primary Key(VideoID),
Foreign Key(PublishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE APPLY_(
UserID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(UserID,CreatedID),
Foreign Key(UserID) references USER_(UserID),
Foreign Key(CreatedID) references CREATED(CreatedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE MANAGE(
UserID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(UserID,CreatedID),
Foreign Key(UserID) references USER_(UserID),
Foreign Key(CreatedID) references CREATED(CreatedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE JOIN_(
UserID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(UserID,CreatedID),
Foreign Key(UserID) references USER_(UserID),
Foreign Key(CreatedID) references CREATED(CreatedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE HAS_INTEREST(
InterestID int NOT NULL,
UserID int NOT NULL,
Primary Key(InterestID, UserID),
Foreign Key(InterestID) references INTEREST(InterestID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(UserID) references USER_(UserID));



















































