/* 
https://docs.google.com/spreadsheets/d/1iM-Wi32Ee1l6NWEr2EdPybxoj_bqYhhe5YKTH8oSPno/edit?usp=sharing
*/

create database ttn_exercise;
use ttn_exercise;

/* PS 10 */

create table pnb_user(
	userID integer primary key,
    userName varchar(100)
);

create table pnb_employee(
	empID integer primary key,
    empName varchar(100),
    dateOfJoining date
);

create table pnb_txn(
    txnID integer primary key,
    doneByUserID integer,
    dateOfTxn date,
    txnAmount bigint,
    approvedByEmpID integer,
    foreign key (doneByUserID) references pnb_user(userID),
    foreign key (approvedByEmpID) references pnb_employee(empID)
);

show tables;

select * from pnb_user;

insert into pnb_user values(1, 'Deepika');
insert into pnb_user values(2, 'Deepshikha');
insert into pnb_user values(3, 'Niharika');
insert into pnb_user values(420, 'Nirav Modi');

select * from pnb_employee;

insert into pnb_employee values(100, 'Sunil Mehta', '2017-05-06');
insert into pnb_employee values(101, 'Sanjiv Sharan', '2016-01-01');
insert into pnb_employee values(102, 'Mahesh Gupta', '2017-03-01');
insert into pnb_employee values(103, 'Sudhir Nayar', '2015-01-31');
insert into pnb_employee values(104, 'Sanjav Verma', '2016-04-31');

select * from pnb_txn;

insert into pnb_txn values(1000, 1, '2017-01-01', 100, 104);
insert into pnb_txn values(1001, 2, '2016-01-01', 200, 103);
insert into pnb_txn values(1002, 3, '2018-06-12', 300, 102);
insert into pnb_txn values(1003, 420, '2017-12-01', 10000, 100);
insert into pnb_txn values(1004, 420, '2017-11-30', 20000, 101);
insert into pnb_txn values(1005, 420, '2017-11-25', 30000, 100);

select * from pnb_user u, pnb_txn t where t.doneByUserID = u.userID and u.userName = 'Nirav Modi';

select t.approvedByEmpID from pnb_txn t where t.doneByUserID in (select userID from pnb_user where userName = 'Nirav Modi');

select * from pnb_txn where approvedByEmpID in (select t.approvedByEmpID from pnb_txn t where t.doneByUserID = 420);

/* PS 8 */

create table train(
	trainNumber varchar(4) primary key,
    runsOnLine varchar(10),
    coaches integer
);

create table train_operation(
	trainNumber varchar(4),
    dateOfJourney date,
    timeOfJourney time,
    totalDelay integer,
    numberOfPassengers integer,
    foreign key(trainNumber) references train(trainNumber)
);

select * from train;

select * from train_operation;
insert into train_operation values('192C', '2018-06-12', '08:22:22', 3, 150);
insert into train_operation values('214D', '2018-06-11', '18:24:22', 6, 250);
insert into train_operation values('314P', '2018-06-11', '08:30:22', 5, 170);
insert into train_operation values('192C', '2018-06-12', '08:34:22', 4, 250);
insert into train_operation values('214D', '2018-06-12', '08:40:22', 6, 300);
insert into train_operation values('314P', '2018-06-11', '17:30:22', 5, 270);
insert into train_operation values('123A', '2018-06-11', '17:30:22', 2, 130);
insert into train_operation values('687C', '2018-06-11', '08:30:22', 5, 270);
insert into train_operation values('456B', '2018-06-11', '09:30:22', 5, 75);
insert into train_operation values('687C', '2018-06-11', '08:01:22', 2, 130);

select avg(totalDelay) as AverageDelay, avg(numberOfPassengers) as AveragePassengers, t.coaches from train_operation o, train t where timeOfJourney between '08:00:00' and '10:00:00' or timeOfJourney between '17:00:00' and '18:00:00' group by coaches; 

select avg(o.numberOfPassengers) as AveragePassengers, t.coaches from train_operation o, train t group by t.coaches;

/* PS 6 */

create table dtu_batch (
	batchID integer primary key,
	course varchar(7),
    batchYear year,
    strength integer
);

create table dtu_student (
	studentID integer primary key,
    batchID integer,
    isEligible boolean,
    isPlaced boolean,
    drivesAttended integer,
    foreign key (batchID) references dtu_batch(batchID)
);

select * from dtu_batch;
insert into dtu_batch values (100, 'MCA', 2017, 10);
insert into dtu_batch values (101, 'MCA', 2016, 8);
insert into dtu_batch values (102, 'MCA', 2015, 10);
insert into dtu_batch values (103, 'BTech', 2015, 20);
insert into dtu_batch values (104, 'MCA', 2014, 15);
insert into dtu_batch values (105, 'MCA', 2013, 14);

select * from dtu_student;
insert into dtu_student values (2, 102, 1, 1, 2);
insert into dtu_student values (14, 100, 1, 1, 6);
insert into dtu_student values (16, 101, 1, 0, 4);
insert into dtu_student values (19, 100, 1, 1, 5);
insert into dtu_student values (410, 105, 1, 1, 3);
insert into dtu_student values (1552, 103, 0, 0, 0);
insert into dtu_student values (2540, 103, 1, 0, 0);

