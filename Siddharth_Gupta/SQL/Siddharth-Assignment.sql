create schema if not exists ttn_affiliation_body;
grant grant option,create,select,update,insert on ttn_affiliation_body to 'ttn_db_user'@'localhost' identified by 'pass';
grant delete,select,update,insert on ttn_affiliation_body.* to 'ttn_app_user'@'localhost' identified by 'pass';
create table data(Name varchar(20) not null,Username varchar(20) unique key not null,Password varchar(20) not null,Type_training_OR_assessement varchar(10) not null,Date_of_application date not null,Status Boolean,Roles_Assigned Varchar(30) Primary key, check(Type_training_OR_assessement="Training" OR Type_training_OR_assessement="Assesment"));
alter table data drop primary key;
alter table data modify Username varchar(20) primary key;
describe data;
create table batch_details(Batch varchar(20) Primary key,Training_partner varchar(30) not null,End_date date, Assessing_partner varchar(30) not null,foreign key(Training_partner) references data(Username),foreign key(Assessing_partner) references data(Username));
describe data;
insert into data values('TTN','ttn@go','qwerty','Training','2018/06/06',1,'Train Batch1');
insert into data values('Google','google@go','qwerty','Assessment','2018/06/06',1,'Assessment');
insert into data values('Smalt and Beryl','sab@go','qwerty','Training','2018/06/06',1,'Train Batch2');
insert into data values('Microsoft','micro@go','qwerty','Assessment','2018/06/06',1,'Assessment');
describe batch_details;
insert into batch_details values('B1','ttn@go','2018/06/10','google@go');
insert into batch_details values('B2','sab@go','2018/06/20','micro@go');
select * from batch_details;



