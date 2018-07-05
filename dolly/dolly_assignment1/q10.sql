use ttn_exercise1;

 create table transaction(
	t_id Integer primary key auto_increment,
    person varchar(50) not null,
    review varchar(50) not null,
    datetime datetime not null,
    amount float not null,
    location varchar(250) not null
 );
 
 insert into transaction values (1,"aaa","xxx","2018-06-12 05:02:33",10000,"new delhi railway stn");
 insert into transaction values (2,"nirav modi","bbb","2017-06-10 05:02:33",9000,"jaipur");
 insert into transaction values (3,"nirav modi","zzz","2018-05-09 05:02:33",8000,"udaipur");
 insert into transaction values (4,"nirav modi","bbb","2018-04-05 05:02:33",5000,"lucknow");
 insert into transaction values (5,"nirav modi","aaa","2018-01-09 05:02:33",300,"new delhi");
 insert into transaction values (6,"ddd","bbb","2017-06-10 05:02:33",9000,"jaipur");
 insert into transaction values (7,"llll","zzz","2018-05-09 05:02:33",8000,"udaipur");
 insert into transaction values (8,"pppp","bbb","2018-04-05 05:02:33",5000,"lucknow");
 insert into transaction values (9,"xxx","aaa","2018-01-09 05:02:33",300,"new delhi");
 
 /* transaction by nirav modi*/
 select * from transaction where person="nirav modi";
 /* distinct employee who reviewed nirav modi*/
 select distinct(x.review) from (select * from transaction where person="nirav modi")x;
 /*all transaction done in eployment by reviewer above*/
 select * from transaction where review in (select distinct(x.review) from (select * from transaction where person="nirav modi")x);