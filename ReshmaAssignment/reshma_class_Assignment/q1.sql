create schema if not exists xyzmall;
use xyzmall;

grant all privileges on xyzmall to mallOwner @localhost;
create table if not exists mall(mId int primary key,name varchar(100),city varchar(100),address varchar(500),no_of_shops bigint, gst_number varchar(20) unique);
create table if not exists shopAdmin(shop_admin_id int primary key auto_increment, name varchar(100),no_of_shops int);
create table if not exists shop(sId int primary key auto_Increment,name varchar(100),type varchar(100),opening_date date, adminId int references shopAdmin(shop_admin_id));
create table if not exists Monthlysales(sId int references shop(sId),sales bigint,startDate date,endDate date);

insert into mall values(1,'pacific','east delhi','c 504 nh5 laxmi nagar east delhi -201011',1000,'aap23j4kl301');
insert into shopAdmin values(1,'Rakesh Sharma',10);
insert into shopAdmin values(2,'Amit Kumar',2);
insert into shopAdmin values(3,'Mohit Singh ',5);
insert into shop values(1,'lakme','beautySection','2010-08-31',1);
insert into shop values(2,'big bazaar','generalStoreSection','2011-04-01',2);
insert into Monthlysales values(1,100800,'2010-09-01','2010-09-30');
insert into Monthlysales values(1,100000,'2010-10-01','2010-10-30');
insert into Monthlysales values(1,100000,'2010-11-01','2010-11-30');
insert into Monthlysales values(1,5000000,'2010-12-01','2010-12-30');
insert into Monthlysales values(2,100000,'2010-10-01','2010-10-30');

select * from shop where sId in (
select sId from (
select m.sId,sum(sales) sale from Monthlysales m
join shop s on s.sId=m.sId
where month(m.startDate) between month(s.opening_date) and month(s.opening_date)+6) as a1 where sale>5000000);