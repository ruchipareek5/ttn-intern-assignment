use ttn_exercise1;

create table user
(	u_id Integer primary key auto_increment ,
    u_name varchar(50) not null,
    u_phno bigint not null,
    u_age integer not null
 );
 
create table ride(
	r_id Integer primary key auto_increment,
    u_id Integer ,
    tolocation varchar(50) not null,
    fromlocation varchar(50) not null,
    money float not null,
	r_type varchar(50) not null,
    date date not null,
    foreign key (u_id) references user(u_id)
 );
 
insert into user values (1,"abc",1234567890,15);
insert into user values (2,"xyz",7891250863,25);
insert into user values (3,"plo",1962167394,35);

insert into ride values (1,1,"delhi","kanpur",1200,"classic","2018-06-12");
insert into ride values (2,1,"delhi","mumbai",9000,"pro","2018-05-12");
insert into ride values (3,1,"mumbai","kanpur",1000,"normal","2018-04-12");
insert into ride values (4,2,"delhi","hyderabad",4200,"share","2018-03-12");
insert into ride values (5,3,"hyderabad","mumbai",5200,"classic","2018-02-12");

/*assumption-> a user is frequent if its no of ride is 3 or more than 3*/
select u.u_name,u.u_age,u.u_phno,r.tolocation,count(r_id) from user u join ride r where u.u_id=r.r_id  ;