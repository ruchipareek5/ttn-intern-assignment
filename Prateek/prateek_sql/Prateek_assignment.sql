create schema if not exists ttn_affiliation_body;
use ttn_affiliation_body;
create user 'ttn_db'@'localhost' identified by '1234'; 
drop user 'ttn_db'@'localhost';
create user 'ttn_db_user'@'localhost' identified by '1234'; 
create user 'ttn_app_user'@'localhost' identified by '1234';
create table AssignRole(roleid int(20) primary key  not null,rolename varchar(25));
create table Users (uid int(20) unique auto_increment not null , username varchar(25) primary key  not null , assignment_date date,assignment_status varchar(25),roleid int(20),foreign key(roleid) references Assignrole(roleid));  
create table Batch(bid int(20) primary key ,no_of_users int(50) not null);
create table TrainingPartner(tid int(20) primary key auto_increment ,tname varchar(25),bid int(20),foreign key(tname) references Users(username),foreign key(bid) references Batch(bid));
create table AssessmentBody(aid int(20) primary key auto_increment ,aname varchar(25),bid int(20),foreign key(aname) references Users(username),foreign key(bid) references Batch(bid));
create table Affiliation(Afid int(20) Primary key auto_increment,bodyid int(20) references Users(uid),affilid int(20) references Users(uid),status varchar(25));
alter table Users drop column status;
alter table Users modify column assignment_date date;
Grant Create  on Users to 'ttn_db_user' @'localhost'  identified by '1234';
Grant Select  on Users to 'ttn_db_user' @'localhost'  identified by '1234';
Grant update  on Users to 'ttn_db_user' @'localhost'  identified by '1234';
Grant insert  on Users to 'ttn_db_user' @'localhost'  identified by '1234';
Grant create  on AssignRole to 'ttn_db_user' @'localhost'  identified by '1234';
Grant select  on AssignRole to 'ttn_db_user' @'localhost'  identified by '1234';
Grant insert  on AssignRole to 'ttn_db_user' @'localhost'  identified by '1234';
Grant update  on AssignRole to 'ttn_db_user' @'localhost'  identified by '1234';
Grant create  on Batch to 'ttn_db_user' @'localhost'  identified by '1234';
Grant select  on Batch to 'ttn_db_user' @'localhost'  identified by '1234';
Grant insert  on Batch to 'ttn_db_user' @'localhost'  identified by '1234';
Grant update  on Batch to 'ttn_db_user' @'localhost'  identified by '1234';
Grant create  on TrainingPartner to 'ttn_db_user' @'localhost'  identified by '1234';
Grant select  on TrainingPartner to 'ttn_db_user' @'localhost'  identified by '1234';
Grant update  on TrainingPartner to 'ttn_db_user' @'localhost'  identified by '1234';
Grant insert  on TrainingPartner to 'ttn_db_user' @'localhost'  identified by '1234';
Grant create  on AssessmentBody to 'ttn_db_user' @'localhost'  identified by '1234';
Grant select  on AssessmentBody to 'ttn_db_user' @'localhost'  identified by '1234';
Grant insert  on AssessmentBody to 'ttn_db_user' @'localhost'  identified by '1234';
Grant update  on AssessmentBody to 'ttn_db_user' @'localhost'  identified by '1234';
Grant create  on Users to 'ttn_app_user' @'localhost'  identified by '1234';
Grant select  on Users to 'ttn_app_user' @'localhost'  identified by '1234';
Grant insert  on Users to 'ttn_app_user' @'localhost'  identified by '1234';
Grant update  on Users to 'ttn_app_user' @'localhost'  identified by '1234';
Grant delete  on Users to 'ttn_app_user' @'localhost'  identified by '1234';
Grant select  on AssignRole to 'ttn_app_user' @'localhost'  identified by '1234';
Grant insert  on AssignRole to 'ttn_app_user' @'localhost'  identified by '1234';
Grant update  on AssignRole to 'ttn_app_user' @'localhost'  identified by '1234';
Grant delete  on AssignRole to 'ttn_app_user' @'localhost'  identified by '1234';
Grant select  on Batch to 'ttn_app_user' @'localhost'  identified by '1234';
Grant insert  on Batch to 'ttn_app_user' @'localhost'  identified by '1234';
Grant update  on Batch to 'ttn_app_user' @'localhost'  identified by '1234';
Grant delete  on Batch to 'ttn_app_user' @'localhost'  identified by '1234';
Grant select  on TrainingPartner to 'ttn_app_user' @'localhost'  identified by '1234';
Grant insert  on TrainingPartner to 'ttn_app_user' @'localhost'  identified by '1234';
Grant update  on TrainingPartner to 'ttn_app_user' @'localhost'  identified by '1234';
Grant delete  on TrainingPartner to 'ttn_app_user' @'localhost'  identified by '1234';
Grant select  on  AssessmentBody to 'ttn_app_user' @'localhost'  identified by '1234';
Grant insert  on  AssessmentBody to 'ttn_app_user' @'localhost'  identified by '1234';
Grant update  on  AssessmentBody to 'ttn_app_user' @'localhost'  identified by '1234';
Grant delete  on  AssessmentBody to 'ttn_app_user' @'localhost'  identified by '1234';
grant create,select,update,insert on ttn_affiliation_body.* to 'ttn_db_user'@'localhost' identified by '1234'; 
grant select,update,delete,insert on ttn_affiliation_body.* to 'ttn_app_user'@'localhost' identified by '1234'; 
Create table  batchcopy like batch;
create table role_duplicate like assignrole;
insert into batchcopy select *  from batch; 
create table newUser like Users;
insert into newUser select * from Users where year(assignment_date)=2018;
select username from Users where username like '%k';
select username from Users where username like '_r_';
select username from Users where username like '_r%';













