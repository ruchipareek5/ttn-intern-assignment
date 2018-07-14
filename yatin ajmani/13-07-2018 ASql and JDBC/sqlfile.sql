create database ttn_13;

use ttn_13;

create table users(
	id int primary key AUTO_INCREMENT,
    username varchar(50) not null unique,
    age int(3),
    gender varchar(20)
);

delimiter //
create procedure bla(in x varchar(50),in y int(3),in z varchar(20)) 
begin
	insert into users(username,age,gender) values(x,y,z);
end //
delimiter ;