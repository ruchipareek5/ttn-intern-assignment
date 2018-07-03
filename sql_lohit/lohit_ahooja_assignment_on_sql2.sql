#creation of database
create database body;
use body;
#creation of tables
create table if not exists user(username varchar(200) primary key,password varchar(200) unique not null, role_id varchar(20) unique not null,id int(10));
create table if not exists application(application_status varchar(200),username varchar(200), foreign key(username) references user(username),date date,id int(10));
create table if not exists profile(DOB date,name varchar(200),application_id varchar(200) primary key,id int(10));
create table if not exists application_comment(application_id varchar(200),foreign key(application_id) references profile(application_id),comments varchar(200),id int(10),is_active varchar(20));
create table if not exists batch(batch_name varchar(200),start_date date,end_date date,trainer_id varchar(200),assessor_id varchar(200),foreign key(trainer_id) references application(username),foreign key(assessor_id) references application(username),id int(10));
create table if not exists role(role varchar(20),id int(10));

 #select all the past batches of a training partner-ended in past
 Select batch_name from batch where end_date<=CURDATE() and trainer_id like '%';
 #select all the future batches of a training partner-end in future
 Select batch_name from batch where end_date>=CURDATE() and trainer_id like '%';
 #select all the batches assessed by an assessment agency
 Select batch_name from batch where assessor_id like '%' and end_date<=CURDATE();
 #select all the batches assessment body has to assess in future
 Select batch_name from batch where assessor_id like '%' and end_date>=CURDATE();
 #select all the application whose status is submit
 Select username from application where application_status='submit'; 
 #select the active application comments for an application.
 Select comments from application_comment where is_active='yes';
 use ttn_affiliation_body;
 #in=in these 2 dates only searches the excate values
 Select * from application where date_of_apply in('2018-01-29','2018-02-29');
 #between=use to specify the range of the searches
 Select id from application where date_of_apply between '2018-01-28' and'2018-02-29';
 #not in=is used to specify the range to exclude it
 Select id from application where date_of_apply between '2018-01-28' and'2018-02-29' and date_of_apply not in ('2018-01-29','2018-01-28');
 #count()=is used to tell the number of tuples with the particular record
 Select count(id=2) from application where turnover>3.00 group by turnover;
 use body;
 Select min(batch_name) from  (select count(trainer_id),batch_name from batch group by batch_name) as t;
 Select sum(id) from application;
 #create a backup tableapplication_comment
 create table app like application;
 #copy data from one table to another
 insert into app (body_name) select body_name from application;
 #blank values=is null
 #not blank values=is not null
 select a.username from application as a,application_comment as b where a.id=b.id;
 #left join=considers left table with respect to right table
 select application.username from application left join application_comment on (application.id=application_comment.id);
 
 #