INSERT INTO MEMBER (MemberID,Password_,Fname,Lname) VALUES(1,'12345sk','Senol','Keskin');
INSERT INTO MEMBER (MemberID,Password_,Fname,Lname) VALUES(2,'sksksk','Sergen','Karatas');
INSERT INTO MEMBER (MemberID,Password_,Fname,Lname) VALUES(3,'cs55cs','Cihan','Simsir');
INSERT INTO MEMBER (MemberID,Password_,Fname,Lname) VALUES(4,'o06y','Ozlem','Yaziharman');
INSERT INTO MEMBER (MemberID,Password_,Fname,Lname) VALUES(5,'zzzzz','Mert','Gulbahce');

INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(1,2,'2018-12-16');
INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(1,3,'2018-12-16');
INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(1,4,'2018-12-11');
INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(2,3,'2010-12-16');
INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(2,4,'2018-10-16');
INSERT INTO CONNECT_MEMBER(AdderID,AddedID,ConnectDate) VALUES(3,4,'2018-12-16');

INSERT INTO PROFILE_(ProfileID,hometown,birthdate) 
VALUES(1,'izmir','2015-10-16');
INSERT INTO PROFILE_(ProfileID,hometown,birthdate)
VALUES(2,'izmir','2014-09-14');
INSERT INTO PROFILE_(ProfileID,hometown,birthdate)
VALUES(3,'samsun','2001-11-11');
INSERT INTO PROFILE_(ProfileID,hometown,birthdate)
VALUES(4,'ankara','2017-12-03');
INSERT INTO PROFILE_(ProfileID,hometown,birthdate)
VALUES(5,'denizli','2013-03-13');

INSERT INTO MEMBER_PROFILE(MemberID,ProfileID) VALUES(1,1);
INSERT INTO MEMBER_PROFILE(MemberID,ProfileID) VALUES(2,2);
INSERT INTO MEMBER_PROFILE(MemberID,ProfileID) VALUES(3,3);
INSERT INTO MEMBER_PROFILE(MemberID,ProfileID) VALUES(4,4);
INSERT INTO MEMBER_PROFILE(MemberID,ProfileID) VALUES(5,5);

INSERT INTO PROFILE_MAILS(ProfileID,mail) VALUES(1,'senolkeskin1537@gmail.com');
INSERT INTO PROFILE_MAILS(ProfileID,mail) VALUES(2,'srgnkrts@hotmail.com');
INSERT INTO PROFILE_MAILS(ProfileID,mail) VALUES(3,'samsunlu55@gmail.com');
INSERT INTO PROFILE_MAILS(ProfileID,mail) VALUES(4,'ozlemyazharman@gmail.com');
INSERT INTO PROFILE_MAILS(ProfileID,mail) VALUES(5,'mertgulbahce20@gmail.com');

INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (1,'Only Me');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (2,'Public');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (3,'Friends');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (4,'Specific Friends');

INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(1,'2018-12-18',1);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(2,'2018-11-18',1);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(3,'2018-10-18',2);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(4,'2018-09-18',2);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(5,'2018-12-18',3);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(6,'2018-12-18',3);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(7,'2018-12-16',4);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType) VALUES(8,'2018-12-16',4);

INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (1,1,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (1,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (3,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (4,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (5,3,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (6,3,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (7,4,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (8,4,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (4,5,'2018-12-18');
INSERT INTO SHARE(PublishedID,MemberID,ShareDate) VALUES (5,5,'2018-12-18');

INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (1,5,'2018-12-21');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (2,1,'2018-12-22');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (3,1,'2018-10-20');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (3,3,'2018-12-20');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (3,4,'2018-12-20');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (4,1,'2018-12-27');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (4,2,'2018-12-20');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (5,2,'2018-12-20');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (7,3,'2018-12-26');
INSERT INTO LIKE_(PublishedID,MemberID,LikeDate) VALUES (8,2,'2018-12-20');

INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (1,5,'2018-12-21','Güzel çýkmýþsýn kardeþim');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (2,1,'2018-12-22','Beðendim');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (3,1,'2018-10-20','Çok Beðendim');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (3,3,'2018-12-20','Samsun kadar güzel :)');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (3,4,'2018-12-20','Çok iyisin');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (4,1,'2018-12-27','Annengillere selam söyle');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (4,2,'2018-12-20',':))))))');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (5,2,'2018-12-20','Güzel fotoðraf');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (7,3,'2018-12-26','Harika');
INSERT INTO COMMENT(PublishedID,MemberID,CommentDate,CommentText) VALUES (8,2,'2018-12-20','Muhteþem');

INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(4,1,'2015-04-12')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(1,3,'2016-05-12')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(2,3,'2017-12-11')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(4,5,'2001-10-12')


INSERT INTO CREATED(createdID,createdType,CreatedDate,MemberID) 
VALUES (1,'wantad','2017-05-15',1);
INSERT INTO CREATED(createdID,createdType,CreatedDate,MemberID) 
VALUES (2,'wantad','2017-05-15',2);
INSERT INTO CREATED(createdID,createdType,CreatedDate,MemberID)  
VALUES (3,'group','2017-05-15',3);
INSERT INTO CREATED(createdID,createdType,CreatedDate,MemberID)  
VALUES (4,'group','2017-05-15',4);

INSERT INTO MANAGE(MemberID,createdID) VALUES (5,1) 

INSERT INTO JOIN_(MemberID,createdID) VALUES (2,1)
INSERT INTO JOIN_(MemberID,createdID) VALUES (3,1)
INSERT INTO JOIN_(MemberID,createdID) VALUES (4,1)
INSERT INTO JOIN_(MemberID,createdID) VALUES (5,1)

INSERT INTO BOOKMARK(BookmarkID) VALUES (1)
INSERT INTO BOOKMARK(BookmarkID) VALUES (2)
INSERT INTO BOOKMARK(BookmarkID) VALUES (3)

INSERT INTO EDUCATION(EducationID,eduName) VALUES (1,'EGE UNIVERSITY')
INSERT INTO EDUCATION(EducationID,eduName) VALUES (2,'MIT')
INSERT INTO EDUCATION(EducationID,eduName) VALUES (3,'HALÝL ATÝLLA ÝLKOKULU')
INSERT INTO EDUCATION(EducationID,eduName) VALUES (4,'SAMSUN ANADOLU LÝSESÝ')

INSERT INTO STUDY(MemberID,EducationID,startDate,endDate) VALUES (1,1,'2015-08-06',NULL)
INSERT INTO STUDY(MemberID,EducationID,startDate,endDate) VALUES (1,3,'2002-09-06','2010-06-01')
INSERT INTO STUDY(MemberID,EducationID,startDate,endDate) VALUES (3,4,'2010-09-11','2014-06-12')
INSERT INTO STUDY(MemberID,EducationID,startDate,endDate) VALUES (2,2,'2015-08-06',NULL)

INSERT INTO COMPANY(companyID,companyName,location_) VALUES(1,'sürsan','samsun')
INSERT INTO COMPANY(companyID,companyName,location_) VALUES(2,'intel','abd')
INSERT INTO COMPANY(companyID,companyName,location_) VALUES(3,'microsoft','abd')

INSERT INTO CAREER(MemberID,companyID,startDate,endDate) VALUES(1,2,'2020-10-10',NULL)
INSERT INTO CAREER(MemberID,companyID,startDate,endDate) VALUES(2,3,'2020-10-10',NULL)
INSERT INTO CAREER(MemberID,companyID,startDate,endDate) VALUES(3,1,'2020-10-10',NULL)
INSERT INTO CAREER(MemberID,companyID,startDate,endDate) VALUES(4,3,'2020-10-10',NULL)

INSERT INTO EVENT_(eventID,PublishedID) VALUES (1,1)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (2,2)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (3,3)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (4,4)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (5,5)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (6,6)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (7,7)
INSERT INTO EVENT_(eventID,PublishedID) VALUES (8,8)

INSERT INTO PHOTO(photoID,PublishedID) VALUES (1,1)
INSERT INTO PHOTO(photoID,PublishedID) VALUES (2,4)
INSERT INTO PHOTO(photoID,PublishedID) VALUES (3,8)
INSERT INTO PHOTO(photoID,PublishedID) VALUES (4,7)

INSERT INTO PROFILE_ADDRESS(ProfileID,address_) VALUES (1,'izmir-bornova')
INSERT INTO PROFILE_ADDRESS(ProfileID,address_) VALUES (2,'izmir-buca')
INSERT INTO PROFILE_ADDRESS(ProfileID,address_) VALUES (3,'samsun-ilkadým')
INSERT INTO PROFILE_ADDRESS(ProfileID,address_) VALUES (4,'ankara-çankaya')
INSERT INTO PROFILE_ADDRESS(ProfileID,address_) VALUES (5,'denizli-tavas')

INSERT INTO PROFILE_PHONE(ProfileID,phone) VALUES (1,'05448615996')
INSERT INTO PROFILE_PHONE(ProfileID,phone) VALUES (2,'05068865757')
INSERT INTO PROFILE_PHONE(ProfileID,phone) VALUES (3,'05054452163')
INSERT INTO PROFILE_PHONE(ProfileID,phone) VALUES (4,'05383534209')
INSERT INTO PROFILE_PHONE(ProfileID,phone) VALUES (5,'05542740627')

INSERT INTO SAVE_(MemberID,BookmarkID,SaveDate) VALUES (1,1,NULL)
INSERT INTO SAVE_(MemberID,BookmarkID,SaveDate) VALUES (2,1,NULL)
INSERT INTO SAVE_(MemberID,BookmarkID,SaveDate) VALUES (3,2,NULL)
INSERT INTO SAVE_(MemberID,BookmarkID,SaveDate) VALUES (4,3,NULL)
INSERT INTO SAVE_(MemberID,BookmarkID,SaveDate) VALUES (5,2,NULL)

INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (1,1,1000)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (2,4,100)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (3,8,15)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (4,7,3600)

INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (1)
INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (2)
INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (3)

INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (1,'turkce')
INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (2,'ingilizce')
INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (3,'almanca')

INSERT INTO APPLY_(MemberID,CreatedID) VALUES (1,1)
INSERT INTO APPLY_(MemberID,CreatedID) VALUES (2,1)
INSERT INTO APPLY_(MemberID,CreatedID) VALUES (3,2)
INSERT INTO APPLY_(MemberID,CreatedID) VALUES (4,2)

INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID,BookmarkId) VALUES (1,'AI',4,1)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID,BookmarkId) VALUES (2,'computer',1,1)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID,BookmarkId) VALUES (3,'database',3,2)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID,BookmarkId) VALUES (4,'network',7,3)

INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(1,'x','2017-12-12')
INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(2,'x','2017-12-12')
INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(3,'x','2017-12-12')

INSERT INTO GROUP_(CreatedID,GroupName) VALUES(3,'ege mezunlar')
INSERT INTO GROUP_(CreatedID,GroupName) VALUES(4,'izmir serbest bölge')

INSERT INTO INTEREST(InterestID,InterestType,LeaderID) VALUES (1,'leader',2)
INSERT INTO INTEREST(InterestID,InterestType,GroupID) VALUES (2,'group',3)
INSERT INTO INTEREST(InterestID,InterestType,CompanyID) VALUES (3,'company',3)
INSERT INTO INTEREST(InterestID,InterestType,EduID) VALUES (4,'education',2)

INSERT INTO HAS_INTEREST(MemberID,InterestID) VALUES (1,1)
INSERT INTO HAS_INTEREST(MemberID,InterestID) VALUES (2,2)
INSERT INTO HAS_INTEREST(MemberID,InterestID) VALUES (3,3)
INSERT INTO HAS_INTEREST(MemberID,InterestID) VALUES (5,4)

INSERT INTO MEMBER_TALENTS(MemberID,TalentName) VALUES (1,'c')
INSERT INTO MEMBER_TALENTS(MemberID,TalentName) VALUES (1,'java')
INSERT INTO MEMBER_TALENTS(MemberID,TalentName) VALUES (1,'python')

INSERT INTO ORGANIZATION_(AchiID,OrganizationName) VALUES (1,'philsa gezisi')
INSERT INTO ORGANIZATION_(AchiID,OrganizationName) VALUES (2,'ege bilim þenliði')

INSERT INTO PROJECT_(AchiID,ProjectName,ProjDate) VALUES (1,'x','2016-12-12')
INSERT INTO PROJECT_(AchiID,ProjectName,ProjDate) VALUES (2,'y','2017-12-12')

INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,2)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,3)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,4)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,5)

