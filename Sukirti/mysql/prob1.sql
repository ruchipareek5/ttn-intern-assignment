/* problem statement no 1*/

create database if not exists Mall;

create user 'mall_owner'@'localhost' identified by 'mallowner';

grant select,grant option on Mall.* to 'mall_owner'@'localhost';


/* table 1 shop_details*/
 
use Mall;

create table if not exists shop_list
( shop_id int(10) primary key not null,
 
shop_name varchar(50),month_of_opening enum('jan','feb','mar','apr','may','jun','jul','aug','sept','oct','nov','dec'),
 
shop_manager_name varchar(50));
 
 
alter table shop_list add date_of_open date;
 
create table if not exists shopwise_revenue_deails
 (shop_id int(10),
month_revenue enum('jan','feb','mar','apr','may','jun','jul','aug','sept','oct','nov','dec'),

 Primary key(shop_id,month_revenue) ,salary int(10), c int(10));
 
 
 
 
insert into shop_list values(1,'shop1','jan','sukirti','2018-01-01');
 
insert into shop_list values(2,'shop2','feb','deepika','2018-02-01');
 
insert into shop_list values(3,'shop3','2009','deepshikha');
 
insert into shop_list values(4,'shop4','2010','sakshi');
 
insert into shop_list values(5,'shop5','2009','shivangi');
 
insert into shop_list values(6,'shop6','2010','amarjeet');

 insert into shop_list values(7,'shop7','2009','shubham');

 insert into shop_list values(8,'shop8','2010','shivam');
 
insert into shop_list values(9,'shop9','2009','mehak');
 
insert into shop_list values(10,'shop10','2010','gaurav');
 
insert into shop_list values(11,'shop11','2009','sid');

 select * from shopwise_revenue_deails;
 insert into 
shopwise_revenue_deails(shop_id,year_of_revenue,salary,c)
 
values  (1,'feb',1700000,1) on duplicate key update c=c+1;
 
insert into shopwise_revenue_deails values(1,'2010',1300000);
 
insert into shopwise_revenue_deails values(1,'2011',1000000);

 insert into shopwise_revenue_deails values(1,'2012',1200000);
 
insert into shopwise_revenue_deails values(1,'2013',1400000);


 insert into shopwise_revenue_deails values(1,'2014',1100000);
 
insert into shopwise_revenue_deails values(1,'2015',2000000);

 insert into shopwise_revenue_deails values(1,'2016',2100000);

 insert into shopwise_revenue_deails values(1,'2017',2500000);

 insert into shopwise_revenue_deails values(2,'2010',1100000);
 
insert into shopwise_revenue_deails values(2,'2011',1000000);
 
insert into shopwise_revenue_deails values(2,'2012',1200000);
 

insert into shopwise_revenue_deails values(2,'2013',1400000);

 insert into shopwise_revenue_deails values(2,'2014',1100000);
 insert into shopwise_revenue_deails values(2,'2015',1800000);
 insert into shopwise_revenue_deails values(2,'2016',1900000);
 insert into shopwise_revenue_deails values(2,'2017',2000000);
 insert into shopwise_revenue_deails values(3,'2009',500000);
 insert into shopwise_revenue_deails values(3,'2010',700000);
 insert into shopwise_revenue_deails values(3,'2011',000000);
 insert into shopwise_revenue_deails values(3,'2012',200000);
 insert into shopwise_revenue_deails values(3,'2013',400000);
 insert into shopwise_revenue_deails values(3,'2014',100000);
 insert into shopwise_revenue_deails values(3,'2015',800000);
 insert into shopwise_revenue_deails values(3,'2016',900000);
 insert into shopwise_revenue_deails values(3,'2017',500000);
 select * from shopwise_revenue_deails;
 
 