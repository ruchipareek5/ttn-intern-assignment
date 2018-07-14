create database SIM2;
use sim2;
create table candidate(
 c_id int (20) primary key  ,
 name varchar(200),
 age int(20),
 adhaar bigint,
 address varchar(390), 
 contact bigint , 
 email varchar(309),
 course varchar(209),
 certified boolean default 
 );
 

create table qualification_pack(
 q_id int (20) primary key ,
 name varchar (209),
 e_id int(20),
 foreign key (e_id) references eli);

create table eligibilty (
e_id int (20) primary key auto_increment , 
education varchar (20)); 

create table training_partner (
tp_id int(20) primary key,
name varchar (209),
contact bigint ,
email varchar(309));


create table training_centre (
tc_id int(20) primary key, 
name varchar(20) ,
state varchar(20) ,
pincode int (20), 
tp_id int (20) ,
foreign key (tp_id) references training_partner(tp_id));


create table asses_agency (
a_id int (20) primary key,
name varchar(20)   , 
location varchar (20),
contact bigint ,
email varchar(30));


create table batches (
 b_id int(20) primary key  ,
 num_candidates int (20), 
 start_date date , 
 end_date date,
 asses_date date ,
 tc_id int (20),
 a_id int (20),
 q_id int (20),
 foreign key (tc_id) references training_centre(tc_id),
 foreign key (a_id) references asses_agency(a_id),
  foreign key (q_id) references qualification_pack(q_id));




create table batch_candidate (
b_id int (20) , 
c_id int (20) , 
marks int (20) , 
attendence int (20),
 foreign key (b_id) references batches(b_id),
foreign key (c_id) references candidate(c_id));


create table trainer_partner_qualification (tp_id int (10),q_id int (10), foreign key (tp_id) references training_partner(tp_id),
foreign key (q_id) references qualification_pack(q_id) );

insert into candidate values(1,"dolly",23,6256,'rohini',34932849,"dolly@gmail.com", 'solar designer',0);
insert into candidate values (2,"Rishabh",22,625633,'Ghz',34934332849,"rishabh@gmail.com", 'solar pv installer',0),
(3,"Arpit",26,625633323,'Delhi',328239,"arpit@gmail.com", 'waste water treatment technician',0),
(4,"Vishaka",26,6232325633,'Shahdara',349332849,"vishakha@gmail.com", 'waste picker',0),
(5,"Gagan",20,6256323233,'Noida',999999,"gagan@gmail.com", 'roof top solar grid engineer',0);
insert into candidate values(6,"Lohit",20,625342323233,'Noida',93,"lohit@gmail.com", 'waste picker',0);
 
 
 
 insert into qualification_pack values(100,'solar designer',3),
 (101, 'solar pv installer',2),
 (102,'waste water treatment technician',1),
 (103,'roof top solar grid engineer',4),
 (104,'waste picker',1);
 
 
 insert into batches values(1001,20,'2015-04-14','2015-08-12','2015-08-23',900,500,100);
 insert into batches values(1000,35,'2016-04-14','2016-08-12','2016-08-16',900,500,100),
  
 
 (1002,25,'2017-01-13','2017-07-12','2017-09-16',901,501,101),
 (1003,40,'2018-01-14','2018-03-12','2018-04-16',903,503,103),
 (1004,30,'2010-01-14','2010-03-12','2010-04-16',904,504,104),
 (1005,40,'2018-04-14','2018-09-12',null,902,null,102);
 
 
 insert into asses_agency values(500,'Virtual Eduaction','Delhi',32323453234,'virtual@gmail.com'),
 (501,'Trend Setters ','Delhi',3453234,'Trend@gmail.com'),
 (502,'Co-cubes','Delhi',32343453234,'cocubes@gmail.com'),
 (503,'Mettl','Delhi',3243234,'mettl@gmail.com'),
 (504,'ACE Assisment','Delhi',323234,'ace@gmail.com'),
 (505,'Navrati Tech.','Delhi',3232334,'ntech@gmail.com');
 select * from asses_agency;
 
 insert into training_partner values (5000,'Institue of solar power technologies',9897367362,'ispt@gmail.com'),
 (5001,'EDS Global Knowledge pvt. ltd.',9897367362,'eds@gmail.com'),
 (5002,'Anula Education pvt. ltd',9897367362,'anula@gmail.com'),
 (5003,'Ultimate energy resourse pvt. ltd.',9897367362,'ultimate@gmail.com'),
 (5004,'centurion university',9897367362,'centurion@gmail.com');
 
 insert into training_centre values(900,'CDN Infrastructures','Delhi',201009,5000),
 (901,'WebTech universal ','Andhra Pradesh',203309,5001),
 (902,'Kerla Centre','Kerala',203309,5002),
 (903,'UERPL Training ','UP',205509,5003),
 (904,'Prime Education','Gujrat',201009,5004);
 insert into training_centre values(905,'CDN Info','Delhi',201009,5003);
 
 insert into batch_candidate values (1000,1,78,78),
  (1001,2,37,78),
  (1002,3,67,80),
  (1003,4,90,90),
  (1004,5,null,60);
  insert into batch_candidate values (1004,6,99,99);
  
   insert into trainer_partner_qualification values (5000,100),
   (5001,101),
   (5002,102),
   (5003,103),
   (5004,104);
 
 
 