select s.studentID as EligibleAttendedPlaced, b.batchYear from dtu_student s, dtu_batch b where isEligible = 1 and drivesAttended > 0 and isPlaced = 1 and b.batchID = s.batchID and b.batchYear >= year(curdate()) - 5;

select s.studentID as EligibleAttendedNotPlaced, b.batchYear from dtu_student s, dtu_batch b where isEligible = 1 and drivesAttended > 0 and isPlaced = 0 and b.batchID = s.batchID and b.batchYear >= year(curdate()) - 5;

select s.studentID as EligibleNotAttended, b.batchYear from dtu_student s, dtu_batch b where isEligible = 1 and drivesAttended < 1 and b.batchID = s.batchID and b.batchYear >= year(curdate()) - 5;

select s.studentID as NotEligible, b.batchYear from dtu_student s, dtu_batch b where isEligible = 0 and b.batchID = s.batchID and b.batchYear >= year(curdate()) - 5;

/* PS 9 */

create table ttn_project (
	projectID integer primary key,
    location varchar(20),
    startDate date,
    endDate date
);

create table ttn_employee (
	employeeID integer primary key,
    employeeName varchar(20),
    hasH1B boolean,
    currentProjectID integer,
    foreign key (currentProjectID) references ttn_project(projectID)
);

select * from ttn_project;

select * from ttn_employee;

select e.employeeID, e.employeeName, p.* from ttn_employee e, ttn_project p where hasH1B = 1 and e.currentProjectID = p.projectID and p.EndDate < '2018-06-30';

/* PS 7 */

create table ttn_project_2 (
	projectID integer primary key,
    startDate date,
    endDate date,
    originalMembers integer,
    currentMembers integer
);

create table ttn_employee_2 (
	employeeID integer primary key,
    employeeName varchar(25),
    currentProjectID integer,
    foreign key (currentProjectID) references ttn_project_2(projectID)
);

create table ttn_employee_in_project (
	projectID integer,
    employeeID integer,
    employeePerformance integer,
    primary key (projectID, employeeID),
    foreign key (projectID) references ttn_project_2(projectID),
    foreign key (employeeID) references ttn_employee_2(employeeID),
    check(employeePerformance >= 0 && employeePerformance <= 10)
);

select * from ttn_project_2;

select * from ttn_employee_2;

select * from ttn_employee_in_project;

select * from ttn_employee_2 where currentProjectID is null;

select * from ttn_project_2 where currentMembers < originalMembers and currentMembers is not null;

select employeeID, avg(employeePerformance) from ttn_employee_in_project group by employeeID;

/* PS 3 */

create table usict_semester(
	semNumber integer,
	semYear year,
    startDate date,
    endDate date,
    primary key (semNumber, semYear)
);

create table usict_student (
    studentID integer primary key,
    course varchar(10),
    currentsemNumber integer,
    foreign key(currentsemNumber) references usict_semester(semNumber)
);

create table usict_semester_student (
	semNumber integer,
    studentID integer,
    attendance integer,
    foreign key (semNumber) references usict_semester(semNumber),
    foreign key (studentID) references usict_student(studentID)
);

select * from usict_semester;

select * from usict_student;

select * from usict_semester_student;

insert into usict_semester_student values(1, 14, 79);
insert into usict_semester_student values(2, 14, 82);
insert into usict_semester_student values(3, 14, 79);
insert into usict_semester_student values(1, 19, 76);
insert into usict_semester_student values(2, 19, 82);
insert into usict_semester_student values(3, 19, 81);
insert into usict_semester_student values(1, 02, 77);
insert into usict_semester_student values(2, 02, 81);
insert into usict_semester_student values(3, 02, 82);

update usict_student set currentSemNumber = 4 where studentID = 16;

insert into usict_semester_student values(1, 16, 60);
insert into usict_semester_student values(2, 16, 62);
insert into usict_semester_student values(3, 16, 62);

alter table usict_student add column studentName varchar(25);

select s.*, avg(attendance) from usict_student s, usict_semester_student sem where s.studentID = sem.studentID group by s.studentID;

/* PS 2 */

create table person(
	aadharNumber bigint primary key,
    name varchar(50),
    dateOfBirth date
);

create table offense(
	offenseID integer primary key,
    offenseDescription varchar(50),
    fine integer
);

create table person_offense (
	offenderID bigint,
    offenseID integer,
    foreign key (offenderID) references person(aadharNumber),
    foreign key (offenseID) references offense(offenseID)
);

select * from person;
select * from offense;
select * from person_offense;

insert into person_offense values (420, 500);
insert into person_offense values (430, 501);
insert into person_offense values (440, 502);

select p.* from person p, person_offense po, offense o where year(curdate()) - year(p.dateOfBirth) between 18 and 25
and p.aadharNumber = po.offenderID
and o.offenseID = po.offenseID
and o.fine > 100;

