/* Problem Satement 1*/

create table if not exists mall(Shop_id int(3) primary key,Shop_name varchar(20),Opening_date Date);
insert into mall values(1,'KFC','2018-01-01');
insert into mall values(2,'McD','2018-01-03');
insert into mall values(3,'Big Bazaar','2018-01-07');
create table sales(shop_id int(3),month1 int(10),month2 int(10),month3 int(10),month4 int(10),month5 int(10),month6 int(10),foreign key(shop_id) references mall(shop_id));
insert into sales values(1,100000,1100000,600000,1500000,1300000,1100000);
insert into sales values(2,600000,700000,600000,800000,900000,700000);
insert into sales values(3,100000,1700000,1300000,1500000,1300000,1000000);

select m.* from mall m,sales s where m.shop_id=s.shop_id AND s.month1+s.month2+s.month3+s.month4+s.month5+s.month6>5000000;

/* Problem Statement 2*/





















