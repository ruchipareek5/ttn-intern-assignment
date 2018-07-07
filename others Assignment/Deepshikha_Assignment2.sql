create schema ttn_affiliation_body;
use ttn_affiliation_body;

create table if not exists role(
	roleID int primary key auto_increment,
    roleName varchar(50)
);

create table if not exists batch(
	batchID int primary key auto_increment,
    batchStartDate date not null,
    batchEndDate date not null
);

create table if not exists application (
	applicationID int primary key auto_increment,
    applicationDate date not null,
    applicationStatus varchar(50) not null
);

create table if not exists user(
	userID int primary key auto_increment,
    userName varchar(50) not null,
    roleID int,
    applicationID int,
    batchID int,
    foreign key (applicationID) references application(applicationID),
    foreign key (roleID) references role(roleID),
    foreign key (batchID) references batch(batchID)
);

alter table user add pan_no varchar(10);
use ttn_affiliation_body;
create table application_replica like application;
create table user_duplicate like user;
desc user;
select *from role;
select *from role;
delete from role where roleID=2;
select *from role;
select *from batch;
select *from batch;
alter table batch add trainingPartner int;
alter table batch add assessmentPartner int;
select *from batch;
select *from application;
alter table application drop column applicationDate;
select *from user;
alter table user add column roleID int;
alter table user add column applicationID int;
select *from application;
select *from batch;



select *from batch where batchEndDate<'2018-08-06' and trainingPartner=1;

select *from batch where batchEnddate>'2018-08-06' and trainingPartner=2;

select *from batch where assessmentPartner=2;

select *from batch where batchStartDate>'2018-08-06' and assessmentPartner=2;



grant grant option, create, select, update, insert on ttn_affiliation_body to 'ttn_db_user'@'localhost' identified by 'dbuser';
grant select, update, insert, delete on user to 'ttn_app_user'@'localhost' identified by 'appuser';

update role set roleName = "Training Partner" where roleID=1;

select *from role;





create schema ttn_affiliation_body1;
drop schema ttn_affiliation_body1;