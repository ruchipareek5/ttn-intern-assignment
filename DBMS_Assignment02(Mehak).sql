create database if not exists ttn_affiliation_body;

use ttn_affiliation_body;

create table roles(
	roll varchar(10),
    id tinyint primary key
);

create table user(
	username varchar(30) unique key, 
    pwd varchar(12),
    role_id tinyint ,
    id int(3) primary key, 
    foreign key(role_id) references roles(id) 
);

alter table user add column Year int(4);

create table application(
	application_status boolean, 
    username varchar(30),
    date date, 
    id int(2) primary key,
    foreign key(username) references user(username)
);

create table application_comment(
	app_id int(2), 
    id int(2),
    comment varchar(1000),
    is_active boolean,
    foreign key(app_id) references application(id)
);

drop table application_comment;

create table batch(
	Batch_name varchar(20),
    id tinyint Primary key,
    Training_id int(2) not null,
    Start_date date,
    End_date date, 
    Assessing_id int(2) not null,
    foreign key(Training_id) references user(id),
    foreign key(Assessing_id) references user(id)
);

create table profile(
	Name varchar(30) not null, 
    DOB date, 
    app_id int(2),
    id int(20) primary key,
    foreign key(app_id) references application(id)
);

insert into roles values ('AP', 0);
insert into roles values ('TP', 1);

insert into user values('lohit@tothenew.com', 'yatin@123', 1, 1,'2018');
insert into user values('deepshika@tothenew.com','deeps@123', 0, 2, '2018');
insert into user values('rohit@tothenew.com','rohit@123', 1, 3, '2017');
insert into user values('souvik@tothenew.com','souvik@123', 1, 4, '2016');

insert into application values(0, 'lohit@tothenew.com', '2018/12/01', 12);
insert into application values(1, 'deepshika@tothenew.com', '2018/12/01', 13);
insert into application values(0, 'rohit@tothenew.com', '2018/12/01', 15);
insert into application values(1, 'souvik@tothenew.com', '2018/12/01', 11);

insert into application_comment values(12, 1, 'kindly fill your date of joining', 0);
insert into application_comment values(13, 2, '', 1);
insert into application_comment values(15, 3, 'username not found in directory', 1);
insert into application_comment values(11, 4, 'kindly fill your date of joining', 0);

insert into batch values('A', 1, 001, '2018/01/05', '2018/02/05', 001);
insert into batch values('D', 2, 002, '2018/04/01', '2018/05/31', 002);
insert into batch values('A', 3, 001, '2018/06/01', '2018/07/31', 003);
insert into batch values('B', 4, 003, '2018/01/05', '2018/03/05', 004);
insert into batch values('C', 4, 001, '2018/01/05', '2018/03/05', 001);

insert into profile values('Lohit', '1998/01/16', 12, 1);
insert into profile values('Deepshika', '1997/12/22', 13, 2);
insert into profile values('Rohit', '1998/01/01', 15, 3);
insert into profile values('Souvik', '1996/01/16', 11, 4);

select * from batch where start_date <= (select curdate()) and end_date <= (select curdate()) and training_id = 003;

select * from batch where start_date >= (select curdate()) and end_date >= (select curdate()) and training_id = 001;

select * from batch where start_date <= (select curdate()) and end_date <= (select curdate()) and assessing_id = 001;

select * from batch where start_date >= (select curdate()) and end_date >= (select curdate()) and assessing_id = 003;

select * from application where application_status = 1;

select * from application_comment where is_active = 1;

update roles set roll="AB" where id=1;

select username from user where year in('2018');

select username from application where date in('2018/12/01') and  date not in('2018/12/15');

select count(Batch_name) from batch where training_id=002;

select * from Batch where training_id=002;

select * from batch group by training_id having count(training_id)>1;

select assessing_id from batch where batch_name in('a','d','b');

select * from batch having min((select count(assessing_id) from batch where batch_name in('a','d','b')));

select assessing_id from batch group by batch_name order by count(assessing_id) limit 1;

select * from batch group by assessing_id having count(assessing_id) = (
select min((select count(assessing_id) from batch where batch_name in('a','d','b'))));

select r.roll, count(a.username), a.application_status from roles r, application a where a.application_status = 1; 

select batch_name from batch where assessing_id is null ;

select a.id, b.comment from application a, application_comment b  where b.is_active=1 and a.id=b.app_id;
select a.batch_name, b.id from batch a inner join  user b  on (a.assessing_id=b.id);
