create schema metro;

use metro;

create table if not exists delhiMetro(
	timeOfTheday varchar(20),
    noOfPeopleCheckIn bigint
    );
    
select *from delhiMetro;
insert into delhiMetro values('6-7',300);
insert into delhiMetro values('7-8',200);
insert into delhiMetro values('8-9',1000);
insert into delhiMetro values('9-10',1200);
insert into delhiMetro values('10-11',800);
insert into delhiMetro values('11-12',500);

select *from delhiMetro;

select timeOfTheday from delhiMetro where noOfPeopleCheckIn>=800;