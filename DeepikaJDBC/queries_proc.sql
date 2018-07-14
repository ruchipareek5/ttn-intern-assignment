# Defining db schema
create database ttn_java_sql;
use ttn_java_sql;
show tables;
create table user(username varchar(20), age int, gender varchar(10));

# Stored procedure
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `add_user`(IN name varchar(20), IN age int, IN gender varchar(10))
BEGIN
insert into user values(name, age, gender);
END


# Calling stored procedure
call add_user("Harry", 15, "male");
call add_user("Ron", 16, "male");
call add_user("Hermione", 15, "female");

# Reading values
select * from user;

#'Harry','15','male'
#'Hermione','15','female'
#'Ron','16','male'

# After executing CallableStatement
select * from user;

#'Harry','15','male'
#'Hermione','15','female'
#'Ron','16','male'
#'Ginny','14','female'