INSERT INTO SUCCESS(MemberID,AchievementID) VALUES (1,1)
INSERT INTO SUCCESS(MemberID,AchievementID) VALUES (1,2)
INSERT INTO SUCCESS(MemberID,AchievementID) VALUES (1,3)

INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(1,2,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(1,3,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(2,4,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(2,5,'2018-10-11')

INSERT INTO WANT_AD(CreatedID,JobAddress,JobLocation,CompanyID,BookmarkID)
VALUES(1,'izmir','bornova',2,1)
INSERT INTO WANT_AD(CreatedID,JobAddress,JobLocation,CompanyID,BookmarkID)
VALUES(2,'abd','new york',3,1)

UPDATE MEMBER SET MEMBER.Password_ = '1223456' WHERE MEMBER.fname = 'Senol'
UPDATE GROUP_ SET GROUP_.GroupName = '2015 Giriþliler'	WHERE GROUP_.CreatedID = 4
UPDATE CAREER SET CAREER.endDate = '2018-12-15' WHERE CAREER.MemberID= 4


DELETE FROM VIDEO WHERE VIDEO.videoID = 3
DELETE FROM SAVE_ WHERE SAVE_.MemberID = 1 AND SAVE_.BookmarkID =1
DELETE FROM EVENT_ WHERE EVENT_.PublishedID = 8

SELECT MEMBER.MemberID,MEMBER.Fname
FROM MEMBER,LIKE_
WHERE MEMBER.MemberID=LIKE_.MemberID AND  LIKE_.PublishedID=4;

SELECT MEMBER.MemberID,MEMBER.Fname, MEMBER.Lname, COMMENT.CommentText
FROM PUBLISHED,MEMBER,COMMENT
WHERE PUBLISHED.PublishedID = COMMENT.PublishedID AND COMMENT.MemberID = MEMBER.MemberID AND PUBLISHED.PublishedID = 3

SELECT MEMBER.MemberID,MEMBER.Fname
FROM MEMBER,JOIN_,CREATED
WHERE MEMBER.MemberID = JOIN_.MemberID AND JOIN_.createdID=CREATED.createdID AND  CREATED.createdType='group'

SELECT STUDY.MemberID
FROM EDUCATION,STUDY
WHERE EDUCATION.EducationID=STUDY.EducationID AND EDUCATION.eduName='EGE UNIVERSITY'

SELECT M.Fname,C.addedID
FROM MEMBER AS M,CONNECT_MEMBER AS C
WHERE M.MemberID=C.adderID
GROUP BY M.Fname,C.addedID 

SELECT CREATED.CreatedID,CREATED.createdType,MANAGE.MemberID
FROM CREATED,MANAGE
WHERE CREATED.createdID=MANAGE.createdID

SELECT MEMBER.Fname,MEMBER.Lname
FROM MEMBER
WHERE MEMBER.MemberID IN (SELECT CONNECT_MEMBER.adderID
					   FROM CONNECT_MEMBER
					   WHERE addedID =2)

SELECT MEMBER.Fname,MEMBER.lname
FROM MEMBER
WHERE MEMBER.MemberID NOT IN (SELECT MemberID
						   FROM LIKE_
						   WHERE  LIKE_.PublishedID=4)

SELECT MEMBER.fname,MEMBER.lname
FROM MEMBER,STUDY,EDUCATION
WHERE MEMBER.MemberID=STUDY.MemberID AND STUDY.EducationID=EDUCATION.EducationID AND EDUCATION.eduname='SAMSUN ANADOLU LÝSESÝ';

SELECT CREATED.CreatedID
FROM  CREATED
WHERE CREATED.CreatedType = 'group'

SELECT MemberID
FROM SHARE,PUBLISHED
WHERE SHARE.PublishedID=PUBLISHED.PublishedID AND PUBLISHED.PrivacyType=1




