create schema usict;

create table if not exists semester1(
	studentID int primary key,
    studentName varchar(20),
    courseName varchar(10),
    noOfClassesAttended int,
    noOfClassesMissed int
    );
	
create table if not exists semester2(
	studentID int primary key,
    studentName varchar(20),
    courseName varchar(10),
    noOfClassesAttended int,
    noOfClassesMissed int
    );
    
insert into semester1 values(1,'A','IT',80,20);
insert into semester1 values(2,'B','CSE',70,30);
insert into semester1 values(3,'C','CSE',90,10);
insert into semester1 values(4,'D','IT',85,15);
insert into semester1 values(5,'E','IT',90,5);

insert into semester2 values(1,'A','IT',60,40);
insert into semester2 values(2,'B','IT',65,35);
insert into semester2 values(3,'C','IT',95,5);
insert into semester2 values(4,'D','IT',61,39);
insert into semester2 values(5,'E','IT',92,8);
	
select *from semester1;
select *from semester2;

select distinct studentName, coursename from semester1 where noOfClassesMissed>=20
union
select distinct studentName, courseName from semester2 where noOfClassesMissed>=20;