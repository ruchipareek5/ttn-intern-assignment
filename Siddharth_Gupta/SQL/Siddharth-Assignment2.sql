create table user(username varchar(30) unique key, pwd varchar(12),role_id tinyint ,id int(3) primary key, foreign key(role_id) references roles(id) );
alter table user add column Year int(4);
create table roles(roll varchar(10),id tinyint primary key);
create table application(application_status boolean, username varchar(30),date date, id int(2) primary key,foreign key(username) references user(username));
create table application_comment(app_id int(2), comment_id int(2),is_active boolean,foreign key(app_id) references application(id));
create table batch(Batch_name varchar(20),id tinyint Primary key,Training_id int(2) not null,Start_date date,End_date date, Assessing_id int(2) not null,foreign key(Training_id) references user(id),foreign key(Assessing_id) references user(id));
create table profile(Name varchar(30) not null, DOB date, app_id int(2),id int(20) primary key,foreign key(app_id) references application(id));
show tables;
alter table user add PAN varchar(10);
alter table application alter application_status set default 0;
describe user;
insert into user values('lohit@tothenew.com' , 'yatin@123' , 2,1,2015,'EJNFKWEJ');
insert into user values('deepshika@tothenew.com','deeps@123',2,2,2018,'ISRNFSEJF');
insert into user values('rohit@tothenew.com','rohit@123',1,3,2017,'IBEFIUS');
insert into user values('souvik@tothenew.com','souvik@123',1,4,2014,'IAUEHFOAI');
insert into user values('archit@tothenew.com' , 'archit@123' , 2,5,2015,'EJJNFKEJ');
insert into roles values('Training',1);
insert into roles values('Assessment',2);
describe application;
insert into application values(1,'lohit@tothenew.com','2018/05/02',1);
insert into application values(0,'deepshika@tothenew.com','2018/05/02',2);
insert into application values(1,'souvik@tothenew.com','2018/05/02',3);
insert into application_comment values(2,1,1);
insert into application_comment values(1,2,1);
select * from user where username like'%m';
select * from user where username like '___';
select * from user where username like '_r%';
insert into batch values('TND',1,1,'2018/04/12','2018/06/09',3);
insert into batch values('S&B',2,2,'2018/03/23','2018/07/09',3);
select * from batch;
select * from application;
----------------------------------------------------------------------------------------------------------------------------
select * from batch where end_date <= now() AND Training_id = 1;   /* now() returns time stamp */
select * from batch where end_date >= curdate() AND Training_id = 1; /*curdate() returns current date */
select * from batch where end_date <= curdate() and Assessing_id =3;
select * from batch where end_date >= curdate() and Assessing_id =3;
select * from application where application_status = true; /* we can use either true or 1 */
select * from application_comment where is_active = 1;
----------------------------------------------------------------------------------------------------------------------------
update roles set roll='Training' where id = 1;
select * from batch;
select * from batch where id=1 AND Start_date like '2018-04-%';
select * from batch where id=1 and Start_date between '2018-04-01' and '2018-04-31';
select * from batch where id=1 AND Start_date like '2018-04-%' and Start_date NOT IN('2018-04-12');
select * from user where role_id=1 and year=2017;

select * from batch where Batch_name in(select Batch_name from batch group by Training_id having count(Batch_name) > 1);

select * from batch where (select count(Batch_name) as Count from batch group by Assessing_id having min(Count));

select * from batch where count(Batch_name) in (min((select count(Batch_name) as Count from batch group by Assessing_id)));

select * from batch group by Assessing_id having count(Batch_name) in (
select min(Count) from 
(select count(Batch_name) as Count from batch group by Assessing_id)Count);

select * from batch;

alter table user add turnover int(6);

select avg(turnover) from user;

select count(u.username) as Total_Partners,u.role_id, r.roll from user u,roles r where u.role_id=r.id group by u.role_id ;

select * from application_comment;


alter table application_comment add Comment varchar(30);

update application_comment set is_active = 0 where app_id=1;
select * from application_comment;

select app.*,com.comment from application app, application_comment com where app.id=com.app_id and com.is_active=1;

select app.*,com.comment from application app left join application_comment com on app.id=com.app_id ;

select * from batch;

describe batch;

describe user;
create table trainer(username varchar(30) primary key,pwd varchar(12),id int(2),year int(4),PAN varchar(10),turnover int(10));
create table assessor(username varchar(30) primary key,pwd varchar(12),id int(2),year int(4),PAN varchar(10),turnover int(10));

select * from batch;

Alter table batch modify Training_id int(2);


