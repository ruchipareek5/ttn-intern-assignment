create schema delhi_police_db;
use delhi_police_db;
create table offender(oid int primary key auto_increment,oname varchar(100),age int,city varchar(100));
create table fine(fid int primary key auto_increment,type varchar(100),amount bigint,oid int references offender(oid));

insert into offender values(1,'Ramesh',28,'kalkaji');
insert into offender values(2,'Babita',17,'rohini');
insert into offender values(3,'Shilpa',35,'rohini');
insert into offender values(4,'Rahul',25,'surya nagar');
insert into offender values(5,'Vivek',25,'surya nagar');
insert into offender values(6,'Pranav',28,'tilak nagar');
insert into offender values(7,'Pooja',23,'tilak nagar');
insert into offender values(8,'Preeti',20,'tilak nagar');
select * from offender;

insert into fine values(1,'spitting in no spit zone',100,1);
insert into fine values(2,'no licence',500,1);
insert into fine values(3,'no helmet',150,2);
insert into fine values(4,'parked in no parking zone',250,3);
insert into fine values(5,'no helmet',150,4);
insert into fine values(6,'no licence',500,5);
insert into fine values(7,'no helmet',150,6);
insert into fine values(8,'no licence',500,7);
insert into fine values(9,'no helmet',150,8);
select * from fine;

select oname,city from offender of join fine fn on of.oid=fn.oid where (fn.amount>100 and of.age between 10 and 25);



