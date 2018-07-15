create database gaurav_jdbc_sql;

use gaurav_jdbc_sql;

create table users(
	id int primary key AUTO_INCREMENT,
    username varchar(100) not null unique,
    age int,
    gender ENUM('Male','Female','Others')
	email varchar(100) unique
);

create table audit(
	old_email varchar(100),
	new_email varchar(100)
	);

delimiter //
create procedure enter(in user varchar(100),in agee int,in gen varchar(20)) 
begin
	insert into users(username,age,gender) values(user,agee,gen);
end //

create trigger trigger_update after UPDATE on users
FOR EACH ROW
BEGIN
	INSERT INTO audit
	set action='update',
	old_email=old.email,
	new_email=new.email;
END //

delimiter ;