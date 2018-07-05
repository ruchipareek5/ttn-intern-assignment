/*Problem Statement 6*/

create table if not exists placement(Student_id int(5) primary key,Student_name varchar(20) not null,Branch varchar(20) Not null,Year int(4),Eligible boolean, Participated Boolean, Placed Boolean);
insert into placement values(10001,'Rohit','CSE',2016,1,0,0);
insert into placement values(10002,'Siddharth','IT',2017,1,1,0);
insert into placement values(10003,'Gaurav','MCA',2012,1,0,0);
insert into placement values(10004,'Mehak','CSE',2013,0,0,0);
insert into placement values(10005,'Parth','ECE',2016,1,1,0);
insert into placement values(10006,'Abhishek','Mech',2015,0,0,0);

select * from placement where Year>2013 AND Eligible=true AND Participated=true AND Placed=FALSE;
select count(Student_id) from placement where Year>2013 AND Eligible=true AND Participated=true AND Placed=FALSE;/* For trend analysis*/

select * from placement where Year>2013 AND Eligible=true AND Participated=false ;
select count(Student_id) from placement where Year>2013 AND Eligible=true AND Participated=false;/* For trend analysis*/

select * from placement where Year>2013 AND Eligible=false;
select count(Student_id) from placement where Year>2013 AND Eligible=false;/* For trend analysis*/