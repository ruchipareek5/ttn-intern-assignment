create schema if not exists xyz_college;

create table if not exists course(cid int primary key auto_increment,cname varchar(100));
create table if not exists student(sid int primary key auto_increment,sname varchar(100),currentsem int,currentsem_attendence int,aggregate_percentage_till_now int,address varchar(200),scourceId int references course(cid));
create table if not exists attendence(sid int references student(sid),attendence_percentage int, sem_number int);

insert into course values(1,'mca');
insert into course values(2,'bca');

insert into student values(1,'reshma',5,78,80,'c-389 brij vihar delhi',1);
insert into student values(2,'reshmi',4,65,60,'d-389 ashok nagar delhi',1);


insert into attendence values(1,75,1);
insert into attendence values(1,78,2);
insert into attendence values(1,75,3);
insert into attendence values(1,80,4);
insert into attendence values(2,75,1);
insert into attendence values(2,86,2);
insert into attendence values(2,75,3);


select * from student where sid = (
select sid from(
select sid, avgper from (
select a.sid,avg(attendence_percentage) avgper from attendence a 
join student s on a.sid=s.sid
where a.sem_number in (s.currentsem-1,s.currentsem-1) group by sid) as abc where avgper<78)as xyz);