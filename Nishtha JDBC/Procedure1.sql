create database user;
use user;
drop table user;
create table user(
name varchar(20),
age int,
gender varchar(20),
email varchar(20)
);


insert into user values ('nishu',24,'female', 'nsksn@gmail.com');
insert into user values ('akhil',25,'male','cdcjec@gmail.com');
insert into user values ('vriti',14,'female');

DROP PROCEDURE  InsertUser;

call InsertUser('nishtha',12,'female');

create table batch(
batch_id int,
batch_name varchar(23),
batch_location  varchar(23)
);

insert into batch values(101,'Solar','kolkata');

insert into batch values(102,'Solar','Mumbia');
insert into batch values(103,'Skill_leader','Delhi');
insert into batch values(104,'Solar','Rajasthan');

create table audit( id int, email varchar(20));

insert into audit values (222, 'nishs@gmail.com');
insert into audit values(22,'nisshs@gmail.com');

drop trigger user_scgj;
DELIMITER //
create trigger user_scgj after insert on user
for each row
begin
insert into audit(email) values (new.email);
end//
DELIMITER ;

insert into user values('vriti11', 19,'female','vriti@gmail.com');
