create schema ttn_affiliation_body;
use ttn_affiliation_body;

create table if not exists user (
	userId int primary key auto_increment,
    userName varchar(50) unique not null,
    email varchar(50) not null,
    contact bigint not null, 
    roleId int,
    applicationId int,
    batchId int,
    foreign key (applicationId) references application(applicationId),
    foreign key (roleId) references roles(roleId),
    foreign key (batchId) references batch(batchId)
);
drop table user;

create table if not exists roles(
	roleId int primary key auto_increment,
    role varchar(50) not null unique
);

create table if not exists application(
	applicationId int primary key auto_increment,
    applicationDate date not null,
    applicationStatus varchar(50) not null
);
drop table application;
CREATE TABLE IF NOT EXISTS batch (
    batchId INT PRIMARY KEY AUTO_INCREMENT,
    batchStartDate DATE NOT NULL,
    batchEndDate DATE NOT NULL
);
drop table batch;


grant grant option, create, select, update, insert on ttn_affiliation_body.* to 'ttn_db_user'@'localhost' identified by 'dbuser';
grant select, update, insert, delete on ttn_affiliation_body.* to 'ttn_app_user'@'localhost' identified by 'appuser';

use ttn_affiliation_body;
alter table user add pan_number varchar(10);

desc user;

alter table user change pan_number pan_id varchar(10); 
alter table user add tan_number varchar(10);
alter table user add state varchar(10);
alter table user add district varchar(10);
alter table user add city varchar(10);
alter table user add turnover int;
alter table user add password varchar(10);



select * from user;
select * from user where userId =1;

create table user2 like user;
create table application_replica like application;
create table batch_replica like batch;
create table roles_replica like roles;

insert into roles_replica select * from roles;

show table status;





create table if not exists users(
	userId int primary key auto_increment,
    userName varchar(50) unique not null,
    password varchar(10) not null,
    roleId int,
    foreign key (roleId) references role(roleId)
);
drop table users;
create table if not exists users(
	userId int primary key auto_increment,
    userName varchar(50) unique not null,
    password varchar(10) not null,
    roleId int,
    foreign key (roleId) references role(roleId)
);

create table if not exists application(
	applicationId int primary key auto_increment,
    applicationDate date not null,
    applicationStatus varchar(50) not null
);
drop table profile;
create table if not exists profile(
	dob date,
    applicationId int,
    profileId int primary key
);

select * from profile;

create table Batch(
	name varchar(10),
    startdate date,
    enddate date,
    trainerId int,
    assessorId int,
    batchId int primary key,
    foreign key (trainerId) references users(userId),
    foreign key (assessorId) references users(userId)
);
drop table batch;

create table applicationComment(
	applicationId int,
    comment varchar(200),
    commentId int primary key,
    is_active boolean,
    foreign key(applicationId) references application(applicationId)
);

create table if not exists role(
	roleId int primary key auto_increment,
    role varchar(50) not null unique
);

select * from role;
select * from users;
desc users;
desc role;
select * from applicationComment;
select * from batch;
select * from application;
desc profile;

select name,batchId from batch where enddate<='2018-06-07'and trainerId=2;
select name,batchId from batch where enddate>='2018-06-07' and trainerId=1;
select name,batchId from batch where assessorId='null';
select applicationId from application where applicationStatus='submitted';
select commentId,applicationId from applicationComment where is_active=1;
select batchId,name from batch where assessorId=3;
select batchId,name from batch where startdate>=curdate();


update role set role='AB' where roleId=1; 
select * from batch where startdate in ('2018-05-01','2019-01-06');
select * from batch where startdate between '2018-05-01' and '2019-01-06';
select * from batch where startdate between '2018-05-01' and '2018-05-31' and startdate not in('2018-05-15', '2018-05-25');
select count(name) from batch where trainerId=2 ;

select batch.trainerId, users.userName from batch inner join users where users.userId=batch.trainerId group by batch.trainerId having count(distinct batch.batchId)>3;
select trainerId from batch where (select count(distinct trainerId)>3);


select assessorId,count(batchId) as 'total' from batch group by assessorId having count(batchId)=(select min(total) from batch group by assessorId order by total asc);;

select assessorId as 'total' from batch group by assessorId having count(batchId)=min(total) order by total asc;

select t.assessorId,min(t.mycount) from(select assessorId, count(batchId) mycount from batch group by assessorId) as t;






select assessorId, count(distinct batchId) total from batch group by assessorId having count(distinct batchId)=min(total) order by total;

select * from applicationComment;

alter table users add column turnover int;

select avg(turnover) from users where roleId=1;

select count(distinct trainerId), count(distinct assessorId) from batch;

create table new_table like users;
insert into new_table(userName) select userName from users;

select batchId from batch where assessorId is null;


select app.applicationId,app.applicationStatus, comm.comment
from application as app, applicationComment as comm
where app.applicationId=comm.applicationId;

select app.applicationId,app.applicationStatus, comm.comment
from application as app left join applicationComment as comm
on app.applicationId=comm.applicationId;

select app.applicationId,app.applicationStatus, comm.comment
from application as app full join applicationComment as comm
on app.applicationId=comm.applicationId;

select batch.batchId, users.userId
from batch right join users 
on batch.trainerId=users.userId;


assignment;

select * from application;

select userId,userName from users where roleId=1
union
select userId,userName from users where roleId=2;

select applicationId from application
union
select applicationId from applicationComment;

select applicationId from application where applicationStatus='submitted'
union
select applicationId from application where applicationStatus='rejected';

 
select applicationId from application where applicationId not in(select applicationId from applicationComment);
select userId, userName from users where userId not in(select assessorId from batch); 

select applicationId from application where applicationStatus not in('rejected');
select applicationId from applicationComment where is_active not in ('0');

select * from batch;
select username from users where turnover>some(select username from users where turnover>50); 
select userId from users  where userId=all(select assessorId from batch);
select userName from users where turnover>all(select turnover from users where roleId=2);

select batchId from batch where startdate=some(select startdate from batch where trainerId=2);
select batchId from batch where startdate=all(select startdate from batch where trainerId=2);

select applicationId, applicationStatus from application where exists(select applicationId from applicationComment where application.applicationId=applicationComment.applicationId);
select userId from users where exists(select batchId from batch where users.userId=batch.trainerId);

