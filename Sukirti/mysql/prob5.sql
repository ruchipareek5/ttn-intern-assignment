 /* problem statement no 5*/

create database if not exists Uber ;

create user 'chief'@'localhost' identified by 'chief';

grant select,grant option on Environment.* to 'chief'@'localhost';


create table if not exists user_table (user_registered_mobile_no int(10)
 
primary key not null,user_name varchar(12), city varchar(50),

 type_of_user enum('frequent','non-frequent'),
 commute_to enum('workplace','home','other')
 );



insert into user_table values(1234563789,'sukirti','delhi','frequent','workplace');

insert into user_table values(1231263789,'bd','mumbai','non-frequent','workplace');

insert into user_table values(1234323789,'dnwlnd','delhi','frequent','other');

insert into user_table values(1234536789,'hdjh','chandigarh','non-frequent','workplace');

insert into user_table values(1373289010,'rtbc','noida','frequent','home');

insert into user_table values(1233456789,'hdjcdch','chandigarh','non-frequent','home');



/* sql queries */

select user_registered_mobile_no,user_name,city from user_table where type_of_user='frequent' or  
commute_to='workplace';

select count(user_registered_mobile_no) as total_no from user_table
 where type_of_user='frequent' or 
 commute_to='workplace' 
 and not (type_of_user='frequent' and  commute_to='workplace');