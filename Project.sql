create database project ;
use project;

create table Publisher (
Publisher_ID int ,
publisher_name varchar (75) ,
address varchar (100) ,
primary key(Publisher_ID)
);

create table Branches(
branch_id int ,
branch_name varchar (75) ,
college varchar (60) ,
EID int ,
primary key (branch_id)
);

create table Books(
ISBN int,
Book_name varchar (100) ,
author_name  varchar(75) ,
number_of_copies int ,
Publisher_ID int ,
branch_id int ,
primary key (ISBN , Book_name ,number_of_copies),
foreign key(Publisher_ID)references Publisher(Publisher_ID),
foreign key(branch_id)references Branches(branch_id)
);

create table Employee (
EID int ,
eName varchar (75) ,
eFamily varchar (75) ,
JobTitle varchar (100) ,
startDate date ,
lastDate date ,
edob date ,
ephone long ,
email varchar (80) ,
branch_id int ,
primary key(EID) ,
foreign key(branch_id)references Branches(branch_id)
);

create table Students(
Student_id int,
first_name varchar(75) ,
last_name varchar(75) ,
sdob date,
sphone long,
address varchar(100) ,
college varchar(60) ,
department varchar(60) ,
branch_id int,
primary key(Student_id),
foreign key (branch_id)references Branches(branch_id)
);

create table Borrow (
BorrowD date,
ReturnD date,
Student_id int,
ISBN int,
EID int,
primary key(BorrowD , EID , Student_id ,ISBN),
foreign key(EID)references Employee(EID),
foreign key(Student_id)references Students(Student_id),
foreign key(ISBN)references Books(ISBN)
);



/*Insert data to Publisher table */
insert into Publisher values (200,'Mohammed','Makkah');
insert into Publisher values (201,'Abdullah','Madina');
insert into Publisher values (202,'Gameel','Jeddah');
insert into Publisher values (203,'Saleem','Riyadh');
insert into Publisher values (204,'Khaled','Tabuk');  
insert into Publisher values (205,'Hamada','Jazan'); 
insert into Publisher values (206,'Hateem','Skaka'); 
insert into Publisher values (207,'Kamal','Dammam');
insert into Publisher values (208,'Hammdee','Arar'); 
insert into Publisher values (209,'Amjad','Yanbu'); 
insert into Publisher values (210,'Walid','Yanbu'); 
insert into Publisher values (211,'Saed ','Tabuk'); 
insert into Publisher values (212,'Seed','Skaka');
insert into Publisher values (213,'Aman','Arar');
insert into Publisher values (214,'Ali','Abha');


/*Insert data to Branches table */
insert into Branches values (100,'Systems and Judicial Studies Branch','Faculty of Systems and Judicial studies',400);
insert into Branches values (101,'Computer Branch','Faculty of Computer and Information Systems',402);
insert into Branches values (102,'Arabic Language Branch','Faculty of Arabic Language',404); 
insert into Branches values (103,'Engineering Branch','Faculty of engineering',406);
insert into Branches values (104,'Science Branch','Faculty of Science',408); 
insert into Branches values (105,'Sharea Branch','Faculty of Sharea',410); 
insert into Branches values (106,'Hadith Branch','Faculty of Hadith',412); 
insert into Branches values (107,'Quran Branch','Faculty of Quran',414); 
insert into Branches values (108,'Dawa Branch','Faculty of Dawa',415); 


