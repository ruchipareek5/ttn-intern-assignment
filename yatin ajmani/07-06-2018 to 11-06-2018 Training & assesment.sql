-- Assignment 07/06/2018 & 08/06/2018 & 11/06/2018

CREATE database `ttn_affiliation_body` ;
use ttn_affiliation_body;

create user ttn_app_user@localhost identified by '';
grant select,insert,update,delete on ttn_affiliation_body.* to ttn_app_user@localhost;

create user ttn_db_user@localhost identified by '';
grant grant option,create,select,insert,update on ttn_affiliation_body.* to ttn_db_user@localhost;

CREATE TABLE `roles` (
	roleid int primary key auto_increment,
	name varchar(20) not null
    );

CREATE TABLE `status` (
	statusid int primary key auto_increment,
	name varchar(20) not null
    );

CREATE TABLE `usertypes` (
	utypeid int primary key auto_increment,
	name varchar(20) not null
    );
    
CREATE TABLE `batches` (
	batchid int primary key auto_increment,
	name varchar(20) not null,
    starttime date not null,
	endtime date not null,
    `userid` int references users(userid)
	);
    
CREATE TABLE `users` (
  `userid` int primary key auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) unique not NULL,
  `dateOfSubmission` date DEFAULT NULL,
  roleid int references roles(roleid),
  usertypeid int references usertypes(utypeid),
  statusid int references status(statusid)
);

CREATE TABLE `candidates` (
  `candidateid` int primary key auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) unique not NULL,
  batchid int references batches(batchid)
);

alter table users add address varchar(200);
alter table users add turnover bigint;

alter table users drop turnover;

CREATE TABLE users_replica like users;
CREATE TABLE batches_replica like batches;
CREATE TABLE roles_replica like roles;

select * from users where name like '%m';

select * from users where name like '___';

select * from users where name like '_a%';

CREATE TABLE `comments` (
  `commentid` int primary key auto_increment,
  `comment` varchar(45) NOT NULL,
  `isActive` bool not NULL,
  userid int references users(userid)
);

-- Assignment 08/06/2018

select * from roles;

select * from status;

select * from usertypes;

select * from users;

select * from batches;

select * from comments;

select * from batches where endtime<=now() and userid=(select userid from users where name='yatin' and roleid=(select roleid from roles where name='Training Partners'));

select * from batches where endtime>now() and userid=(select userid from users where name='yatin' and roleid=(select roleid from roles where name='Training Partners'));

select * from batches where endtime<=now() and userid=(select userid from users where name='reshma' and roleid=(select roleid from roles where name='Assessment Partners'));

select * from batches where endtime>now() and userid=(select userid from users where name='reshma' and roleid=(select roleid from roles where name='Assessment Partners'));

select * from users where statusid=(select statusid from status where name='Submit');

select comment from comments where isactive=1 and userid=(select userid from users where name='yatin');

update users set name="Yatin" where name="yatin"; -- doesn't works

update users set name="yatin" where userid=1; -- works

select * from users where dateofsubmission in('2018-05-01','2018-05-31');

select * from users where dateofsubmission between '2018-02-01' and '2018-05-31';

select * from users where dateofsubmission not in ('2018-05-15','2018-05-25') and dateofsubmission between '2018-02-01' and '2018-05-31';

select * from users where userid=(select userid from batches where userid=(select userid from users where name='yatin' and roleid=(select roleid from roles where name='Training Partners')) group by userid having count(userid)=3);

select count(batchid) from batches group by userid order by count(batchid) limit 1;

select min(x) from (select count(batchid) as x from batches group by userid)d;

select count(userid) from users where statusid=2 group by roleid;

create table blausers like users;

select u.name,c.name from users u left join batches c on u.userid=c.userid;


-- Assignment 11/06/2018

-- union

select * from users where roleid=2 union distinct select * from users where roleid=1; -- select union of users having different roles

select * from batches where endtime<=now() union select * from batches where endtime>now();-- select union of batches have been ended and yet to end

-- intersect

select distinct userid from comments where userid in (select userid from comments where isactive=0);-- select distinct userid from all comments set having inactive comments

select * from users where usertypeid in (select usertypeid from users where usertypeid=1);-- select users from all users set having usertypeid=1

-- except

select distinct userid,comment from comments where userid not in (select userid from comments where isactive=0);

select * from users where usertypeid not in (select usertypeid from users where usertypeid=1);

-- some

select * from users where userid=some (select userid from comments);

select * from users where userid=some (select userid from batches);

-- all

select * from users where 1>=all(select count(userid) from comments group by userid); -- select all users if every user has atleast a comment

select * from users where 1<all(select count(userid) from batches group by userid);-- select all users if every user has atleast a batch

-- exists

select * from users where exists (select count(userid) from comments group by userid having count(userid)>2); -- select all users if user having more than 5 comment exists

select * from users where exists (select count(userid) from batches group by userid having count(userid)>3);-- select all users if user having more than 5 comment exists