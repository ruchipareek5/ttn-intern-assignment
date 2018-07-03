drop database ttn_affiliation_body;

create database ttn_affiliation_body;
use ttn_affiliation_body;

create table role(
role varchar(15),
id int primary key not null auto_increment
);

alter table role auto_increment = 1;

insert into role (role)values("trainer");
insert into role (role)values("assesser");

select * from role;


create table user(
username varchar(20),
pass varchar(20),
role_id int,
id int primary key not null auto_increment,
foreign key(role_id) references role(id));

alter table user auto_increment = 1;


create table application(
application_status varchar(15),
user_id int,
date_of_application date,
id int primary key not null auto_increment,
foreign key(user_id) references user(id)
);

alter table application auto_increment = 1;

create table application_comment(
application_id int,
comment varchar(50),
is_active boolean,
id int primary key not null auto_increment,
foreign key(application_id) references application(id)
);

alter table application_comment auto_increment=1;

create table profile (
dob date,
name varchar(30),
application_id int,
id int primary key not null auto_increment,
foreign key (application_id) references application(id)
);

alter table profile auto_increment=1;

create table batch(
batch_name varchar(15),
start_date date,
end_date date,
trainer_id int,
assesser_id int,
id int primary key not null auto_increment,
foreign key (trainer_id) references user(id),
foreign key (assesser_id) references user(id)
);

alter table batch auto_increment = 1;

commit;

select curdate();

insert into user (username,pass,role_id)values('lohit@tothenew.com','yatin@123',2);
insert into user (username,pass,role_id)values('deeps@tothenew.com','deeps@123',2);
insert into user (username,pass,role_id)values('rohit@tothenew.com','rohit@123',1);
insert into user (username,pass,role_id)values('souvik@tothenew.com','souvik@123',1);

select * from user;

desc batch;

insert into batch(batch_name, start_date,end_date, trainer_id,assesser_id) values ('Mainframe','2015/6/21','2017/6/21',4,5);
insert into batch(batch_name, start_date,end_date, trainer_id,assesser_id) values ('IT Infra','2019/6/21','2021/6/21',4,5);

select * from batch;

/*Select all the past batches of a training partner which ended in past.*/
select * from batch where start_date <= (select curdate()) and end_date <= (select curdate()) and trainer_id = 4;

/*Select all the future batches of a training partner which will end in future.*/
select * from batch where start_date >= (select curdate()) and end_date >= (select curdate()) and trainer_id = 4;

/*Select all the batches assessed by an assessment agency.*/
select * from batch where start_date <= (select curdate()) and end_date <= (select curdate()) and assesser_id = 5;

/*Select all the batches that an assessment agency has to assess in future.*/
select * from batch where start_date >= (select curdate()) and end_date >= (select curdate()) and assesser_id = 5;

/*Select all the applications whose status is submit.*/

/*When application status is varchar.*/
select * from application where application_status = "submit";

/*When application status is boolean.*/
select * from application where application_status = 1;

/*Select all the active application comment for an application.*/
select * from application_comment where is_active = 1;

select now();

select * from user;

select * from batch where start_date in ('2015-06-21','2016-06-01');

select * from batch where start_date between '2015-06-2' and '2016-06-01';

select * from batch where (start_date between '2015-06-01' and '2015-06-30') and (start_date not in ('2015-06-15','2015-06-25'));

select * from batch where ((select count(trainer_id) from batch group by trainer_id) and (start_date between '2015-06-01' and '2015-06-30'));

select count(trainer_id),trainer_id from batch group by trainer_id;

select * from batch where count(trainer_id) in (select count(trainer_id) from batch group by trainer_id);

select trainer_id from batch group by trainer_id having count(trainer_id)>1;
select * from user;
select * from batch;
select * from batch having count(trainer_id)>1 ;

desc batch;

select assesser_id from batch group by assesser_id order by count(assesser_id) limit 1;

select assesser_id from batch group by assesser_id having count(assesser_id) in (select distinct min((select distinct count(assesser_id) from batch group by assesser_id)));

select distinct min((select distinct count(assesser_id) from batch group by assesser_id));

select assesser_id from batch group by assesser_id having count(assesser_id) = (
select min(mycount) from (
select count(assesser_id) mycount from batch group by assesser_id)mycount);

select assesser_id from batch group by assesser_id having count(assesser_id) = (
select max(mycount) from (
select count(assesser_id) mycount from batch group by assesser_id)mycount);

select assesser_id from batch group by assesser_id having count(assesser_id) = (
select count(assesser_id) from batch group by assesser_id order by count(assesser_id) limit 1);

select assesser_id, count(assesser_id) as mycount from batch group by assesser_id having mycount = min(mycount);

desc role;
desc user;
desc application;
select a.role,count(a.role) from role a,user b where a.id = b.role_id and (select application_status from application where user_id = a.id) = "submit"  group by a.role;

create table user_copy like user;


insert into user_copy (username) (select username from user);

select * from user_copy;

select * from batch where assesser_id is null;

select * from batch where assesser_id is not null;

desc application;

desc application_comment;

desc batch;
insert into application (application_status,user_id,date_of_application)values("submitted",1,"2014-6-1");
insert into application (application_status,user_id,date_of_application)values("incomplete",4,"2015-7-1");
insert into application (application_status,user_id,date_of_application)values("submitted",4,"2015-8-4");

insert into application_comment (application_id,comment,is_active) values(2,"upload pan",1);

select a.application_status,a.user_id,a.date_of_application,b.comment,b.is_active 
from application a, application_comment b 
where a.id = b.application_id;

select a.application_status,a.user_id,a.date_of_application,b.comment,b.is_active 
from application a left join application_comment b 
on a.id = b.application_id;


select a.*,b.* from user a left join batch b on a.id = b.trainer_id;