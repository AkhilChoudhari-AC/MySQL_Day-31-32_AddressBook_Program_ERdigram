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