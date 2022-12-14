#UC1
create database AD_BOOK_SERVICE;
show databases;
show databases;
use AD_BOOK_SERVICE;

#UC2
create table adbook(id int unsigned not null auto_increment,fname varchar(15) not null,lname varchar(10) not null,city varchar(50) not null,state varchar(50) not null,zip int not null,phone long not null,email varchar(100) not null,primary key (id));
select * from adbook;

#UC3
insert into adbook(fname, lname, city, state, zip, phone, email) values
('Akhil', 'Choudhari', 'Bhopal', 'MadhyaPradesh',43231, 9998887771, 'akhilxyxy@gmail.com' ),
('Ashu', 'Sharma', 'Indore', 'UtterPradesh', 345242, 9998887772, 'ashuxyxy@gmail.com' ),
('Tina', 'Singh', 'Pune', 'Bihar', 345641, 9998887773, 'tinaxyxy@gmail.com' ),
('Saloni', 'Gupta', 'Jhansi', 'UtterPradesh', 223213, 9998887774, 'saloni@gmail.com' );

#UC4
UPDATE adbook SET city = 'Mumbai',state = 'Maharashtra',zip = 456789 where fname = 'Tina';

#UC5
use AD_BOOK_SERVICE;
DELETE FROM  adbook where fname = 'Tina';

#UC6
SELECT * FROM adbook where city = 'Bhopal' or state = 'MadhyaPradesh';

#UC7
SELECT COUNT(city or state)FROM adbook;

#UC8
select fname from adbook where city = 'Bhopal'order by fname asc;

 #UC9
Alter table adbook add type varchar(15) after lname;
update  adbook set type='Family' where fname ='Akhil';
update  adbook set type='Friends' where fname  ='Ashu';
update  adbook set type='Friends' where fname  ='Saloni';
update  adbook set type='Profession' where fname  ='Akhil';

#UC10
SELECT COUNT(type) AS Number_Of_Contact_Person FROM adbook;

#UC11
insert into adbook(fname, lname, city, state, zip, phone, email) values('Pinky', 'sharma', 'Sage', 'MP', 414501, 9999888777, 'pinky@gmail.com' );
update  adbook set type='Family' where id =5;

#UC12
CREATE TABLE adbbok1 (id int not null auto_increment primary key,firstname varchar(15) NOT NULL, lastname varchar(10) NOT NULL,city varchar(50) NOT NULL,state varchar(50) NOT NULL,zip int(6) NOT NULL ,phone varchar(10) NOT NULL,email varchar(100) NOT NULL UNIQUE);
desc adbbok1;

create table adbook2(id int not null auto_increment primary key,name varchar (20) not null,ab_id int ,foreign key (ab_id)references adbbok1(id)  );
desc adbook2;
create table adbook3(id int not null primary key,type varchar (20));
desc adbook3;
create table adbook4(a_id int not null,t_id int not null,foreign key(a_id) references adbbok1(id),foreign key(t_id) references adbook3(id),primary key(a_id,t_id));
use AD_BOOK_SERVICE;
INSERT INTO adbbok1 VALUES
(1,'monu', 'gaik', 'Amravati', 'Maharastra',444806, 9168112901, 'mbg@gmail.com'),
(2,'sonu', 'wad', 'nagpur', 'Maharashtra', 411402, 8138975257, 'mbg1@gmail.com'),
(3,'swapnil', 'gaik', 'dighori', 'Maharashtra', 7125487, 8149454587, 'mbg2@gmail.com'),
(4,'mohit', 'wad', 'chitnispura', 'Maharastra', 414501, 9604315270, 'mbg3@gmail.com');
insert into adbook2 values (1,'AdddressBook1', 2); 
insert into adbook3 values(1,'family');
insert into adbook3 values(2,'friends');
insert into adbook3 values(3,'profession');
insert into adbook4(a_id,t_id)values(1,1);
select * from adbbok1;
select * from adbook2;
select * from adbook3;
select * from adbook4;

#UC13
use ad_book_service;
SELECT * from adbbok1 inner join adbbok2 where city = 'riva' OR stsate = 'MP';
SELECT  city, state, COUNT(*) from adbookwhere city = 'chennai' AND state = 'TamilNaru';
SELECT * FROM adbook WHERE state = 'MadhyaPradesh' ORDER BY firstname ASC;
SELECT type, count(*) FROM adbook join adbook3 group by type;
select * from adbook inner join adbook3 ON adbook.id = 1 and adbook3.id IN(1,2);
select * from adbook inner join adbook2 inner join adbook3 ON adbook.id = 1 and adbook3.id= '1' and adbook3.id IN (1);