INSERT INTO `sim`.`eligibilty` (`e_id`, `education`) VALUES ('1', '10th ');
INSERT INTO `sim`.`eligibilty` (`e_id`, `education`) VALUES ('2', '12th');
INSERT INTO `sim`.`eligibilty` (`e_id`, `education`) VALUES ('3', 'graduation');
INSERT INTO `sim`.`eligibilty` (`e_id`, `education`) VALUES ('4', 'post_graduation');

 
   update candidate set certified =  1 where c_id in  (select marks ,c_id from  batch_candidate  );
 select count(c_id) from candidate union (select count(x.c_id)  from candidate 
join (select c_id from batch_candidate join batches where batches.b_id = batch_candidate.b_id and batches.a_id is not null and batches.end_date <curdate() )x
 where x.c_id=candidate.c_id)   ;
 
 ###5
 select state,count(tc_id) as Total_centers from training_centre group by state;
 select * from batches;
 
 
#9
select b_id, num_candidates, start_date, end_date 
from batches 
where end_date>curdate();  


#6
select count(b_id) as total_batches 
from batches 
where year(end_date)< year(curdate()) and year(end_date) > year(curdate())-6;


#12
select count(b_id) as not_assinged
from batches
where end_date> curdate() and a_id is null;

#10

select* from training_centre;
select * from batches;
select * from batch_candidate;
select * from candidate;

select name from candidate where c_id =any (select c_id from batch_candidate where b_id =
(select b_id as batch from batches where tc_id =(select tc_id from training_centre where state='Andhra Pradesh')));


select c.name from candidate as c join batch_candidate as bc on bc.c_id= c.c_id where bc.b_id=(
select b.b_id from batches as b join training_centre as tc on b.tc_id = tc.tc_id where tc.state = 'Andhra Pradesh');



#7
select * from batches;
select * from training_centre;
select(select name from training_partner group by tp_id having tp_id in
(select tc.tp_id from training_centre as tc join batches as b on tc.tc_id = b.tc_id group by b.tc_id)),
(select count(tc.tc_id) from training_centre as tc join batches as b on tc.tc_id = b.tc_id group by b.tc_id); 

select * from training_partner group by tp_id having tp_id in
(select tc.tp_id from training_centre as tc join batches as b on tc.tc_id = b.tc_id group by b.tc_id);






   ####1 
 select (select count(c_id) from  candidate ) as enrolled , (select count(c_id) from candidate where certified = 1) as certified,(
  select count(x.c_id)  from candidate 
join (select c_id from batch_candidate join batches where batches.b_id = batch_candidate.b_id and batches.a_id is not null and batches.end_date <curdate() )x
 where x.c_id=candidate.c_id) as Assessed  ;
 
 
 ##2



###3
select count(b_id) , q_id from batches where end_date>curdate() and start_date <curdate() group by (q_id);

##select count(c_id) from candidate join batches where candidate.c_id=batches.c_id group by (batches.q_id);

 ##4
 select sum(num_candidates),month(asses_date) ,year(asses_date) from batches where asses_date < curdate() and year(asses_date)=year(curdate())group by month(asses_date) ;
 
 
 ##10
 
 
 ###9
 
 select * from batches;
 
 ##12
 select count(b_id) from batches where end_date < curdate() and asses_date is null;
 
 
 select b_id , num_candidates , start_date , end_date from batches where end_date > curdate();
 
 ### 10
 /*select name from candidate where c_id in (select candidate.c_id,training_centre.c_id from candidate inner join  training_centre where state ='Andhra Pradesh' );
*/ 
 set sql_safe_updates = 0;
 ###5
 select state,count(tc_id) from training_centre group by state;
 
 select * from asses_agency;
 select * from batches;
 
 
 ##8
 
 select name from training_centre where tc_id  not in (select tc_id from batches);
 ##13
 select name , location , count(name) from asses_agency join batches where asses_agency.a_id = batches.a_id group by (asses_agency.name) order by (batches.a_id);


####d9
select * from batches;