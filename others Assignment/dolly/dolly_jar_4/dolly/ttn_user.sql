use ttn;

create table ttn_user(
	name varchar(10),
    age Integer
);

insert into ttn_user values('zack',28);
insert into ttn_user values('ben',62);

select * from ttn_user;