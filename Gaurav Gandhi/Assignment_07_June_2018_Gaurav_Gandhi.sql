create database ttn_affiliation_body;

create user "ttn_db_user"@"127.0.0.1" identified by "123456";
use ttn_affiliation_body;
grant grant option, select, create, update, insert on ttn_affiliation_body.* to ttn_db_user@127.0.0.1;
grant select, insert, update, delete on ttn_affiliation_body.* to 'ttn_app_user'@'127.0.01' identified by "123456";

create table roles (roles varchar(10) primary key not null);
create table batches (batchid varchar(5) primary key not null, 
no_of_students int );

create table user (username varchar(20) primary key not null, 
name varchar(50), 
status boolean, 
date_of_application date,
roles  varchar(10),
batchid varchar(5), 
foreign key(roles) references roles(roles), 
foreign key (batchid) references batches(batchid));

use ttn_affiliation_body;
insert into roles values ("Trainer");
insert into roles values ("Assesser");

insert into batches values ("bat01",10);
insert into batches values ("bat02",50);
insert into batches values ("bat03",40);

insert into user values("ggandhi","gaurav",0,"2018/7/6","Trainer","bat01");
insert into user values("cgandhi","gandhi",1,"2018/7/5","Assesser","bat03");

use ttn_affiliation_body;
alter table user add (pan_number int);
desc user;

create table profile(
dob date,
name varchar(10),
appliation_id varchar(6),
id varchar(6)
);

alter table profile add column (pan_number int,
state varchar(20),
district varchar(20));

desc roles;

desc user;

select * from user;


Create table user_copy like user;

desc user_copy;

select * from user where roles like 'a%';