/*Insert data to Books table */
insert into Books values (1001,'Fundamentals of Reinforced Concrete Design','Murari Lal Gambhir','40',204,103);
insert into Books values (2002,'Rada Almuhtar Aalaa Aldari Almukhtar','IbnAbdeen','50',210,108);
insert into Books values (3003,'Almisbah Almunir',' SafiyAl-RahmanAl-Mubarakfuri','30',202,102);
insert into Books values (4004,'Halal and Haram in Islam','Yousif Al Qardawi','50',207,105);
insert into Books values (5005,'Principles of quantum mechanics','Paul Dirac','40',206,104);
insert into Books values (6006,'Operating system concepts','Avi Silberschatz','10',205,101);
insert into Books values (7007,'‎Explosives engineering','Paul W.Cooper','70',213,103);
insert into Books values (8008,'Alnahw Altatbiqiu','Khalid Abdul Aziz','80',205,102);
insert into Books values (9009,'Riyad AlSalehen','Abu Zakaria AlNooy','10',203,106);
insert into Books values (1010,'Siraj Almuluk','AbuBakr Al-Tartoushi','50',212,100);
insert into Books values (1100,'Almuqadamh Aljizria','IbnAl-Jazri','50',209,102);
insert into Books values (1200,'Fath Alqadir','Mohammed Shawkani','10',206,107);
insert into Books values (1300,'Neal Alotar','Mohammed Shawkani','50',211,106);
insert into Books values (1400,'Concepts of physics','H.C.verma','40',202,104);
insert into Books values (1500,'Al-Aahkam Alsultania','Mawardi','70',201,108);
insert into Books values (1600,'Effective Java','Joshua Bloch','20',207,101);
insert into Books values (1700,'Learning SQL',' Alan Beaulieu','20',210,101);
insert into Books values (1800,'Parallel Worlds','Michio Kaku','60',208,104);
insert into Books values (1900,'Alturuq Alhakmia','IbnQayyim','20',203,100);
insert into Books values (2020,'Tafser IbnQayyim','IbnQayyim','80',208,107);
insert into Books values (2100,'AlphiatIbnMalek','IbnMalek','40',209,102);
insert into Books values (2200,'Adab Alqadi','IbnAl-Qaase','30',201,100);
insert into Books values (2300,'Building Types','Joseph','90',204,103);
insert into Books values (2400,'Alkishaf','Zamakhshari','10',214,107);
insert into Books values (2500,'Almofeed','IbnSufi','50',200,105);


/*Insert data to Employee table */
insert into Employee values (400,'Rami','Mossa ','Secrater','1995-09-03','2008-01-01','1975-09-11','0564319712','makkah','mossa00100@gmail.com',101);
insert into Employee values (401,'Ahmed','Wael','Secrater','1999-01-01','2006-01-01','1992-05-04','0502311054','Madinah','Ahmed302010@gmail.com',102);
insert into Employee values (402,'Fouad','Hezam','Secrater','1996-01-05','2003-01-01','1966-03-30','0550041512','dammam','fouch000@gmail.com',103);
insert into Employee values (403,'Majed','Gameel','Admin','2008-11-09','2009-01-01','1986-01-25','0556786856','Reyad ','Gamal5675@gmail.com',105);
insert into Employee values (404,'Mohammed','Gamal','Secrater','2005-01-10','2018-12-02','1976-01-01','0542384510','aljouf','Mama@gmail.com',105);
insert into Employee values (405,'Raslan','Razouq ','Admin','1992-02-04','2013-01-01','1940-11-01','0502104023','Madinah','Rasla.1@gmail.com',101);
insert into Employee values (406,'Maroan','Mohammed','Admin','2012-08-20','2017-01-01','1955-05-28','0506067111','Hayel','www.M1@gmail.com',106);
insert into Employee values (407,'Saeed','Othman','Admin','1997-12-02','2004-01-01','1945-06-14','0564973178','khobar','Othhto00@gmail.com',100);
insert into Employee values (408,'Sami','Ali','Secrater','2000-10-07','2017-01-01','1950-06-22','0555056244','Madinah','Sasmi1543@gmail.com',104);
insert into Employee values (409,'Omran','Omar','Admin','2003-12-08','2015-01-01','1988-02-05','0501146677','Skaka','Omran08888@gmail.com',104);
insert into Employee values (410,'Jems','Jon','Secrater','1997-09-05','2012-01-01','1951-09-15','0506067433','yanbu','j1j2msm11@gmail.com',101);
insert into Employee values (411,'Walid','Karem','Admin','2012-08-06','2017-01-01','1955-05-28','0506132490','Jeddah','WM.m1425m@gmail.com',106);
insert into Employee values (412,'Fahed','Khalil','Secrater','2010-05-09','2017-01-01','1997-01-05','0500005488','Jeddah','F.123@gmail.com',107);
insert into Employee values (413,'Ali','Ali','Secrater','2010-08-15','2017-01-01','1955-05-28','0535787413','Madinah','A.alagooz@gmail.com',102);
insert into Employee values (414,'Gamal','Karm','Secrater','2000-10-01','2017-01-01','1960-05-10','0555567865','Madinah','G.M.L@gmail.com',108);


