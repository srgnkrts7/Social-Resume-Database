INSERT INTO USER_ (userID,pw,Fname,Lname) VALUES(1,'12345sk','Senol','Keskin');
INSERT INTO USER_ (userID,pw,Fname,Lname) VALUES(2,'sksksk','Sergen','Karatas');
INSERT INTO USER_ (userID,pw,Fname,Lname) VALUES(3,'cs55cs','Cihan','Simsir');
INSERT INTO USER_ (userID,pw,Fname,Lname) VALUES(4,'o06y','Ozlem','Yaziharman');
INSERT INTO USER_ (userID,pw,Fname,Lname) VALUES(5,'zzzzz','Mert','Gulbahce');

INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(1,2,'2018-12-16');
INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(1,3,'2018-12-16');
INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(1,4,'2018-12-11');
INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(2,3,'2010-12-16');
INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(2,4,'2018-10-16');
INSERT INTO FRIENDSHIP(adderID,addedID,dates) VALUES(3,4,'2018-12-16');

INSERT INTO PROFILE_(username,hometown,sex,birthdate,region) 
VALUES('snlkskn35','izmir','Male','2015-10-16','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,region)
VALUES('srgnkrts','izmir','Male','2014-09-14','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,region)
VALUES('cristianocihan','samsun','Male','2001-11-11','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,region)
VALUES('ozlemyaziharman','ankara','Female','2017-12-03','MUSLUMAN');
INSERT INTO PROFILE_(username,hometown,sex,birthdate,region)
VALUES('gulbahce20','denizli','Male','2013-03-13','MUSLUMAN');

INSERT INTO USER_PROFILE(userID,username) VALUES(1,'snlkskn35');
INSERT INTO USER_PROFILE(userID,username) VALUES(2,'srgnkrts');
INSERT INTO USER_PROFILE(userID,username) VALUES(3,'cristianocihan');
INSERT INTO USER_PROFILE(userID,username) VALUES(4,'ozlemyaziharman');
INSERT INTO USER_PROFILE(userID,username) VALUES(5,'gulbahce20');

INSERT INTO PROFILE_MAIL(username,mail) VALUES('snlkskn35','senolkeskin1537@gmail.com');
INSERT INTO PROFILE_MAIL(username,mail) VALUES('srgnkrts','srgnkrts@hotmail.com');
INSERT INTO PROFILE_MAIL(username,mail) VALUES('cristianocihan','samsunlu55@gmail.com');
INSERT INTO PROFILE_MAIL(username,mail) VALUES('ozlemyaziharman','ozlemyazharman@gmail.com');
INSERT INTO PROFILE_MAIL(username,mail) VALUES('gulbahce20','mertgulbahce20@gmail.com');

INSERT INTO PRIVACY(privacy_type,privacy_name) VALUES (1,'Only Me');
INSERT INTO PRIVACY(privacy_type,privacy_name) VALUES (2,'Public');
INSERT INTO PRIVACY(privacy_type,privacy_name) VALUES (3,'Friends');
INSERT INTO PRIVACY(privacy_type,privacy_name) VALUES (4,'Specific Friends');

INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(1,'2018-12-18',1,1);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(2,'2018-11-18',1,1);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(3,'2018-10-18',2,2);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(4,'2018-09-18',2,2);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(5,'2018-12-18',3,3);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(6,'2018-12-18',3,3);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(7,'2018-12-16',4,1);
INSERT INTO POST(postID,dates,privacy_type,book_markID) VALUES(8,'2018-12-16',4,2);

INSERT INTO SHARE(postID,userID,dates) VALUES (1,1,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (1,2,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (3,2,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (4,2,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (5,3,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (6,3,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (7,4,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (8,4,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (4,5,'2018-12-18');
INSERT INTO SHARE(postID,userID,dates) VALUES (5,5,'2018-12-18');

INSERT INTO LIKE_(postID,userID,dates) VALUES (1,5,'2018-12-21');
INSERT INTO LIKE_(postID,userID,dates) VALUES (2,1,'2018-12-22');
INSERT INTO LIKE_(postID,userID,dates) VALUES (3,1,'2018-10-20');
INSERT INTO LIKE_(postID,userID,dates) VALUES (3,3,'2018-12-20');
INSERT INTO LIKE_(postID,userID,dates) VALUES (3,4,'2018-12-20');
INSERT INTO LIKE_(postID,userID,dates) VALUES (4,1,'2018-12-27');
INSERT INTO LIKE_(postID,userID,dates) VALUES (4,2,'2018-12-20');
INSERT INTO LIKE_(postID,userID,dates) VALUES (5,2,'2018-12-20');
INSERT INTO LIKE_(postID,userID,dates) VALUES (7,3,'2018-12-26');
INSERT INTO LIKE_(postID,userID,dates) VALUES (8,2,'2018-12-20');

INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (1,5,'2018-12-21','Güzel çýkmýþsýn kardeþim');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (2,1,'2018-12-22','Beðendim');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (3,1,'2018-10-20','Çok Beðendim');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (3,3,'2018-12-20','Samsun kadar güzel :)');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (3,4,'2018-12-20','Çok iyisin');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (4,1,'2018-12-27','Annengillere selam söyle');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (4,2,'2018-12-20',':))))))');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (5,2,'2018-12-20','Güzel fotoðraf');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (7,3,'2018-12-26','Harika');
INSERT INTO COMMENT(postID,userID,dates,text_) VALUES (8,2,'2018-12-20','Muhteþem');

INSERT INTO CHAT(senderID,receiverID,text_,dates) VALUES(4,1,':)','2015-04-12')
INSERT INTO CHAT(senderID,receiverID,text_,dates) VALUES(1,3,'Naber','2016-05-12')
INSERT INTO CHAT(senderID,receiverID,text_,dates) VALUES(2,3,'Bucalýyýz bize saygý duyacaksýn!','2017-12-11')
INSERT INTO CHAT(senderID,receiverID,text_,dates) VALUES(4,5,'Kanka yarýn gelecek misin?','2001-10-12')


INSERT INTO CREATED(createdID,userID,book_markID,createdType,createdName,about) 
VALUES (1,1,1,'group','izmirli dostlar','arkadaslik');
INSERT INTO CREATED(createdID,userID,book_markID,createdType,createdName,mainCategory,subCategory) 
VALUES (2,1,1,'page','izmirliler','eglence','sohbet');
INSERT INTO CREATED(createdID,userID,book_markID,createdType,createdName,location_,startDate,endDate) 
VALUES (3,1,1,'activity','izmirde buluþma','izmir','2017-05-15','2017-05-15');
INSERT INTO CREATED(createdID,userID,book_markID,createdType,createdName,mainCategory,subCategory) 
VALUES (4,2,1,'page','SAMSUNLULAR','eglence','sohbet');

INSERT INTO MANAGE(userID,createdID) VALUES (5,1) 

INSERT INTO JOIN_(userID,createdID) VALUES (2,1)
INSERT INTO JOIN_(userID,createdID) VALUES (3,1)
INSERT INTO JOIN_(userID,createdID) VALUES (4,1)
INSERT INTO JOIN_(userID,createdID) VALUES (5,1)

INSERT INTO BOOK_MARK(book_markID) VALUES (1)
INSERT INTO BOOK_MARK(book_markID) VALUES (2)
INSERT INTO BOOK_MARK(book_markID) VALUES (3)

INSERT INTO EDUCATION(eduID,eduName) VALUES (1,'EGE UNIVERSITY')
INSERT INTO EDUCATION(eduID,eduName) VALUES (2,'MIT')
INSERT INTO EDUCATION(eduID,eduName) VALUES (3,'HALÝL ATÝLLA ÝLKOKULU')
INSERT INTO EDUCATION(eduID,eduName) VALUES (4,'SAMSUN ANADOLU LÝSESÝ')

INSERT INTO STUDY(userID,eduID,startDate,endDate) VALUES (1,1,'2015-08-06',NULL)
INSERT INTO STUDY(userID,eduID,startDate,endDate) VALUES (1,3,'2002-09-06','2010-06-01')
INSERT INTO STUDY(userID,eduID,startDate,endDate) VALUES (3,4,'2010-09-11','2014-06-12')
INSERT INTO STUDY(userID,eduID,startDate,endDate) VALUES (2,2,'2015-08-06',NULL)

INSERT INTO COMPANY(companyID,companyName,location_) VALUES(1,'sürsan','samsun')
INSERT INTO COMPANY(companyID,companyName,location_) VALUES(2,'intel','abd')
INSERT INTO COMPANY(companyID,companyName,location_) VALUES(3,'microsoft','abd')

INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(1,2,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(2,3,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(3,1,'2020-10-10',NULL)
INSERT INTO CAREER(userID,companyID,startDate,endDate) VALUES(4,3,'2020-10-10',NULL)

INSERT INTO EVENT_(eventID,postID) VALUES (1,1)
INSERT INTO EVENT_(eventID,postID) VALUES (2,2)
INSERT INTO EVENT_(eventID,postID) VALUES (3,3)
INSERT INTO EVENT_(eventID,postID) VALUES (4,4)
INSERT INTO EVENT_(eventID,postID) VALUES (5,5)
INSERT INTO EVENT_(eventID,postID) VALUES (6,6)
INSERT INTO EVENT_(eventID,postID) VALUES (7,7)
INSERT INTO EVENT_(eventID,postID) VALUES (8,8)

INSERT INTO PHOTO(photoID,postID,photoname) VALUES (1,1,'photo.jpeg')
INSERT INTO PHOTO(photoID,postID,photoname) VALUES (2,4,'photo1.jpeg')
INSERT INTO PHOTO(photoID,postID,photoname) VALUES (3,8,'photo2.jpeg')
INSERT INTO PHOTO(photoID,postID,photoname) VALUES (4,7,'photo3.jpeg')

INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('snlkskn35','izmir-bornova')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('srgnkrts','izmir-buca')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('cristianocihan','samsun-ilkadým')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('ozlemyaziharman','ankara-çankaya')
INSERT INTO PROFILE_ADDRESS(username,address_) VALUES ('gulbahce20','denizli-tavas')

INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('snlkskn35','turkce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('srgnkrts','turkce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('cristianocihan','turkce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('ozlemyaziharman','turkce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('gulbahce20','turkce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('snlkskn35','ingilizce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('srgnkrts','ingilizce')
INSERT INTO PROFILE_LANGUAGE(username,language_) VALUES ('srgnkrts','portekizce')

INSERT INTO PROFILE_PHONE(username,phone) VALUES ('snlkskn35','05448615996')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('srgnkrts','05068865757')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('ozlemyaziharman','05054452163')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('cristianocihan','05383534209')
INSERT INTO PROFILE_PHONE(username,phone) VALUES ('gulbahce20','05542740627')

INSERT INTO SAVES(userID,book_markID,dates) VALUES (1,1,NULL)
INSERT INTO SAVES(userID,book_markID,dates) VALUES (1,2,NULL)
INSERT INTO SAVES(userID,book_markID,dates) VALUES (2,1,NULL)
INSERT INTO SAVES(userID,book_markID,dates) VALUES (3,2,NULL)
INSERT INTO SAVES(userID,book_markID,dates) VALUES (4,3,NULL)
INSERT INTO SAVES(userID,book_markID,dates) VALUES (5,2,NULL)

INSERT INTO VIDEO(videoID,postID,videoname) VALUES (1,1,'video.jpeg')
INSERT INTO VIDEO(videoID,postID,videoname) VALUES (2,4,'video1.jpeg')
INSERT INTO VIDEO(videoID,postID,videoname) VALUES (3,8,'video2.jpeg')
INSERT INTO VIDEO(videoID,postID,videoname) VALUES (4,7,'video3.jpeg')

INSERT INTO CHAT(senderID,receiverID,dates,text_) VALUES (1,2,'2015-12-12','NASILSIN')


UPDATE USER_ SET USER_.pw = '1223456' WHERE USER_.fname = 'Senol'
UPDATE CREATED SET CREATED.createdName = '2015 Giriþliler'	WHERE CREATED.createdID = 2
UPDATE CAREER SET CAREER.endDate = '2018-12-15' WHERE CAREER.userID = 4


DELETE FROM VIDEO WHERE VIDEO.videoID = 3
DELETE FROM SAVES WHERE SAVES.userID = 1 AND SAVES.book_markID =1
DELETE FROM EVENT_ WHERE EVENT_.postID = 8

SELECT USER_.userID,USER_.fname
FROM USER_,LIKE_
WHERE USER_.userID=LIKE_.userID AND  LIKE_.postID=4;

SELECT USER_.userID,USER_.fname, USER_.lname , COMMENT.text_
FROM POST,USER_,COMMENT
WHERE POST.postID = COMMENT.postID AND COMMENT.userID = USER_.userID AND POST.postID=3

SELECT USER_.userID,USER_.fname
FROM USER_,JOIN_,CREATED
WHERE USER_.userID=JOIN_.userID AND JOIN_.createdID=CREATED.createdID AND CREATED.createdName='izmirli dostlar' AND CREATED.createdType='group'

SELECT STUDY.userID
FROM EDUCATION,STUDY
WHERE EDUCATION.eduID=STUDY.eduID AND EDUCATION.eduName='EGE UNIVERSITY'

SELECT U.fname,F.addedID
FROM USER_ AS U,FRIENDSHIP AS F
WHERE U.userID=F.adderID
GROUP BY U.fname,F.addedID 

SELECT CREATED.createdName,CREATED.createdType,MANAGE.userID
FROM CREATED,MANAGE
WHERE CREATED.createdID=MANAGE.createdID

SELECT USER_.fname,USER_.lname
FROM USER_
WHERE USER_.userID IN (SELECT FRIENDSHIP.adderID
					   FROM FRIENDSHIP
					   WHERE addedID =2)

SELECT USER_.fname,USER_.lname
FROM USER_
WHERE USER_.userID NOT IN (SELECT userID
						   FROM LIKE_
						   WHERE  LIKE_.postID=4)

SELECT USER_.fname,USER_.lname,EDUCATION.eduname
FROM USER_,STUDY,EDUCATION
WHERE USER_.userID=STUDY.userID AND STUDY.eduID=EDUCATION.eduID AND EDUCATION.eduname='SAMSUN ANADOLU LÝSESÝ';

SELECT CREATED.createdName
FROM  CREATED
WHERE CREATED.mainCategory = 'eglence'

SELECT userID,POST.postID
FROM SHARE,POST
WHERE SHARE.postID=POST.postID AND POST.privacy_type=1


SELECT JOIN_.createdID, COUNT(*) 
FROM CREATED,JOIN_
WHERE  CREATED.createdID=JOIN_.createdID AND CREATED.createdName='izmirli dostlar'
GROUP BY JOIN_.createdID


SELECT CREATED.createdID, COUNT(*) 
FROM CREATED,JOIN_
WHERE  CREATED.createdID=JOIN_.createdID
GROUP BY CREATED.createdID
HAVING COUNT(*)>1

SELECT FRIENDSHIP.adderID, COUNT(*) 
FROM FRIENDSHIP,USER_
WHERE  FRIENDSHIP.adderID=USER_.userID
GROUP BY FRIENDSHIP.adderID