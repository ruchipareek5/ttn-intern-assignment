create schema gradleAssignment;
use gradleAssignment;

create table ttn_user(
	userName varchar(10),
    Userage Integer
);

insert into ttn_user values('reshma',28);
insert into ttn_user values('pooja',62);

select * from ttn_user;