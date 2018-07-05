create schema TTN1;

use TTN1;

create table if not exists team(
	teamName varchar(20) primary key,
    reuiredResources int,
    assignedResources int
    );
    
create table if not exists resources(
	ID int primary key,
    isAssigned varchar(10),
    performanceRecord int
    );
    
select *from team;

insert into team values('A',2,2);
insert into team values('B',1,1);
insert into team values('C',2,1);
insert into team values('D',1,1);

select ID from resources where isAssigned='yes';

select teamname from team where reuiredResources>assignedResources;

select ID,performanceRecord from resources;