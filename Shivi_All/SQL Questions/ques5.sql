 create database if not exists uber;
 use uber;
 create table user_details( id int primary key not null,user_email varchar(50) unique not null, userPass varchar(50), username varchar(50), user_phone int(10));
insert into user_details values(1,'john@abc','abcd', 'john', 1827277284);
insert into user_details values(2,'mary@abc','abcewed', 'john', 1574466476);

insert into user_details values(3,'daniel@abc','abrfefcd', 'daniel', 1572772845);

insert into user_details values(4,'katy@abc','abcefeed', 'katy', 1824477284);

insert into user_details values(5,'daisy@abc','abqcd', 'daisy', 1827327284);

insert into user_details values(6,'tom@abc','abcddeww', 'tom', 1057448574);

insert into user_details values(7,'bella@abc','wdww', 'bella', 1005647475);

insert into user_details values(8,'tim@abc','abwewcd', 'tim', 1005588848);

 create table if not exists travel_details( id int ,foreign key(id) references user_details(id) , total_locations int);
insert into travel_details values(1, 27);
insert into travel_details values(2, 11);
insert into travel_details values(3, 77);

insert into travel_details values(4, 100);

insert into travel_details values(5, 90);
insert into travel_details values(6, 45);

insert into travel_details values(7, 50);
insert into travel_details values(8, 0);
select * from user_details where (select total_locations from travel_details where total_locations>40) and user_details.id= travel_details.id;

SELECT user_details.id, user_details.user_email ,user_details.username, travel_details.total_locations
FROM user_details
INNER JOIN travel_details ON user_details.id= travel_details.id where travel_details.total_locations>40;