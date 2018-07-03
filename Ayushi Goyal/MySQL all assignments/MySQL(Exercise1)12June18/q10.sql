create database ttn;
use ttn;

CREATE TABLE pnb_employees (
    employee_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(20),
    employee_phone_number BIGINT,
    employee_address LONGTEXT,
    joining_date DATE,
    leaving_date DATE,
    salary DOUBLE
);

insert into pnb_employees values(100,'emp-1',6589452136,'address1','2012-01-23',null,95860.4);
insert into pnb_employees values(101,'emp-2',6589452137,'address2','2013-01-23',null,93860.4);
insert into pnb_employees values(102,'emp-3',6589452138,'address3','2014-01-23',null,85860.4);
insert into pnb_employees values(103,'emp-4',6589452139,'address4','2015-01-23',null,35860.4);
insert into pnb_employees values(104,'emp-5',6589452140,'address5','2016-01-23',null,45860.4);
insert into pnb_employees values(105,'emp-6',6589452141,'address6','2011-01-23',null,55860.4);
insert into pnb_employees values(106,'emp-7',6589452142,'address7','2010-01-23',null,75860.4);
insert into pnb_employees values(107,'emp-8',6589452143,'address8','2009-01-23',null,45860.4);
insert into pnb_employees values(108,'emp-9',6589452144,'address9','2017-01-23',null,15860.4);
insert into pnb_employees values(109,'emp-10',6589452145,'address10','2018-01-23',null,105860.4);

SELECT 
    *
FROM
    pnb_employees;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(20),
    aadhar_card_num BIGINT,
    customer_phone_number BIGINT,
    address LONGTEXT
);

insert into customers values(200,'nirav modi',752365214754,5687452147,'address1');
insert into customers values(201,'mukesh ambani',652365214754,5787452147,'address2');
insert into customers values(202,'ben',852365214754,5887452147,'address3');
insert into customers values(203,'zack',952365214754,5987452147,'address4');
insert into customers values(204,'nia',452365214754,6087452147,'address5');
insert into customers values(205,'kiara',122365214754,6187452147,'address6');
insert into customers values(206,'joey',742365214754,6287452147,'address7');
insert into customers values(207,'lorel',352365214754,6387452147,'address8');
insert into customers values(208,'mack',452365214754,6487452147,'address9');
insert into customers values(209,'jack',352365214154,6587452147,'address10');
insert into customers values(210,'emma',652365214154,6687452147,'address11');

SELECT 
    *
FROM
    customers;

CREATE TABLE transaction (
    transaction_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_id INTEGER,
    transaction_date DATE,
    transaction_amount DOUBLE,
    approved_by_employee INTEGER,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (approved_by_employee)
        REFERENCES pnb_employees (employee_id)
);

insert into transaction values(300,201,'2019-01-02',9456.4,101); 
insert into transaction values(301,200,'2019-02-02',8456.4,102); 
insert into transaction values(302,202,'2019-03-02',7456.4,103); 
insert into transaction values(303,200,'2019-04-02',6456.4,104); 
insert into transaction values(304,203,'2019-05-02',5456.4,105); 
insert into transaction values(305,204,'2019-06-02',4456.4,102); 
insert into transaction values(306,205,'2019-07-02',3456.4,106); 
insert into transaction values(307,206,'2019-08-02',2456.4,107); 
insert into transaction values(308,200,'2019-09-02',1456.4,108); 
insert into transaction values(309,207,'2019-10-02',10456.4,109);
insert into transaction values(310,205,'2020-07-02',30456.4,104); 
insert into transaction values(311,208,'2020-08-02',24056.4,108); 
insert into transaction values(312,209,'2020-09-02',14506.4,104); 
insert into transaction values(313,210,'2020-10-02',104506.4,108);

SELECT 
    *
FROM
    transaction;

SELECT 
    customers.customer_name,
    customers.aadhar_card_num,
    customers.customer_phone_number,
    customers.address,
    transaction.customer_id,
    transaction.transaction_date,
    transaction.transaction_amount,
    pnb_employees.employee_id,
    pnb_employees.employee_name,
    pnb_employees.employee_phone_number,
    pnb_employees.joining_date,
    pnb_employees.employee_address,
    pnb_employees.salary
FROM
    transaction
        JOIN
    customers ON transaction.customer_id = customers.customer_id
        JOIN
    pnb_employees ON pnb_employees.employee_id = transaction.approved_by_employee
WHERE
    customers.customer_name = 'nirav modi'
        OR transaction.approved_by_employee IN (SELECT 
            transaction.approved_by_employee
        FROM
            transaction
                JOIN
            customers ON transaction.customer_id = customers.customer_id
        WHERE
            customers.customer_name = 'nirav modi');
    
