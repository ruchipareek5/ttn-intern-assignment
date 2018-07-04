/*Problem Statement 9*/

create table if not exists assignment1(A_id int(4) primary key,Start_date date,End_date Date);
create table if not exists employee2(E_id int(4) Primary Key,E_Name varchar(20) not null, HI_B_Stamped boolean,Assignment_id int(4), foreign key(Assignment_id) references assignment1(A_id));

insert into assignment1 values(101,'2018-01-01','2018-04-01');
insert into assignment1 values(102,'2018-01-01','2018-06-01');
insert into assignment1 values(103,'2018-01-01','2018-07-01');

insert into employee2 values(201,'Hari',1,101);
insert into employee2 values(202,'Rohit',0,103);
insert into employee2 values(203,'Gaurav',1,101);

select e.* from employee2 e,assignment1 a where a.A_id=e.Assignment_id AND e.HI_B_Stamped=true AND a.End_Date<curdate();
