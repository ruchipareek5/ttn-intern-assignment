create jdbc_sql;

use jdbc_sql;

create table users(
	id int primary key AUTO_INCREMENT,
    username varchar(50) not null unique,
    age int(3),
    gender ENUM('Male','Female','Others')
	email varchar(30) unique
);

create table audit(
	old_email varchar(30),
	new_email varchar(30)
	);

delimiter //
create procedure enter(in x varchar(50),in y int(3),in z varchar(20)) 
begin
	insert into users(username,age,gender) values(x,y,z);
end //

create trigger trigger_after_update after UPDATE on users
FOR EACH ROW
BEGIN
	INSERT INTO audit
	set action='update',
	old_email=old.email,
	new_email=new.email;
END //

delimiter ;