create database a;
show tables;
use a
show tables;
create table table1(name varchar(10),age int(2));
show tables;
grant insert on a.* to 'user1'@'localhost' identified by 'pass';
create table table2(name varchar(10),age int(2));
revoke select on a.* from 'user1'@'localhost';
grant grant option, insert on a.* to 'user1'@'localhost' identified by 'pass';
revoke all on a.* from 'user1'@'localhost';
grant grant option, insert on a.* to 'user1'@'localhost' identified by 'pass';
create user 'user3'@'localhost' identified by 'pass1';
describe table1;
select * from table1;
alter table table2 modify name varchar(30) primary key;
delete from table1;
select * from table2;
use a;
update table2 set name='abc' where age=20;

