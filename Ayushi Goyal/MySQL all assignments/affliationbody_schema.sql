create database if not exists ttn;
use ttn;

create database if not exists affliationbody;
use affliationbody;

create table batch(
	batch_id Integer auto_increment primary key not null,
    batch_name varchar(20) not null,
    number_of_canditates integer not null,
    start_date date not null,
    end_date date not null
);

insert into batch values (1,'fast track',20,'2017-02-09','2017-05-10');
insert into batch values (2,'slow track',40,'2017-06-09','2017-12-10');
insert into batch values (3,'normal track',60,'2017-10-09','2017-12-10');
insert into batch values (4,'early track',80,'2018-02-09','2018-05-10');
insert into batch values (5,'late track',90,'2018-02-09','2018-10-10');
insert into batch values (6,'bird track',100,'2019-02-09','2019-05-10');
insert into batch values (7,'tiger track',1200,'2019-02-09','2019-10-10');

create table canditate(
	canditate_id Integer auto_increment primary key not null,
    batch_id Integer,
    foreign key(batch_id) references batch(batch_id),
    canditate_name varchar(20) not null,
    age Integer not null
);

insert into canditate values(1,1,'george',20);
insert into canditate values(2,1,'jia',20);
insert into canditate values(3,1,'lime',21);
insert into canditate values(4,1,'gori',20);

insert into canditate values(5,2,'mike',20);
insert into canditate values(6,2,'kia',20);
insert into canditate values(7,2,'zoya',21);
insert into canditate values(8,2,'kiara',20);

insert into canditate values(9,3,'mona',20);
insert into canditate values(10,3,'rachel',20);
insert into canditate values(11,3,'ross',21);
insert into canditate values(12,3,'joey',20);

insert into canditate values(13,4,'jack',20);
insert into canditate values(14,4,'ria',20);
insert into canditate values(15,4,'robert',21);
insert into canditate values(16,4,'jasmine',20);

insert into canditate values(17,5,'harry',20);
insert into canditate values(18,5,'ina',20);
insert into canditate values(19,5,'emma',21);
insert into canditate values(20,5,'taylor',20);

insert into canditate values(21,6,'orio',20);
insert into canditate values(22,6,'benny',20);
insert into canditate values(23,6,'den',21);
insert into canditate values(24,6,'ben',20);

insert into canditate values(25,7,'mira',20);
insert into canditate values(26,7,'misha',20);
insert into canditate values(27,7,'sam',21);
insert into canditate values(28,7,'rocky',20);

create table role(
	role_id Integer primary key auto_increment,
    role_name varchar(20) unique not null
);

insert into role values(100,'trainer');
insert into role values(101,'assessor');

create table users(
	user_id Integer unique not null auto_increment,
    user_name varchar(20) primary key ,    
    role_id integer,
    foreign key(role_id) references role(role_id)
);

alter table users add column state varchar(20);
alter table users add column district varchar(20);
alter table users add column city varchar(20);
alter table users add column turnover decimal;
alter table users add column password varchar(20);


insert into users values(1,'mack',100,'delhi','north','delhi',20.3,'mack123');
insert into users values(2,'jack',101,'andhra pradesh','west','hyderabad',21.3,'jack123');
insert into users values(3,'frank',100,'arunachal pradesh','west','itanagar',2.3,'frank123');
insert into users values(4,'joseph',101,'assam','west','dispur',25.3,'joey123');
insert into users values(5,'nia',100,'goa','west','panaji',3.3,'nia123');
insert into users values(6,'niara',101,'haryana','west','chandigarh',6.3,'niara123');

create table application_info(
	application_id Integer primary key auto_increment,
    user_name varchar(20),
    application_date date not null,
    application_status varchar(20) CHECK (application_status IN ('approved','rejected')),
    foreign key(user_name) references users(user_name)
);

insert into application_info values(1,'mack','2017-02-15','approved');
insert into application_info values(2,'jack','2018-02-15','rejected');
insert into application_info values(3,'nia','2019-02-15','approved');
insert into application_info values(4,'frank','2020-02-15','rejected');

create table application_comment(
	id Integer primary key auto_increment,
    application_id Integer,    
    comments longtext,    
    is_active boolean,
    foreign key(application_id) references application_info(application_id)
);

insert into application_comment values(1,1,'modified',0);
insert into application_comment values(2,3,'not modified',1);
insert into application_comment values(3,2,'modified',0);
insert into application_comment values(4,4,'not modified',1);

