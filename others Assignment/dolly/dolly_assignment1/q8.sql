use ttn_exercise1;
/* pindex tells the population vs space value
	if greater than 1 means need more coach 
*/
drop table magenta;
create table metro(
	metro_id  Integer primary key auto_increment,
    noofcoach Integer not null
);
 create table magenta(
	m_id Integer primary key auto_increment,
    metro_id Integer,
	arrival time not null,
    departure time not null,
    pindex Integer not null,
    foreign key(metro_id) references metro(metro_id)
 );
 
 insert into metro values(1,6);
 insert into metro values(2,8);
 insert into metro values(3,6);
 
insert into magenta values(1,1,"05:59:59","06:30:45",0.4);
insert into magenta values(2,1,"09:59:59","09:30:45",0.4);
insert into magenta values(3,1,"10:59:59","10:30:45",0.4);
insert into magenta values(4,1,"11:59:59","11:30:45",0.4);
insert into magenta values(5,1,"12:59:59","13:30:45",0.4);
insert into magenta values(6,2,"09:59:59","10:30:45",1.4);
insert into magenta values(7,2,"08:59:59","09:30:45",1.4);
insert into magenta values(8,3,"07:59:59","08:30:45",0.7);
insert into magenta values(9,3,"11:59:59","13:30:45",0.7);
  
/* count will return the frequency and pindex will help in deciding no of coaches to be increased or not*/  
select count(metro_id),pindex from magenta where pindex<1 ;   