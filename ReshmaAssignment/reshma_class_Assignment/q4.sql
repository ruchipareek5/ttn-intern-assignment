create schema ministry;
use ministry;

create table stateDetails(id int primary key auto_increment,name varchar(100),population bigint);
create table statePollutants(pid int primary key auto_increment,carbon_emmision bigint default null,plastic_consumption bigint default null, ppt_particulate bigint default null,sid int references state(id));

insert into stateDetails values(1,'kerala',2500000);
insert into stateDetails values(2,'karnataka',2000000);

insert into statePollutants values(1,25000,650000,2300,1);
insert into statePollutants values(2,225000,1650000,233300,2);

/*finging the states falling below threshhold value assuming that threshhold value is 900000 */
select * from stateDetails sd join statePollutants sp where sd.id=sp.sid and (carbon_emmision+plastic_consumption+ppt_particulate) > 900000;

/*finging the states falling above threshhold value assuming that threshhold value is 900000 */
select * from stateDetails sd join statePollutants sp where sd.id=sp.sid and (carbon_emmision+plastic_consumption+ppt_particulate) < 900000;




