 /* problem statement no 6*/

create database if not exists DTU  ;

create user 'chairman'@'localhost' identified by 'chairman';

grant select,grant option on DTU.* to 'chairman'@'localhost';


create table if not exists student_dtu(stu_id int(10)
 primary key not null,
stu_name varchar(12),stream varchar(10), percentage int(3),
 
eligibility enum('eligible','not-eligible'),
 participate_status enum('participated','not-participated'),
 
placement_status enum('placed','not-placed'),
 placement_year year(4));

alter table student_dtu add date_of_placement date;
 
select * from student_dtu;

 insert into student_dtu values(8,'sukirti','physics',79,'eligible','participated','placed','2018','2018-11-11');

insert into student_dtu 
values(6,'sukivivrti','physics',40,'not-eligible','not-participated','not-placed','2017','2017-11-11');

insert into student_dtu values(5,'sakshii','computers',70,'eligible','participated','placed','2017','2017-11-11');

insert into student_dtu values(4,'sukbirti','frerfr',74,'eligible','participated','not-placed','2016','2016-11-11');

insert into student_dtu values(3,'sukhvlirti','rfref',71,'eligible','not-participated','not-placed','2015','2015-11-11');

insert into student_dtu values(2,'shivangii','physrffics',72,'eligible','participated','placed','2014','2014-11-11');

insert into student_dtu values(1,'suyirti','rff',78,'eligible','participated','not-placed','2013','2013-11-11');

insert into student_dtu values(7,'sukefi','rfefs',44,'not-eligible','not-participated','not-placed','2018','2018-11-10');
 


/* sql queries*/

select stu_id,stu_name as eligible_participated_notplaced,stream from student_dtu 
where 
year(date_of_placement)=YEAR(DATE_SUB(CURDATE(), INTERVAL 5 YEAR))

and eligibility='eligible'and participate_status='participated' and placement_status='not-placed';


select stu_id,stu_name as eligible_notparticipated,stream from student_dtu 
where
 year(date_of_placement)=YEAR(DATE_SUB(CURDATE(), INTERVAL 5 YEAR))

and eligibility='eligible'and participate_status='not-participated';


select stu_id,stu_name as not_eligible,stream from student_dtu where
 
year(date_of_placement)=YEAR(DATE_SUB(CURDATE(), INTERVAL 5 YEAR))
 
and eligibility='not-eligible';