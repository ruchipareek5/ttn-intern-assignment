CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_values`(in id int,in uname varchar(45),in age int,in gender varchar(10))
BEGIN
insert into users(uid,username,age,gender) values(id,uname,age,gender);
END