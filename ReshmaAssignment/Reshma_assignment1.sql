create schema if not exists ttn_affiliation_body;

create user ttn_db_user @localhost identified by "dbuser";
create user ttn_app_user @localhost identified by "appuser";

create table if not exists roles(
roleId int,
roleName varchar(50)
);

create table if not exists user (
uId int primary key,
uName varchar(100) unique not null,
uPwd varchar(12) not null,
uType varchar(20),
uphn bigint,
uaddrs varchar(100),
uStatus boolean,
dateOfApply date,
approvalStatus varchar(10),
uroleId int references roles(roleId)
);

create table if not exists batches(
batchId int primary key,
batchSize int,
batchStartDate date,
batchEndDate date,
associatedTrainingPartnerId int, foreign key(associatedTrainingPartnerId) references user(uId)
);

create table if not exists assesesBatches(
batchId int, foreign key(batchId) references batches(batchId),
assessmentPartnerId int, foreign key(assessmentPartnerId) references user(uId)
);
insert into assesesBatches values(123,2);
insert into assesesBatches values(123,3);
insert into assesesBatches values(124,2);
insert into assesesBatches values(125,5);
insert into assesesBatches values(126,5);
insert into assesesBatches values(128,5);
select * from assesesBatches;
select * from batches;
select * from userprofileassesesBatches;

grant grant option, create, select, update, insert on ttn_affiliation_body.* to ttn_db_user @localhost;
grant insert,update,delete on ttn_affiliation_body.* to ttn_app_user @localhost;

alter table batches add id int;
desc batches;
alter table batches drop id;
alter table batches add topper int;
alter table batches modify topper varchar(10);
desc batches;
desc batches;

select * from batches;
insert into batches values(123,30,'2018-04-04','2019-06-06',1,'pooja');
insert into batches values(124,30,'2016-04-14','2017-06-26',1,'mahi');
insert into batches values(125,30,'2016-04-04','2016-06-06',1,'pooja');
insert into batches values(126,30,'2018-12-04','2019-02-02',1,'anu');
insert into batches values(127,32,'2018-12-04','2019-02-02',10,'anushka');
insert into batches values(128,32,'2018-12-04','2019-02-02',10,'anushka');
insert into batches values(130,32,'2016-12-04','2019-02-02',3,'rahul');


create table profile(
uid int references user(uId)
);

create table application_comments(
id int references user(uId),
comments varchar(100),
appStatus varchar(30)
);

insert into application_comments values(1,'hkudjbsdckj','active');
insert into application_comments values(1,'hkudjbsdckj','not active');
insert into application_comments values(2,'hkudjbsdckj','active');
insert into application_comments values(3,'hkudjbsdckj','active');
select * from application_comments;

alter table profile add tan_number varchar(15);
alter table profile add state varchar(20);
alter table profile add district varchar(20);
alter table profile add city varchar(100);
alter table profile add turnOver bigInt;

insert into roles values(1,'AP');
insert into roles values(2,'TP');

desc user;

insert into user values(
1,
'Reshma',
'123',
'individual',
9871333187,
'delhi',
0,
'2018-04-04',
'notapp',
2
);

insert into user values(
2,
'Reshmi',
'123',
'organization',
9871223187,
'kerala',
0,
'2018-04-04',
'approved',
2
);

insert into user values(
3,
'balaji',
'123',
'organization',
9871223187,
'kerala',
0,
'2018-04-04',
'approved',
1
);

insert into user values(
10,
'Sreekala2',
'123',
'individual',
9871225187,
'kerala',
1,
'2018-05-10',
'approved',
2
);

select * from user;
select * from user where uroleId=2;
select uname from user where approvalStatus='approved';

create table User_copy like user;
create table batch_copy like batches;
create table role_duplicate like roles;


alter table profile add year int;
desc profile;
create table profile_copy like profile;
insert into profile values(1,'dvdf231','delhi','ghaziabad','brij vihar',76563983,2017);
insert into profile values(2,'sdjhdjs','kerala','kollam','kalanjoor',76563983,2017);
insert into profile values(3,'11ygdsh','delhi','meerut','brij vihar',76563983,2018);
insert into profile values(4,'dvdf231','mumbai','panioat','brij vihar',63983,2017);
insert into profile values(5,'dvdf231','mumbai','panioat','brij vihar',863983,2017);


insert into profile_copy select * from profile where year=2017;
select * from profile_copy;
select * from profile;

insert into user values(
6,
'Sreem',
'123',
'individual',
9871223187,
'kerala',
0,
'2018-04-04',
'approved',
1
);
select uname from user where uname like '%m';
select uname from user where uname like '___';
select uname from user where uname like '_r%';

select * from roles;
select * from user;