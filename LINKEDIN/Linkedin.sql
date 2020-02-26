CREATE TABLE MEMBER(
MemberID int NOT NULL,
Fname varchar(10),
Lname varchar(25),
Password_ varchar(20) NOT NULL,
Primary Key(MemberID));

CREATE TABLE PROFILE_(
ProfileID int NOT NULL,
Hometown varchar(15),
Birthdate date,
Primary Key(ProfileID));

CREATE TABLE EDUCATION(
EducationID int NOT NULL,
EduName varchar(50),
Primary Key(EducationID));

CREATE TABLE COMPANY(
CompanyID int NOT NULL,
CompanyName varchar(30),
Location_ varchar(20),
Primary Key(CompanyID));

CREATE TABLE BOOKMARK(
BookmarkID int NOT NULL,
Primary Key(BookmarkID));

CREATE TABLE PRIVACY(
PrivacyType int NOT NULL CONSTRAINT PRIVACY_TYPE_CHECK CHECK(privacyType > 0 AND privacyType <= 4),
PrivacyName varchar(20) CONSTRAINT PRIVACY_NAME_CHECK CHECK (privacyName IN ('Only Me','Public','Friends','Specific Friends')),
Primary Key(PrivacyType));

CREATE TABLE PUBLISHED(
PublishedID int NOT NULL,
PublishedDate date,
PrivacyType int,
Primary Key(PublishedID),
Foreign Key(PrivacyType) references PRIVACY(PrivacyType)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE ACHIEVEMENTS(
AchievementID int NOT NULL,
Primary Key(AchievementID));

CREATE TABLE MEMBER_TALENTS(
MemberID int NOT NULL,
TalentName varchar(30) NOT NULL,
Primary Key(MemberID,TalentName),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE MEMBER_PROFILE(
MemberID int NOT NULL,
ProfileID int NOT NULL,
Primary Key(MemberID,ProfileID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ProfileID) references PROFILE_(ProfileID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE STUDY(
MemberID int NOT NULL,
EducationID int NOT NULL,
StartDate date,
EndDate date,
Degree varchar(10),
Primary Key(MemberID,EducationID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(EducationID) references EDUCATION(EducationID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CAREER(
MemberID int NOT NULL,
CompanyID int NOT NULL,
StartDate date,
EndDate date,
Degree varchar(10),
Primary Key(MemberID,CompanyID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CompanyID) references COMPANY(CompanyID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CONNECT_MEMBER(
AdderID int NOT NULL,
AddedID int NOT NULL,
ConnectDate date,
Primary Key( AdderID,AddedID),
Foreign Key(AdderID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(AddedID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CHAT(
SenderID int NOT NULL,
ReceiverID int NOT NULL,
ChatDate date,
Primary Key(SenderID,ReceiverID),
Foreign Key(SenderID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ReceiverID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SAVE_(
MemberID int NOT NULL,
BookmarkID int NOT NULL,
SaveDate date,
Primary Key(MemberID,BookmarkID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE COMMENT(
MemberID int NOT NULL,
PublishedID int NOT NULL,
CommentDate date,
CommentText varchar(200),
Primary Key(MemberID,PublishedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SHARE(
MemberID int NOT NULL,
PublishedID int NOT NULL,
ShareDate date,
Primary Key(MemberID,PublishedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE LIKE_(
MemberID int NOT NULL,
PublishedID int NOT NULL,
LikeDate date,
Primary Key(MemberID,PublishedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(publishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE VIEW_PROFILE(
ViewerID int NOT NULL,
ViewedID int NOT NULL,
ViewDate date,
Primary Key(ViewerID,ViewedID),
Foreign Key(ViewerID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ViewedID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE REFERENCE(
ReferencerID int NOT NULL,
ReferencedID int NOT NULL,
Primary Key(ReferencerID,ReferencedID),
Foreign Key(ReferencerID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(ReferencedID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SUCCESS(
MemberID int NOT NULL,
AchievementID int NOT NULL,
Primary Key( MemberID,AchievementID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(AchievementID) references ACHIEVEMENTS(AchievementID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_MAILS(
ProfileID int NOT NULL,
Mail varchar(50),
Primary Key(ProfileID,Mail),
Foreign Key(ProfileID) references PROFILE_(ProfileID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_PHONE(
ProfileID int NOT NULL,
Phone varchar(20),
Primary Key(ProfileID,Phone),
Foreign Key(ProfileID) references PROFILE_(ProfileID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE PROFILE_ADDRESS(
ProfileID int NOT NULL,
Address_ varchar(50),
Primary Key(ProfileID,Address_),
Foreign Key(ProfileID) references PROFILE_(ProfileID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CREATED(
CreatedID int NOT NULL,
CreatedDate date,
CreatedType varchar(10),
MemberID int NOT NULL,
Primary Key(CreatedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);


ALTER TABLE CREATED ADD CONSTRAINT TYPE_CHECK
CHECK (CreatedType IN ('group','wantad'));


CREATE TABLE WANT_AD(
CreatedID int NOT NULL,
JobAddress varchar(50),
JobLocation varchar(30),
CompanyID int NOT NULL,
BookmarkID int,
Primary Key(CreatedID),
Foreign Key(CompanyID) references COMPANY(CompanyID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkID)ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE GROUP_(
CreatedID int NOT NULL,
GroupName varchar(20),
Primary Key(CreatedID));

CREATE TABLE INTEREST(
InterestID int NOT NULL,
InterestType varchar(10),
LeaderID int,
GroupID int,
CompanyID int,
EduID int,
Primary Key(InterestID),
Foreign Key(LeaderID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
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
BookmarkId int,
Primary Key(ArticleID),
Foreign Key(PublishedID) references PUBLISHED(PublishedID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(BookmarkID) references BOOKMARK(BookmarkID)ON DELETE CASCADE ON UPDATE CASCADE);

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
MemberID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(MemberID,CreatedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CreatedID) references CREATED(CreatedID));

CREATE TABLE MANAGE(
MemberID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(MemberID,CreatedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CreatedID) references CREATED(CreatedID));

CREATE TABLE JOIN_(
MemberID int NOT NULL,
CreatedID int NOT NULL,
Primary Key(MemberID,CreatedID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE,
Foreign Key(CreatedID) references CREATED(CreatedID));

CREATE TABLE HAS_INTEREST(
InterestID int NOT NULL,
MemberID int NOT NULL,
Primary Key(InterestID, MemberID),
Foreign Key(InterestID) references INTEREST(InterestID),
Foreign Key(MemberID) references MEMBER(MemberID)ON DELETE CASCADE ON UPDATE CASCADE);
