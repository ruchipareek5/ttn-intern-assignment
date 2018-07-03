create database ttn1;
use ttn;
create table ttn_user1(
name varchar(30),
d_o_b date,
d_o_j date,
Designation  varchar(30)
);

insert into ttn_user1 values ('Nishtha','1994/02/03','2018/02/03','Intern');
select * from ttn_user1;