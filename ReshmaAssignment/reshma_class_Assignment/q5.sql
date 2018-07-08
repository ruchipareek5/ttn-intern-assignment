create schema uber;
use uber;

create table uberCar(id int primary key auto_increment,num varchar(15) unique,passengerCapacity int);
create table user(id int primary key auto_increment,name varchar(100),location varchar(100),phn bigint);
create table ride(id int primary key,carId int references uberCar(id),uid int references user(id),purpose varchar(100),distance int,amount bigint);

select * from uberCar;

insert into uberCar values(1,'DL382DF78',4);
insert into uberCar values(2,'DL482DF78',4);
insert into uberCar values(3,'DL582DF78',4);

insert into user values(1,'reshma','laxmi nagar',9871333425);
insert into user values(2,'reshmi','laxmi nagar',9871222425);
insert into user values(3,'sree','mohan nagar',8878333425);
insert into user values(4,'kumar','moti nagar',8878333425);

insert into ride values(1,1,1,'office',40,200);
insert into ride values(2,1,1,'office',40,200);
insert into ride values(3,1,1,'office',40,200);
insert into ride values(4,1,2,'domestic',40,200);
insert into ride values(5,2,3,'office',40,250);
insert into ride values(6,2,2,'domestic',40,200);
insert into ride values(7,2,4,'other',40,200);
insert into ride values(8,2,2,'domestic',40,200);


select * from user where id in (
select uid from(
select uid,count(uid) count_id from ride group by uid)as a1 where a1.count_id>2);





