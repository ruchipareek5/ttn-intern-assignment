use ttn_exercise1;
/*many offender can do many violations*/
create table offenders(
	o_id Integer primary key auto_increment ,
    o_name varchar(50) not null,
    o_age varchar(50) not null
);
drop table violation;
create table violation(
	v_id Integer primary key auto_increment ,
    v_type varchar(50) not null,
    v_fine float  ,
    v_punishment varchar(25)
);
create table map
(
	m_id Integer primary key auto_increment,
    o_id Integer ,
    v_id Integer not null,
    date date not null,
    foreign key(o_id) references offenders(o_id),
    foreign key(v_id) references violation(v_id)
);

insert into offenders values(1,"aaa",14);
insert into offenders values(2,"bbb",18);
insert into offenders values(3,"ccc",20);
insert into offenders values(4,"ddd",25);
insert into offenders values(5,"eee",35);

insert into violation values(1,"theft",null,"abc123");
insert into violation values(2,"rob",100,"rrr123");
insert into violation values(3,"xxx",200,"xxx123");
insert into violation values(4,"yyy",300,"yyy123");
insert into violation values(5,"zzz",null,"zzz123");

select * from violation;
insert into map values(1,1,1,"2018-06-12");
insert into map values(2,3,1,"2018-06-12");
insert into map values(3,1,5,"2018-06-12");
insert into map values(4,4,2,"2018-06-12");
insert into map values(5,5,1,"2018-06-12");

select * from map;
select o_id,o_name from offenders where o_age between 18 and 25 ;

select offenders.o_name,map.date from offenders join map where offenders.o_id=map.o_id and offenders.o_age between 18 and 25
union
select violation.v_type,map.date from violation join map where violation.v_id=map.v_id and violation.v_fine >100.0;
