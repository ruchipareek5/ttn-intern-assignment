/*Problem Statement 4*/

create table if not exists environment(State_name varchar(20) Primary Key,Carbon_emision int(3) not null,Plastic_Consumtion int(3) not null, Water_pollution int(3)not null);
create table threshold(Carbon_emision int(3) default 60,Plastic_Consumtion int(3) default 50, Water_pollution int(3) default 60);
insert into environment values('Haryana',56,45,70);
insert into environment values('Punjab',54,76,66);
insert into environment values('Gujrat',67,23,56);
insert into environment values('Maharashtra',88,50,34);
insert into environment values('Utter Pradesh',77,87,65);
insert into environment values('Uttrakhand',50,50,50);
insert into threshold values(66,54,60);

select e.* from environment e, threshold t where e.Carbon_emision > t.Carbon_emision OR e.Plastic_Consumtion > t.Plastic_consumtion OR e.Water_Pollution > t.Water_Pollution;

/*Statement for environment friendly states*/
select e.* from environment e, threshold t where e.Carbon_emision < t.Carbon_emision AND e.Plastic_Consumtion < t.Plastic_consumtion AND e.Water_Pollution < t.Water_Pollution;
