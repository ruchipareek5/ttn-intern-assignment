create table if not exists users(
	userId int primary key auto_increment,
    userName varchar(50) unique not null,
    password varchar(10) not null,
    roleId int,
    foreign key (roleId) references role(roleId)
);

create table if not exists application(
	applicationId int primary key auto_increment,
    applicationDate date not null,
    applicationStatus varchar(50) not null
);

create table if not exists profile(
	dob date,
    applicationId int,
    profileId int primary key
);

create table Batch(
	name varchar(10),
    startdate date,
    enddate date,
    trainerId int,
    assessorId int,
    batchId int primary key,
    foreign key (trainerId) references users(userId),
    foreign key (assessorId) references users(userId)
);

create table applicationComment(
	applicationId int,
    comment varchar(200),
    commentId int primary key,
    is_active boolean,
    foreign key(applicationId) references application(applicationId)
);

create table if not exists role(
	roleId int primary key auto_increment,
    role varchar(50) not null unique
);



1)
select name,batchId from batch where enddate<'curdate()'and trainerId=2;
2)
select name,batchId from batch where enddate>'curdate' and trainerId=1;
3)
select applicationId from application where applicationStatus='submitted';
4)
select commentId,applicationId from applicationComment where is_active=1;
5)
select batchId,name from batch where assessorId=3;
6)
select batchId,name from batch where startdate>=curdate();
