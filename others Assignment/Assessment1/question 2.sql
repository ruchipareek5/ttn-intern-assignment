create schema police;

create table if not exists offenders(
	offenderID int,
    offenderName varchar(20),
    age int,
    fine bigint
    );
    
select *from offenders;

Insert into offenders values(1,'A',20,500);
Insert into offenders values(2,'B',17,1000);
Insert into offenders values(3,'C',24,200);
Insert into offenders values(4,'D',50,500);

select *from offenders where age>18 and age<25 and fine>100;
