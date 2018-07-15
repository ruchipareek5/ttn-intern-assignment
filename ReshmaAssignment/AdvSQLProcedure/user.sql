create schema if not exists tp_jdbc_assignment;
use tp_jdbc_assignment;
create table if not exists users (uid int primary key, username varchar(45),age int,gender varchar(10));

call insert_values(1,'resh94mohan@gmail.com',21,'female');
call insert_values(2,'mohan@gmail.com',40,'male');


create table if not exists audit_user(old_email varchar(100),new_email varchar(100));

update users set username='balaji@gmail.com' where uid=2;
