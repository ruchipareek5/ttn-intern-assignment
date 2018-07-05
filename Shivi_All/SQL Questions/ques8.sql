create database if not exists Metro;
use metro;

create table if not exists metro_frequency(hour_slot time, user_travelled int, t_type enum('peak hour', 'non-peak hour'), No_6_coaches int, No_8_coaches int);

insert into metro_frequency values( '08:00:00', 5000, 'peak hour', 10, 20);
insert into metro_frequency values( '09:00:00', 4400, 'peak hour', 15, 8);
insert into metro_frequency values( '10:00:00',3400, 'peak hour', 12, 9);
insert into metro_frequency values( '11:00:00', 2200, 'peak hour', 9, 12);
insert into metro_frequency values( '12:00:00', 1000, 'non-peak hour', 5,4);
insert into metro_frequency values( '13:00:00', 500, 'non-peak hour', 4,3);
insert into metro_frequency values( '14:00:00', 520, 'non-peak hour', 10,2);
insert into metro_frequency values( '15:00:00', 200, 'non-peak hour', 10,3);
insert into metro_frequency values( '16:00:00',700, 'non-peak hour', 9,3);
insert into metro_frequency values( '17:00:00',300, 'non-peak hour',10,1);
insert into metro_frequency values( '18:00:00', 4000, 'peak hour', 12,9);
insert into metro_frequency values( '19:00:00', 3400, 'peak hour', 7, 9);
insert into metro_frequency values( '20:00:00',5200, 'peak hour', 9, 10);
insert into metro_frequency values( '21:00:00',  500, 'non-peak hour', 4, 5);
insert into metro_frequency values( '22:00:00', 12, 600, 'non-peak hour', 8,9);
select * from metro_frequency where t_type='peak hour';