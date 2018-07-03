use ttn;

create table magenta_metro(
	metro_id Integer primary key auto_increment,
    coaches Integer
);

insert into magenta_metro values(100,4);
insert into magenta_metro values(101,6);
insert into magenta_metro values(102,8);
insert into magenta_metro values(103,8);
insert into magenta_metro values(104,8);
insert into magenta_metro values(105,6);
insert into magenta_metro values(106,6);
insert into magenta_metro values(107,6);
insert into magenta_metro values(108,4);
insert into magenta_metro values(109,4);
insert into magenta_metro values(110,4);

select * from magenta_metro;

create table magenta_line(
	ml_id Integer primary key auto_increment,
	metro_id Integer,
    start_route varchar(20),
    start_time time,
    end_route varchar(20),
    end_time time,
    time_delay time,
    network_issue boolean,
    passenger_count Integer,
    foreign key(metro_id) references magenta_metro(metro_id)
);
alter table magenta_line add column date date;

insert into magenta_line values(200,100,'badli','6:00','Huda City Center','8:30','20:00',1,120,'2018-06-12');
insert into magenta_line values(201,101,'jahangir puri','7:00','Huda City Center','8:15','5:00',1,150,'2018-06-12');
insert into magenta_line values(202,102,'vishvidhyala','7:30','Huda City Center','9:30','45:00',1,190,'2018-06-12');
insert into magenta_line values(203,103,'Kashmiri Gate','6:20','Huda City Center','7:15','2:00',0,100,'2018-06-13');
insert into magenta_line values(204,104,'badli','6:00','Huda City Center','8:30','20:00',1,140,'2018-06-14');
insert into magenta_line values(205,105,'jahangir puri','6:00','Huda City Center','8:30','20:00',0,80,'2018-06-15');
insert into magenta_line values(206,106,'badli','6:00','Huda City Center','8:30','20:00',1,110,'2018-06-16');
insert into magenta_line values(207,107,'vishvidhyala','6:00','Huda City Center','8:30','20:00',0,90,'2018-06-17');
insert into magenta_line values(208,108,'badli','6:00','Huda City Center','8:30','20:00',1,130,'2018-06-18');

select * from magenta_line;

select * from magenta_line join magenta_metro on magenta_line.metro_id=magenta_metro.metro_id;
