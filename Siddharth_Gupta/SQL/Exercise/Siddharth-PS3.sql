/*Problem Statement 3*/

create table if not exists student(Student_id int(5) Primary key, Student_name varchar(20) Not NULL, Student_branch varchar(10) Not NULL, Year_of_Joining int(4) Not NULL);
create table if not exists sem1(Student_id int(5),Attendence int(3),foreign key(Student_id) references student(Student_id));
create table if not exists sem2(Student_id int(5),Attendence int(3),foreign key(Student_id) references student(Student_id));
insert into student values(10001,'Hari','CSE',2017);
insert into student values(10002,'Siddharth','CSE',2017);
insert into student values(10003,'Mehak','ECE',2017);
insert into student values(10004,'Gaurav','CSE',2017);
insert into student values(10005,'Rohit','Mech.',2017);
insert into sem1 values(10001,70);
insert into sem1 values(10002,80);
insert into sem1 values(10003,50);
insert into sem1 values(10004,90);
insert into sem1 values(10005,65);
insert into sem2 values(10001,70);
insert into sem2 values(10002,80);
insert into sem2 values(10003,80);
insert into sem2 values(10004,70);
insert into sem2 values(10005,55);

select a.* from student a,sem1 b,sem2 c where b.Attendence<=75 AND c.Attendence<=75 AND A.Student_id=B.Student_id AND A.Student_id=c.Student_id;