create table application_info_replica like application_info;
create table batch_replica like batch;
create table role_replica like role;

create table users_replica like users;
INSERT INTO users_replica (`user_name`) SELECT user_name FROM users;

create table training_partner(
	tid Integer primary key auto_increment,
    tp_name varchar(20),
    bid Integer,
    foreign key(tp_name) references users(user_name),
    foreign key(bid) references batch(batch_id)
);

insert into training_partner values(1,'mack',1);
insert into training_partner values(2,'jack',2);
insert into training_partner values(3,'frank',3);

create table assessment_body(
	aid Integer primary key auto_increment,
    ab_name varchar(20),
	bid Integer,
    foreign key(ab_name) references users(user_name),
    foreign key(bid) references batch(batch_id)
);

insert into assessment_body values(1,'nia',4);
insert into assessment_body values(2,'niara',5);
insert into assessment_body values(3,'joseph',6);

insert into batch_replica select * from batch;

insert into application_info_replica select * from application_info where YEAR(application_date)=2017;

select * from application_info_replica;
select * from users WHERE user_name LIKE '%k';
select * from users WHERE user_name LIKE '___';
select * from users WHERE user_name LIKE '___%';
select * from users WHERE user_name LIKE '_a%';
select * from users WHERE user_name LIKE '_A%';

select training_partner.bid from training_partner INNER JOIN batch ON training_partner.bid = batch.batch_id where batch.end_date < curdate();
select training_partner.bid from training_partner INNER JOIN batch ON training_partner.bid = batch.batch_id where batch.end_date > curdate();
select assessment_body.bid from assessment_body;
select assessment_body.bid from assessment_body INNER JOIN batch ON assessment_body.bid = batch.batch_id where batch.start_date > curdate();
select application_status from application_info where application_status="approved";
select comments from application_comment where is_active='true';

UPDATE `affliationbody`.`users` SET `role_id`='100' WHERE `user_name`='niara';

alter table training_partner add column join_date date;
alter table assessment_body add column join_date date;

select tp_name from training_partner where join_date IN ('2018-02-15','2018-02-30');
select tp_name from training_partner where join_date BETWEEN '2018-02-15' AND '2018-02-30';

select tp_name from training_partner where join_date  BETWEEN '2018-02-01' AND '2018-02-31' AND join_date NOT IN('2018-02-30','2018-02-15') ; 

select tp_name from training_partner  where join_date BETWEEN '2018-02-15' AND '2018-02-30' GROUP BY(tp_name) having count(bid)>3;

select MIN(X.cnt) FROM (select COUNT(bid)  AS cnt from assessment_body GROUP BY(ab_name))X;

select  AVG(turnover) from users where role_id = 100;

select role_id, count(role_id) from users group by(role_id);

select ap.application_id, apc.comments from application_comment as apc, application_info as ap where ap.application_id = apc.application_id and apc.is_active=1;

select application_info.application_id, application_comment.comments from application_info LEFT JOIN application_comment ON application_info.application_id = application_comment.application_id;

select training_partner.tp_name, batch.batch_name from batch RIGHT JOIN training_partner ON batch.batch_id = training_partner.bid;

select sum(turnover) from users;
select sum(number_of_canditates) from batch;

select tp_name, bid from training_partner UNION select ab_name,bid from assessment_body;
select bid from training_partner UNION select bid from assessment_body;

SELECT assessment_body.bid
FROM assessment_body
WHERE assessment_body.bid IN (SELECT batch.batch_id FROM batch);

SELECT users.user_name from users where users.user_name IN (SELECT application_info.user_name from application_info);

SELECT batch.batch_id
FROM batch
WHERE batch.batch_id NOT IN (SELECT assessment_body.bid FROM assessment_body);

SELECT users.user_name from users where users.user_name  NOT IN (SELECT application_info.user_name from application_info);

SELECT application_date FROM application_info WHERE application_date < ALL (SELECT join_date FROM training_partner);
SELECT application_date FROM application_info WHERE application_date < ALL (SELECT start_date FROM batch);

SELECT * FROM training_partner WHERE EXISTS (SELECT * FROM batch WHERE batch.batch_id = training_partner.bid);

SELECT * FROM users WHERE EXISTS (SELECT * FROM application_info WHERE users.user_name = application_info.user_name);
