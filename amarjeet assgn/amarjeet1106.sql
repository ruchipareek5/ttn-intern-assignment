use amarjeet;
select * from batch;
select * from trainee;
select * from user;

select * from application;

desc user;
/* UNION */
/*displaying details of all those who have start batches in 2018 and who have in 2019*/
select batch_name,year(start_date) from batch where year(start_date) IN ('2018', '2019');
/*select all users name whose name start from 'd' and those whom start from 'r' */
select userName from user where userName like 'd%' union select userName from user where userName like'r%';

/* INTERSECTION -MySQL doesn't support it*/
/*  common username from trainee as well as user relation*/
select userName from user where userName in (select userName from trainee where user.userName=trainee.userName);
/* intersection with multiple expression using exists*/
select firstName,lastName,PersonID from Person where PersonId exists (select firstName,lastName,StudentID from student where Person.firstName=student.firstName and Person.LastName=student.lastName and Person.PersonId=student.studentID);


/* Except -MySQL doesn't support it*/
select * from user where role_id not in (select role_id from user where role_id=2);
select batch_name from batch where UserName not in(select userName from user);

/* some */
select batch_Name from batch where batch_name < ANY (select batch_name from batch where userName like 'z%');

/* all */
select batch_Name from batch where batch_name < All (select batch_name from batch where userName like 'z%');
