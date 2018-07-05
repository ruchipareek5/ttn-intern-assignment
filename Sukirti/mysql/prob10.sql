
 /* problem statement no 10*/

create database if not exists PNB  ;

create user 'auditor'@'localhost' identified by 'auditor';

grant select on PNB.* to 'auditor'@'localhost';

use PNB;
create table if not exists user_accounts(account_no int(10)
 primary key not null,
accountholder_name varchar(12),address varchar(10), contact bigint(10),

 account_balance bigint(10),account_open_date date );
 
 
create table if not exists transaction_details(transaction_id bigint (10),
from_account int (10), 
foreign key(from_account) references user_accounts(account_no),
to_account bigint (10),
amount bigint(10), reviewer_id int(10), 
granter_id int(10) Default null ,
date_of_transaction date, transaction_status enum('pending','approved','granted'));
 
create table if not exists employees(emp_id int (10),emp_name varchar(20), date_of_joining date );

insert into user_accounts values(1234,'Nirav modi','arfbc',1234567890,500000000,'2016-08-09');
insert into user_accounts values(12,'Ni','abfefc',1234327890,500000,'2017-08-09');
insert into user_accounts values(124,'av modi','abcc',4334567890,50000,'2018-03-09');

insert into employees values(1,'acbb','2012-01-09');
insert into employees values(2,'ccd','2013-01-09');
insert into employees values(3,'acbcdb','2014-01-09');
insert into employees values(4,'bcdb','2015-01-09');

insert into transaction_details values(1,1234,234567,50000000,1,2,'2018-06-08','approved');
insert into transaction_details values(2,12,234567,50000,2,3,'2018-02-08','approved');
insert into transaction_details values(3,124,23459,50000,4,3,'2018-03-08','pending');




select transaction_details.transaction_id,transaction_details.to_account,transaction_details.amount,transaction_details.reviewer_id,transaction_details.granter_id,
transaction_details.transaction_status,transaction_details.date_of_transaction from transaction_details,
 user_accounts where user_accounts.accountholder_name='Nirav modi' and transaction_details.to_account=user_accounts.account_no;
 
select transaction_id,from_account,to_account,amount, transaction_status,date_of_transaction 
from transaction_details where
 (reviewer_id = (select reviewer_id from transaction_details as t,
 user_accounts  where accountholder_name='Nirav modi') or (granter_id = (select granter_id from transaction_details ,
 user_accounts  where accountholder_name='Nirav modi'))) ;