/*Insert data to Students table */
insert into Students values (300,'Hesham','Hassan','1999-09-11','0566661760','Madagascar','Arabic Language College','Al-Adab and Albilaghuh',102);
insert into Students values (301,'Elsisi','dhoom','1995-11-01','0502344751','Brazil','Engeneering college','Chemical engineering (CE)',103);
insert into Students values (302,'Tamher','Hosny','1998-08-29','0566387546','Brazil','Computer College','Information Technology (IT)',101);
insert into Students values (303,'Nader','Omer','1997-07-25','0555305602','China','Engeneering college','Electrical engineering (EE)',103);
insert into Students values (304,'Salah','Ameen','1998-02-11','0558120517','Mali','Engeneering College','Mechanical engineering (ME)',103);
insert into Students values (305,'Domlo','Smeth','1991-10-17','054101412','Egypt','Arabic Language College','Al-Adab and Albilaghuh',102);
insert into Students values (306,'Mahmoud','Alsadeq','1997-01-12','0569740273','Libya','Computer College','Information Systems (IS)',101);
insert into Students values (307,'Trump','Donllad','1990-05-03','0549279135','Germany','Computer College','Computer Sciences (CS)',101);
insert into Students values (308,'Mounir','Eid','1996-02-25','0536291522','Syria','Computer College','Information Technology (IT)',101);
insert into Students values (309,'Sahiul','Aman','1993-03-18','0556428957','China','Computer College','Information Systems (IS)',101);
insert into Students values (310,'Barack','obama','1992-11-01','0599621948','Afghanistan','Dawa College','Islamic history',108);
insert into Students values (311,'Joane','macdour','1992-01-16','0509277724','France','Arabic Language College','Media',102);
insert into Students values (312,'Mohammed','Khalil','1998-05-20','0505320211','KSA','Hadith College','Hadith Sciences',106);
insert into Students values (313,'Mohammed','Hadee','1998-12-25','0505320200','KSA','Hadith College','Hadith Sciences',106);
insert into Students values (314,'Mohammed','Ali','1998-05-21','0505322224','KSA','Hadith College','Hadith Sciences',106);
insert into Students values (315,'Hmoody','Ezaat','1995-02-04','0564319799','Indonesia','Sharea College','Alfaqah',105);
insert into Students values (316,'Abdullah','Mohammed','1995-01-09','0502706661','USA','Sharea College','Alfaqah',105);
insert into Students values (317,'Mohammed','Ahmed','1998-05-15','0501320210','Egypt','Quran College','Altafsir',107);
insert into Students values (318,'Arshd','Ali','1994-04-20','0564319858','Indonesia','Quran College','Altafsir',107);
insert into Students values (319,'Fahed','Ahmed','1998-11-17','0505321430','KSA','Science College','chemistry',104);
insert into Students values (320,'Seed','Ahmed','1998-01-11','0505123444','KSA','Science College','chemistry',104);
insert into Students values (321,'Ryan','Tareiq','1998-10-15','0505321110','KSA','Science College','physics',104);
insert into Students values (322,'Ryan','Ahmed','1990-12-04','0514720210','Mali','Quran College','Altafsir',107);
insert into Students values (323,'Ryan','Aslam','1998-01-04','0505320247','KSA','Quran College','Altafsir',107);
insert into Students values (324,'Walid','Ezaat','1998-05-18','0555550210','KSA','Science College','Maths',104);


/*Insert data to Borrow_by table */
 insert into Borrow values('2012-01-01','2012-01-30',300,3003,400);
 insert into Borrow values('2010-02-02','2010-03-29',301,2300,402);
 insert into Borrow values('2011-03-03','2011-03-28',302,1700,406);
 insert into Borrow values('2012-04-04','2012-04-27',303,2300,404);
 insert into Borrow values('2013-05-05','2013-05-26',304,1001,408);
 insert into Borrow values('2014-06-06','2014-06-25',305,2100,410);
 insert into Borrow values('2015-07-07','2015-07-24',306,1600,412);
 insert into Borrow values('2016-08-08','2016-08-23',307,1600,414);
 insert into Borrow values('2017-09-09','2017-09-22',308,1700,401);
 insert into Borrow values('2018-10-10','2018-10-21',309,6006,403);
 insert into Borrow values('2018-11-11','2019-01-30',310,2002,405);
 insert into Borrow values('2017-12-12','2018-03-29',311,3003,407);
 insert into Borrow values('2016-12-01','2017-03-28',312,1300,409);
 insert into Borrow values('2017-04-05','2017-04-27',313,1300,411);
 insert into Borrow values('2016-12-07','2017-05-26',314,9009,413);
 insert into Borrow values('2015-11-19','2016-06-25',315,2500,402);
 insert into Borrow values('2015-11-20','2016-07-24',316,4004,403);
 insert into Borrow values('2010-11-14','2011-08-23',317,2020,402);
 insert into Borrow values('2014-11-21','2015-09-22',318,2020,403);
 insert into Borrow values('2010-10-16','2010-10-21',319,1400,403);
