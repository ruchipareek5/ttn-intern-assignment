create database ttn_exercise1 ;
use ttn_exercise1;

/*shop_type represent name or type of shop;location represent loaction of shop at that place*/
create table shops(
	shopid Integer primary key auto_increment,
    shop_type varchar(50) not null,
    location varchar(50) not null
);

/*to get sales etc date vise,month vise ,year wise*/
create table monthly_report
(
	report_id Integer primary key auto_increment,
    sales float not null,
	profit float not null,
    date date not null,
    shopid Integer ,
	foreign key (shopid) references shops(shopid)
);

INSERT INTO shops VALUES ('1', 'big bazaar', '13,first floor');
INSERT INTO shops VALUES ('2', 'abc', '5,ground floor');
INSERT INTO shops VALUES ('3', 'xyz', '1,second floor');
INSERT INTO shops VALUES ('4', 'klj', '89,ground floor');
INSERT INTO shops VALUES ('5', 'iop', '34,first floor');

insert into monthly_report values (1,45,67,'2010-07-01',1);
insert into monthly_report values (2,54,7,'2018-01-01',2);
insert into monthly_report values (3,89,27,'2018-02-01',3);
insert into monthly_report values (4,90,12,'2018-03-01',4);
insert into monthly_report values (5,10,9,'2018-04-01',5);
insert into monthly_report values (6,51,9,'2018-08-01',1);

select s.shopid,s.shop_type,s.location from shops s,monthly_report m where s.shopid=m.shopid AND m.sales>50 and m.date between 01-01-2018 and 12-06-18;
