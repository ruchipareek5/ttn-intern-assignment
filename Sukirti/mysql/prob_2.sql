 /* problem statement no 2*/

create database if not exists Demographic_details_delhi ;

create user 'commissioner'@'localhost' identified by 'police';

grant select,grant option on Demographic_details_delhi.* to 'commissioner'@'localhost';


create table if not exists offenders(offence_id int(10)
 
primary key not null,Liscence_no varchar(12),Offenders_name varchar(50), 
offenders_age int(4),fine int(5));
 
 
insert into offenders values(1,'2017dj8','abc',18,500);
 
insert into offenders values(13,'3740dj8','ed',12,500);
 
insert into offenders values(12,'23rfrdj8','ewdwdew',19,500);

 insert into offenders values(11,'3e9dhw','sxd',20,50);

 insert into offenders values(2,'23edfe','edwedd',21,50);
 
insert into offenders values(3,'2r4fff','dwfdwe',18,200);


 insert into offenders values(4,'cd3ed38','adwd',15,500);

 insert into offenders values(5,'29jif','sdxs',17,500);
 
insert into offenders values(6,'70simw','scxs',18,100);
 
insert into offenders values(7,'798gxd78','abcdcsc',19,150);

 insert into offenders values(8,'83uru4','abcss',24,500);
 
insert into offenders values(9,'2993rj8','abce',28,500);
 
insert into offenders values(10,'er3j328','abcedf',25,500);



/*sql query*/
 select * from offenders where offenders_age between 18 and 25 and fine >100; 
 