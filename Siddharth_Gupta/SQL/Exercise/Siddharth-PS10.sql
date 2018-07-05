/*Problem statement 10*/
create table if not exists user1(User_id int(4) primary key,Name varchar(20) not null);
create table if not exists employee(Employee_id int(4) primary key,Name varchar(20) not null);
create table transaction(Transaction_id int(5) primary Key,Amount int(6),U_id int(4) not null,E_id int(4) not null,foreign key(U_id) references user1(User_id),foreign key(E_id) references employee(Employee_ID));

insert into user1 values(100,'Mukesh Ambani');
insert into user1 values(101,'Nirav Modi');
insert into user1 values(102,'Vijay Mallya');

insert into employee values(201,'Rohit');
insert into employee values(202,'Mehak');
insert into employee values(203,'Gaurav');

insert into transaction values(301,2341,100,201);
insert into transaction values(302,3412,101,201);
insert into transaction values(303,32411,102,202);
insert into transaction values(304,53245,102,203);
insert into transaction values(305,41234,101,202);
insert into transaction values(306,32412,101,201);

/*To display transactions of nirav modi and employees associated with it*/
select t.Transaction_id,e.Employee_id,e.Name,t.amount from transaction t,employee e where e.Employee_id=t.e_id AND u_id=101;

/*Transaction details of all the employees who approved Nirav Modi's transaction*/
select e.Employee_id,t.Transaction_id,t.amount,e.Name from transaction t, employee e where e.Employee_id=t.e_id AND t.e_id in(select t.e_id from transaction t where t.u_id=101);








