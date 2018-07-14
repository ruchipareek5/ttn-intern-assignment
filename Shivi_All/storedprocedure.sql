CREATE PROCEDURE `insertvalues` (in username varchar(50),in age int, in gender enum('male','female','other')
BEGIN
insert into student (username,age ,gender) values (in_username ,in_age, in_gender);

END
