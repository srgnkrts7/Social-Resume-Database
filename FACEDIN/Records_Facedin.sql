INSERT INTO USER_ (userID,Password_,Fname,Lname) VALUES(1,'12345sk','Senol','Keskin');
INSERT INTO USER_ (userID,Password_,Fname,Lname) VALUES(2,'sksksk','Sergen','Karatas');
INSERT INTO USER_ (userID,Password_,Fname,Lname) VALUES(3,'cs55cs','Cihan','Simsir');
INSERT INTO USER_ (userID,Password_,Fname,Lname) VALUES(4,'o06y','Ozlem','Yaziharman');
INSERT INTO USER_ (userID,Password_,Fname,Lname) VALUES(5,'zzzzz','Mert','Gulbahce');

INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(1,2,'2018-12-16');
INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(1,3,'2018-12-16');
INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(1,4,'2018-12-11');
INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(2,3,'2010-12-16');
INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(2,4,'2018-10-16');
INSERT INTO CONNECT_USER(adderID,addedID,ConnectDate) VALUES(3,4,'2018-12-16');

INSERT INTO PROFILE_(username,hometown,sex,birthdate,Religion) 
VALUES('snlkskn35','izmir','Male','2015-10-16','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,Religion)
VALUES('srgnkrts','izmir','Male','2014-09-14','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,Religion)
VALUES('cristianocihan','samsun','Male','2001-11-11','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,Religion)
VALUES('ozlemyaziharman','ankara','Female','2017-12-03','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,Religion)
VALUES('gulbahce20','denizli','Male','2013-03-13','MUSLUMAN');

INSERT INTO USER_PROFILE(userID,username) VALUES(1,'snlkskn35');
INSERT INTO USER_PROFILE(userID,username) VALUES(2,'srgnkrts');
INSERT INTO USER_PROFILE(userID,username) VALUES(3,'cristianocihan');
INSERT INTO USER_PROFILE(userID,username) VALUES(4,'ozlemyaziharman');
INSERT INTO USER_PROFILE(userID,username) VALUES(5,'gulbahce20');

INSERT INTO PROFILE_MAILS(username,mail) VALUES('snlkskn35','senolkeskin1537@gmail.com');
INSERT INTO PROFILE_MAILS(username,mail) VALUES('srgnkrts','srgnkrts@hotmail.com');
INSERT INTO PROFILE_MAILS(username,mail) VALUES('cristianocihan','samsunlu55@gmail.com');
INSERT INTO PROFILE_MAILS(username,mail) VALUES('ozlemyaziharman','ozlemyazharman@gmail.com');
INSERT INTO PROFILE_MAILS(username,mail) VALUES('gulbahce20','mertgulbahce20@gmail.com');

INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (1,'Only Me');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (2,'Public');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (3,'Friends');
INSERT INTO PRIVACY(privacyType,PrivacyName) VALUES (4,'Specific Friends');

INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(1,'2018-12-18',1,1);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(2,'2018-11-18',1,1);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(3,'2018-10-18',2,2);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(4,'2018-09-18',2,2);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(5,'2018-12-18',3,3);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(6,'2018-12-18',3,3);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(7,'2018-12-16',4,1);
INSERT INTO PUBLISHED(PublishedID,PublishedDate,PrivacyType,BookmarkID) VALUES(8,'2018-12-16',4,2);

INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (1,1,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (1,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (3,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (4,2,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (5,3,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (6,3,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (7,4,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (8,4,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (4,5,'2018-12-18');
INSERT INTO SHARE(PublishedID,userID,ShareDate) VALUES (5,5,'2018-12-18');

INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (1,5,'2018-12-21');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (2,1,'2018-12-22');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (3,1,'2018-10-20');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (3,3,'2018-12-20');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (3,4,'2018-12-20');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (4,1,'2018-12-27');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (4,2,'2018-12-20');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (5,2,'2018-12-20');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (7,3,'2018-12-26');
INSERT INTO LIKE_(PublishedID,userID,LikeDate) VALUES (8,2,'2018-12-20');

INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (1,5,'2018-12-21','Güzel çýkmýþsýn kardeþim');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (2,1,'2018-12-22','Beðendim');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (3,1,'2018-10-20','Çok Beðendim');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (3,3,'2018-12-20','Samsun kadar güzel :)');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (3,4,'2018-12-20','Çok iyisin');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (4,1,'2018-12-27','Annengillere selam söyle');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (4,2,'2018-12-20',':))))))');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (5,2,'2018-12-20','Güzel fotoðraf');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (7,3,'2018-12-26','Harika');
INSERT INTO COMMENT(PublishedID,userID,CommentDate,CommentText) VALUES (8,2,'2018-12-20','Muhteþem');

INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(4,1,'2015-04-12')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(1,3,'2016-05-12')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(2,3,'2017-12-11')
INSERT INTO CHAT(senderID,receiverID,ChatDate) VALUES(4,5,'2001-10-12')


INSERT INTO CREATED(createdID,userID,BookmarkID,createdType) 
VALUES (1,1,1,'group');
INSERT INTO CREATED(createdID,userID,BookmarkID,createdType)  
VALUES (2,1,1,'page');
INSERT INTO CREATED(createdID,userID,BookmarkID,createdType) 
VALUES (3,1,1,'activity');
INSERT INTO CREATED(createdID,userID,BookmarkID,createdType) 
VALUES (4,2,1,'page');

INSERT INTO GROUP_(CreatedID,GroupName) VALUES(3,'ege mezunlar')
INSERT INTO GROUP_(CreatedID,GroupName) VALUES(4,'izmir serbest bölge')

INSERT INTO MANAGE(userID,createdID) VALUES (5,1) 

INSERT INTO JOIN_(userID,createdID) VALUES (2,1)
INSERT INTO JOIN_(userID,createdID) VALUES (3,1)
INSERT INTO JOIN_(userID,createdID) VALUES (4,1)
INSERT INTO JOIN_(userID,createdID) VALUES (5,1)

INSERT INTO BOOKMARK(BookmarkID) VALUES (1)
INSERT INTO BOOKMARK(BookmarkID) VALUES (2)
INSERT INTO BOOKMARK(BookmarkID) VALUES (3)

INSERT INTO EDUCATION(EducationID,EducationName) VALUES (1,'EGE UNIVERSITY')
INSERT INTO EDUCATION(EducationID,EducationName) VALUES (2,'MIT')
INSERT INTO EDUCATION(EducationID,EducationName) VALUES (3,'HALÝL ATÝLLA ÝLKOKULU')
INSERT INTO EDUCATION(EducationID,EducationName) VALUES (4,'SAMSUN ANADOLU LÝSESÝ')

INSERT INTO STUDY(userID,EducationID,startDate,endDate) VALUES (1,1,'2015-08-06',NULL)
INSERT INTO STUDY(userID,EducationID,startDate,endDate) VALUES (1,3,'2002-09-06','2010-06-01')
INSERT INTO STUDY(userID,EducationID,startDate,endDate) VALUES (3,4,'2010-09-11','2014-06-12')
INSERT INTO STUDY(userID,EducationID,startDate,endDate) VALUES (2,2,'2015-08-06',NULL)

INSERT INTO COMPANY(companyID,companyName,CompanyLocation) VALUES(1,'sürsan','samsun')
INSERT INTO COMPANY(companyID,companyName,CompanyLocation) VALUES(2,'intel','abd')
INSERT INTO COMPANY(companyID,companyName,CompanyLocation) VALUES(3,'microsoft','abd')

INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(1,2,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(2,3,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(3,1,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(4,3,'2020-10-10',NULL)

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

INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('snlkskn35','izmir-bornova')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('srgnkrts','izmir-buca')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('cristianocihan','samsun-ilkadým')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('ozlemyaziharman','ankara-çankaya')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('gulbahce20','denizli-tavas')



INSERT INTO PROFILE_PHONE(username,phone) VALUES ('snlkskn35','05448615996')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('srgnkrts','05068865757')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('ozlemyaziharman','05054452163')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('cristianocihan','05383534209')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('gulbahce20','05542740627')

INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (1,1,NULL)
INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (1,2,NULL)
INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (2,1,NULL)
INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (3,2,NULL)
INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (4,3,NULL)
INSERT INTO SAVE_(userID,BookmarkID,SaveDate) VALUES (5,2,NULL)

INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (1,1,15)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (2,4,60)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (3,8,30)
INSERT INTO VIDEO(videoID,PublishedID,VideoLength) VALUES (4,7,42)

INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (1)
INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (2)
INSERT INTO ACHIEVEMENTS(AchievementID) VALUES (3)

INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (1,'turkce')
INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (2,'ingilizce')
INSERT INTO LANGUAGE_(AchiID,LanguageName) VALUES (3,'almanca')

INSERT INTO APPLY_(UserID,CreatedID) VALUES (1,1)
INSERT INTO APPLY_(UserID,CreatedID) VALUES (2,1)
INSERT INTO APPLY_(UserID,CreatedID) VALUES (3,2)
INSERT INTO APPLY_(UserID,CreatedID) VALUES (4,2)

INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID) VALUES (1,'AI',4)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID) VALUES (2,'computer',1)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID) VALUES (3,'database',3)
INSERT INTO ARTICLE(ArticleID,ArticleName,PublishedID) VALUES (4,'network',7)

INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(1,'x','2017-12-12')
INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(2,'x','2017-12-12')
INSERT INTO CERTIFICATE_(AchiID,CertificateName,CertDate) VALUES(3,'x','2017-12-12')

INSERT INTO GROUP_(CreatedID,GroupName) VALUES(3,'ege mezunlar')
INSERT INTO GROUP_(CreatedID,GroupName) VALUES(4,'izmir serbest bölge')

INSERT INTO INTEREST(InterestID,InterestType,LeaderID) VALUES (1,'leader',2)
INSERT INTO INTEREST(InterestID,InterestType,GroupID) VALUES (2,'group',3)
INSERT INTO INTEREST(InterestID,InterestType,CompanyID) VALUES (3,'company',3)
INSERT INTO INTEREST(InterestID,InterestType,EduID) VALUES (4,'education',2)

INSERT INTO HAS_INTEREST(UserID,InterestID) VALUES (1,1)
INSERT INTO HAS_INTEREST(UserID,InterestID) VALUES (2,2)
INSERT INTO HAS_INTEREST(UserID,InterestID) VALUES (3,3)
INSERT INTO HAS_INTEREST(UserID,InterestID) VALUES (5,4)

INSERT INTO USER_TALENTS(UserID,TalentName) VALUES (1,'c')
INSERT INTO USER_TALENTS(UserID,TalentName) VALUES (1,'java')
INSERT INTO USER_TALENTS(UserID,TalentName) VALUES (1,'python')

INSERT INTO ORGANIZATION_(AchiID,OrganizationName) VALUES (1,'philsa gezisi')
INSERT INTO ORGANIZATION_(AchiID,OrganizationName) VALUES (2,'ege bilim þenliði')

INSERT INTO PROJECT_(AchiID,ProjectName,ProjDate) VALUES (1,'x','2016-12-12')
INSERT INTO PROJECT_(AchiID,ProjectName,ProjDate) VALUES (2,'y','2017-12-12')

INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,2)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,3)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,4)
INSERT INTO REFERENCE(ReferencerID,ReferencedID) VALUES (1,5)

INSERT INTO SUCCESS(UserID,AchievementID) VALUES (1,1)
INSERT INTO SUCCESS(UserID,AchievementID) VALUES (1,2)
INSERT INTO SUCCESS(UserID,AchievementID) VALUES (1,3)

INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(1,2,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(1,3,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(2,4,'2018-10-11')
INSERT INTO VIEW_PROFILE(ViewerID,ViewedID,ViewDate) VALUES(2,5,'2018-10-11')

INSERT INTO WANT_AD(CreatedID,JobAddress,JobLocation,CompanyID)
VALUES(1,'izmir','bornova',2)
INSERT INTO WANT_AD(CreatedID,JobAddress,JobLocation,CompanyID)
VALUES(2,'abd','new york',3)

INSERT INTO ACTIVITY(CreatedID,ActivityName,ActivityLocation) VALUES (1,'Sinema Günü','samsun-ilkadým-piazza');
INSERT INTO ACTIVITY(CreatedID,ActivityName,ActivityLocation) VALUES (2,'Samsunlular toplanýyor','izmir');

INSERT INTO PAGE_(CreatedID,MainCategory,SubCategory) VALUES (2,'Teknoloji','Database Systems')
INSERT INTO PAGE_(CreatedID,MainCategory,SubCategory) VALUES (4,'Gastroloji','Yöresel Yemekler')



UPDATE USER_ SET USER_.Password_ = '1223456' WHERE USER_.fname = 'Senol'
UPDATE GROUP_ SET GROUP_.GroupName = '2015 Giriþliler'	WHERE GROUP_.createdID = 2
UPDATE CAREER SET CAREER.endDate = '2018-12-15' WHERE CAREER.userID = 4


DELETE FROM VIDEO WHERE VIDEO.videoID = 3
DELETE FROM SAVE_ WHERE SAVE_.userID = 1 AND SAVE_.BookmarkID =1
DELETE FROM EVENT_ WHERE EVENT_.PublishedID = 8

SELECT USER_.userID,USER_.fname
FROM USER_,LIKE_
WHERE USER_.userID=LIKE_.userID AND  LIKE_.PublishedID=4;

SELECT USER_.userID,USER_.fname, USER_.lname , COMMENT.CommentText
FROM PUBLISHED,USER_,COMMENT
WHERE PUBLISHED.PublishedID = COMMENT.PublishedID AND COMMENT.userID = USER_.userID AND PUBLISHED.PublishedID=3

SELECT USER_.userID,USER_.fname
FROM USER_,JOIN_,CREATED
WHERE USER_.userID=JOIN_.userID AND JOIN_.createdID=CREATED.createdID AND  JOIN_.createdID=CREATED.createdID AND  CREATED.createdType='group'
SELECT STUDY.userID
FROM EDUCATION,STUDY
WHERE EDUCATION.EducationID=STUDY.EducationID AND EDUCATION.EducationName='EGE UNIVERSITY'

SELECT U.fname,C.addedID
FROM USER_ AS U,CONNECT_USER AS C
WHERE U.userID=C.addedID
GROUP BY U.fname,C.addedID 

SELECT CREATED.CreatedID,CREATED.createdType,MANAGE.UserID
FROM CREATED,MANAGE
WHERE CREATED.createdID=MANAGE.createdID


SELECT USER_.fname,USER_.lname
FROM USER_
WHERE USER_.userID IN (SELECT CONNECT_USER.adderID
					   FROM CONNECT_USER
					   WHERE addedID =2)

SELECT USER_.fname,USER_.lname
FROM USER_
WHERE USER_.userID NOT IN (SELECT userID
						   FROM LIKE_
						   WHERE  LIKE_.PublishedID=4)

SELECT USER_.fname,USER_.lname,EDUCATION.EducationID
FROM USER_,STUDY,EDUCATION
WHERE USER_.userID=STUDY.userID AND STUDY.EducationID=EDUCATION.EducationID AND EDUCATION.EducationName='SAMSUN ANADOLU LÝSESÝ';


SELECT CREATED.CreatedID
FROM  CREATED
WHERE CREATED.CreatedType = 'group'


SELECT UserID
FROM SHARE,PUBLISHED
WHERE SHARE.PublishedID=PUBLISHED.PublishedID AND PUBLISHED.PrivacyType=1
