/* Problem Statement 5*/

create table if not exists uber(uber_id int(10) primary key, Name varchar(20) not null, Contact int(10) not null,Location varchar(20) not null, No_of_rides int(5) default 0, Same_location_everyday boolean);
insert into uber values(727812,'Rohit',83735171,'Noida',67,0);
insert into uber values(345312,'Hari',73846576,'Noida',7,1);
insert into uber values(959512,'Mehak',801974731,'Delhi',80,1);
insert into uber values(728484,'Gaurav',99483391,'Mumbai',96,0);
insert into uber values(724944,'Abhishek',933877399,'Noida',15,0);
insert into uber values(723332,'Parth',938322929,'Banglore',22,1);

select * from uber where No_of_rides>50 OR Same_location_everyday=true;


