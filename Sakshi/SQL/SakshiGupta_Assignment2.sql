create schema ttnAffiliationBody;
use ttnAffiliationBody;

create table if not exists User (ID int primary key not null auto_increment, username varchar(50), password varchar(12) not null, email varchar(50), contact_no bigint(10), DOB date, Applied_Date date, role ENUM('Trainer','Asssessor') not null, status ENUM('Pending','Accepted','Rejected','Edit') not null);
create table if not exists Batch(Batch_Id int primary key not null, ID int, foreign key(ID) references User(ID), strength int, start_date date, end_date date); 
create table if not exists Assessment_Detail(Batch_Id int, foreign key(Batch_Id) references Batch(Batch_Id), ID int, foreign key(ID) references User(ID),  Trainer_ID int, Assessor_ID int);
alter table User add ( AppID int Unique not null);
create table Application_Status( App_ID int, foreign key(App_ID) references User(App_ID), comments varchar(100), is_active ENUM('active', 'not_active')); 
select * from Batch where date(end_date)< curdate() AND Trainer_ID = '';
select * from Batch where date(end_date) > curdate() AND Assessor_ID = '';
select * from Assessment_Detail where Assessor_ID= 5 ;
select * from Assessment_Detail where Assessor_ID= 5 AND date(end_date)>curdate() ;
select * from User where status='Accepted';
select * from Application_Status where is_active ='Active';





