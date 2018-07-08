create schema if not exists ttn_affiliation_body;

grant create,grant option,select,update,insert on ttn_affiliation_body.*  to 'ttn_db_user'@'localhost' identified by 'ttnuser' ;

grant select,insert,update,delete on ttn_affiliation_body.* to 'ttn_app_user'@'localhost'identified by'ttnapp';
use ttn_affiliation_body;

create table Users(id int primary key auto_increment,name varchar(100),email varchar(100),mobileNumber bigint,applicationDate datetime,roleId int(10),status varchar(50) check(status IN('Pending','Active','Accepted')));

create table affilation(userId int references Users(id),bodyId int references Users(id));

create table trainer(id int primary key auto_increment,trainerId int references Users(id),subjectTaught varchar(100));

create table role(roleId int primary key auto_increment,roleName varchar(100));

create table batch(batchId int primary key auto_increment,trainerId int references Users(id),startDate date);

create table batchTrainerRelation(id int references Users(id),batchId int references batch);
