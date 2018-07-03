create database ttn_staff_management;
use ttn_staff_management;

create table resources (
	r_id int primary key ,
    r_name varchar(20),
    r_project_assigned boolean
);

create  table project (
	p_id int primary key,
    r_id int references resources(r_id),
    pr_id int references performance(pr_id),
    p_name varchar(10)
);

create table performance(
	pr_id  int primary key,
	r_id int references resources(r_id),
    p_status boolean

);

insert into resources values (1,'Nishtha',1);
insert into resources values (2,'Gagan',1);
insert into resources values (3,'Arpit',0);
insert into resources values (4,'yattin',0);
insert into resources values (5,'vishakha',1);


insert into performance values(101,1,1);
insert into performance values(102,2,0);
insert into performance values(103,5,1);


insert into project values (1001,1,101,'Canteen');
insert into project values (1002,5,103,'skillndia');


select * resources

