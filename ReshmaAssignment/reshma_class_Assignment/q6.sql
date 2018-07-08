create schema dtu;
use dtu;

create table stream(steamcode int primary key,stream_name varchar(100));
create table student(sid int primary key,student_name varchar(100),passing_year year default null,aggregate_attendence int,aggregate_percentage int,scode int references stream(streamcode));
create table company(cid int primary key,company_name varchar(50),eligible_percentage int);
create table placement(id int primary key,selection_status boolean,participated_student_id int references student(sid),cid int references company(cid));

insert into stream values(111,'cs');
insert into stream values(123,'ec');
insert into stream values(133,'it');

insert into student values(123,'reshma',2019,87,82,111);
insert into student values(124,'pooja',2015,74,79,133);
insert into student values(125,'anu',2013,76,65,111);

insert into company values(1,'ttn',0);
insert into company values(2,'tcs',0);
insert into company values(3,'hcl',60);

insert into placement values(1,true,123,1);
insert into placement values(2,false,123,3);
insert into placement values(3,true,124,2);
