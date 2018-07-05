 /* problem statement no 3*/

create database if not exists college ;

create user 'director'@'localhost' identified by 'director';

grant select,grant option on college.* to 'director'@'localhost';


create table if not exists students(student_id int(10)
 primary key not null,
student_name varchar(12),
 fathers_name varchar(50),address varchar(100),
fathers_occupation varchar(50), student_age int(4),course varchar(50));
 

 create table if not exists semwise_attendence(student_id int(10) primary key not null,
 
 sem1_attendence int(3),sem2_attendence int(3),
 sem3_attendence int(3),sem4_attendence int(3),
sem5_attendence int(3),sem6_attendence int(3));
 

 insert into students values(1,'abc','acb','sbjsdowe','engineer',19,'physics');

 insert into students values(2,'buj','acccweb','sbjsdefdewowe','sc',20,'wd');
 
insert into students values(3,'bjk','acccb','eefef','enginsxeer',21,'physdwdics');

 insert into students values(4,'abvc','acfewfb','efewf','enneer',20,'physedwdics');
 
insert into students values(5,'abhvkc','wew','efewf','dw',22,'edwdwdw');

 insert into students values(6,'aghcbc','aewfdwcb','fcew','dd',21,'phyedwsics');

 insert into students values(7,'abcjh','fwef','dcds','engidewdneer',23,'phdcysics');

 insert into students values(8,'abcsdd','ewf','sfefwe','engicwneer',22,'sciences');

 
 insert into semwise_attendence values(1,40,27,50,25,35,37);
  
insert into semwise_attendence values(2,60,67,60,25,65,67);
 
  insert into semwise_attendence values(3,40,47,50,45,45,37);
  
  insert into semwise_attendence values(5,60,57,50,55,55,57);
     
insert into semwise_attendence values(6,70,77,70,75,75,77);
   
/* sql query */

  select * from students where (select student_id from semwise_attendence
   
where students.student_id=semwise_attendence.student_id and sem5_attendence<50 and sem6_attendence<50);