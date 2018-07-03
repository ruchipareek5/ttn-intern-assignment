create database uber;

use uber ;

create table user(

u_id int primary key,
u_name varchar(10),
u_pass varchar(20),
u_add varchar(30),
u_phone int
);

insert into user values (1,'Nishtha','nis@123','RB',123983637);
insert into user values (2,'Varun','va@123','CC',98111116);
insert into user values (3,'akhilesh','ak@123','PP',1236983);
insert into user values (4,'gagan','gagu@123','SB',98171717);

create table location(
	l_id int primary key,
    l_name varchar(20)
);
 
insert into location values (101,'RB');
insert into location values (102,'PP');
insert into location values (103,'SB');
insert into location values (104,'CC');


create table user_loc(
u_id int references user(u_id),
l_id int references location(l_id)
);

insert into user_loc values (1,101);
insert into user_loc values (2,102);
insert into user_loc values (3,101);
insert into user_loc values (4,104);

create table Book (
b_id int primary key,
u_id int references user(u_id),
l_id int references location(l_id),
price int
);

insert into Book values (1001,1,101,200);

insert into Book values (1002,2,101,100);

insert into Book values (1,3,102,300);

insert into Book values (1004,3,103,400);

select u.u_id,u.u_name,u.u_add,u.u_phone,count(b.l_id),b.b_id
from user as u
join book as b on u.u_id= b.u_id group by (b.b_id)having count(b.l_id)<30;