use ttn_exercise1;
create table state 
(	s_id Integer primary key auto_increment ,
    s_name varchar(50) not null,
    s_area Integer not null,
    s_forest Integer not null
 );
  create table demographic_detail(
	d_id Integer primary key auto_increment,
    s_id Integer ,
    carbon Integer not null,
    plastic integer not null,
    climate varchar(50) not null,
    status varchar(50),
    date date,
    foreign key (s_id) references state(s_id)
 );
 insert into state values(1,"delhi",100,20);
 insert into state values(2,"jaipur",300,50);
 insert into state values(3,"haryana",200,60);
 insert into state values(4,"up",800,90);
 
 insert into demographic_detail values(1,1,100,200,"sunny","below threshhold value","2018-06-12");
 insert into demographic_detail values(2,2,00,100,"sunny","environment friendly","2018-06-12");
 insert into demographic_detail values(3,1,100,300,"very sunny","below threshhold value","2019-06-12");
 insert into demographic_detail values(4,3,100,200,"warm","environment friendly","2018-06-12");
 insert into demographic_detail values(5,4,400,200,"warm","below threshhold value","2018-06-12");
 
 select s.s_name,d.carbon,d.plastic,d.climate from demographic_detail d join state s where d.s_id=s.s_id and d.status="environment friendly";
 select s.s_name,d.carbon,d.plastic,d.climate from demographic_detail d join state s where d.s_id=s.s_id and d.status not in("environment friendly"); 