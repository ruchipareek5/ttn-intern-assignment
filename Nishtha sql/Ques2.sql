create database Police;
use Police;

create table Offender(
Off_id int primary key not null auto_increment,
Off_name varchar(20),
Off_crime varchar(30),
Off_address varchar(50),
Off_age int,
crime_id int references fine (crime_id)
);

drop table Offender;

insert into Offender values(101,'Ravi','Theft','PitamPura',18,102);
insert into Offender values(102,'Ajay','murder','Rohini',22,101);
insert into Offender values(103,'Rahul','Accident','Shadra',30,103);
insert into Offender values(104,'Akhil','murder','Rohini',25,102);
insert into Offender values(106,'Nikhil','Molest','Rohini',19,104);
select * from offender;

create table Location(
	Loc_id int ,
    Off_id int references Offender (Off_id),
    Loc_name varchar(20)
);

insert into Location values(1,101,'Pitampura');
insert into Location values(2,101,'Cp');
insert into Location values(3,102,'rohini');
insert into Location values(4,103,'malviya nagar');

create table Fine(
crime_name varchar(20),
crime_fine int,
crime_id int primary key
);

drop table Fine;
insert into Fine values('muder', 20000, 101);
insert into Fine values('theft ',5000,102);
insert into Fine values('road jump ',100,103);
insert into Fine values('Molest ',15000,104);

select * from Offender having crime_id  in
 (Select crime_id from fine where crime_fine >100  );
 
 
 Select o.off_age,o.off_name,o.off_crime,o.off_address,
 l.Loc_name ,
 f.crime_fine
from Offender as o
cross join  Location as  l on o.off_id =l.Off_id
cross join Fine as f on o.crime_id = f.crime_id where f.crime_fine >100 and o.off_age between 18 and 25;