create database college ;
use college;

create table student
(
s_id int primary key ,
s_name varchar(20),
s_age int,
s_add varchar(50),
s_course varchar(20),
s_semester int,
s_class_attend int 
);

insert into student values(101,'gagan',24,'SB','MCA',3,20);

insert into student values(102,'vriti',20,'RB','MCA',1,40);

insert into student values(103,'nishtha',20,'PP','MCA',4,60);

select * from student;

create table subject
(
	sub_id int primary key,
    sub_sem int ,
    sub_name varchar(20),
    sub_no_class int,
	s_id  int references student(s_id)
); 

insert into subject values(1,1,'c++',20,101);
insert into subject values(2,3,'Daa',20,103);
insert into subject values(3,2,'OS',20,102);


select * from student as s
join  subject as sb on s.s_id = sb.s_id where s.s_semester>2 and s.s_class_attend > sb.sub_no_class;

Select * from student where s_id = (select s_id from subject where sub_sem>2 );