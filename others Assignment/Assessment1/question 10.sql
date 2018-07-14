create schema PunjabNationalBank;

use PunjabNationalBank;

create table if not exists user(
	userID int primary key,
    userName varchar(20)
    );
    
create table if not exists transaction(
	transactionID int primary key,
    userID int,
    foreign key (userID) references user(userID)
    );
    
create table if not exists emp(
	empID int primary key,
    empName varchar(20),
    transactionID int,
    foreign key (transactionID) references transaction(transactionID)
    );
    
select *from user;
select *from transaction;
select *from emp;

alter table transaction add column empID int;
alter table transaction add constraint empID foreign key(empID) references emp(empID);

select t1.